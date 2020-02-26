/****************************************************************************************************

RepRapFirmware - Network: RepRapPro Ormerod with Duet controller

Separated out from Platform.h by dc42 and extended by zpl

****************************************************************************************************/

#ifndef NETWORK_H
#define NETWORK_H

#include <NetworkDefs.h>
#include "RepRapFirmware.h"
#include "MessageType.h"

#include "Lwip/lwip/src/include/lwip/err.h"		// for err_t

extern ConnectionState *sendingConnection;
extern char * const sendingWindow;
extern uint16_t sendingWindowSize, sentDataOutstanding;
extern uint8_t sendingRetries;
extern err_t writeResult, outputResult;

// This class handles the network - typically an Ethernet.

// The size of the TCP output buffer is critical to getting fast load times in the browser.
// If this value is less than the TCP MSS, then Chrome under Windows will delay ack messages by about 120ms,
// which results in very slow page loading. Any value higher than that will cause the TCP packet to be split
// into multiple transmissions, which avoids this behaviour. Using a value of twice the MSS is most efficient because
// each TCP packet will be full.
// Currently we set the MSS (in file network/lwipopts.h) to 1432 which matches the value used by most versions of Windows
// and therefore avoids additional memory use and fragmentation.

const size_t NETWORK_TRANSACTION_COUNT = 24;							// Number of NetworkTransactions to be used for network IO

const uint32_t TCP_WRITE_TIMEOUT = 4000;	 							// Miliseconds to wait for data we have written to be acknowledged
const uint32_t TCP_MAX_SEND_RETRIES = 8;								// How many times can we attempt to write data

/****************************************************************************************************/

struct tcp_pcb;
struct pbuf;

// The main network class that drives the network.
class Network
{
public:
	friend class NetworkTransaction;

	Network(Platform* p);
	void Init();
	void Exit() {}
	void Spin(bool full);
	void Interrupt();
	void Diagnostics(MessageType mtype);

	void EnableProtocol(int protocol, int port, int secure, StringRef& reply);
	void DisableProtocol(int protocol, StringRef& reply);
	void ReportProtocols(StringRef& reply) const;

	// Deal with LwIP

	void ResetCallback();
	bool ReceiveInput(pbuf *pb, ConnectionState *cs);
	ConnectionState *ConnectionAccepted(tcp_pcb *pcb);
	void ConnectionClosed(ConnectionState* cs, bool closeConnection);
	bool ConnectionClosedGracefully(ConnectionState *cs);

	bool Lock();
	void Unlock();
	bool InLwip() const;

	// Global settings

	const uint8_t *GetIPAddress() const;
	void SetIPAddress(const uint8_t ipAddress[], const uint8_t netmask[], const uint8_t gateway[]);
	void SetHostname(const char *name);

	void Enable();
	void Disable();
	bool IsEnabled() const { return isEnabled; }
	void Activate();

	// Interfaces for the Webserver

	NetworkTransaction *GetTransaction(const ConnectionState *cs = nullptr);

	void OpenDataPort(Port port);
	void CloseDataPort();

	void SaveDataConnection();
	void SaveFTPConnection();
	void SaveTelnetConnection();

	bool AcquireFTPTransaction();
	bool AcquireDataTransaction();
	bool AcquireTelnetTransaction();

	static Port GetHttpPort();
	static Port GetFtpPort();
	static Port GetTelnetPort();
	static Port GetDataPort();

	static Port GetLocalPort(Connection conn);
	static Port GetRemotePort(Connection conn);
	static uint32_t GetRemoteIP(Connection conn);
	static bool IsConnected(Connection conn);
	static bool IsTerminated(Connection conn);
	static void Terminate(Connection conn);

private:

	Platform* const platform;
	float longWait;

	void AppendTransaction(NetworkTransaction* volatile * list, NetworkTransaction *r);
	void PrependTransaction(NetworkTransaction* volatile * list, NetworkTransaction *r);
	bool AcquireTransaction(ConnectionState *cs);

	void Start();
	void Stop();

	void StartProtocol(size_t protocol)
	pre(protocol < NumProtocols; state == NetworkActive);

	void ShutdownProtocol(size_t protocol)
	pre(protocol < NumProtocols);

	void ReportOneProtocol(size_t protocol, StringRef& reply) const
	pre(protocol < NumProtocols);

	void DoMdnsAnnounce()
	pre(state == NetworkActive);

	NetworkTransaction * volatile freeTransactions;
	NetworkTransaction * volatile readyTransactions;
	NetworkTransaction * volatile writingTransactions;

	enum { NotStarted, NetworkInactive, NetworkEstablishingLink, NetworkObtainingIP, NetworkActive } state;
	bool isEnabled;
	bool activated;
	volatile bool resetCallback;
	char hostname[16];								// Limit DHCP hostname to 15 characters + terminating 0

	ConnectionState * volatile dataCs;
	ConnectionState * volatile ftpCs;
	ConnectionState * volatile telnetCs;

	ConnectionState * volatile freeConnections;
};

#endif

// vim: ts=4:sw=4
