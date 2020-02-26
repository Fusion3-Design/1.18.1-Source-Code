/*
 * LinkedList.hpp
 *
 *  Created on: Feb 8, 2018
 *      Author: tstern
 */

#ifndef SRC_LIBRARY_LINKEDLIST_HPP_
#define SRC_LIBRARY_LINKEDLIST_HPP_


#include <cstddef>		// for size_t
#include <cstdarg>
#include <cstring>
#include "syslog.h"

template<typename T> class LinkedList;
template<class T>
struct node {
	 friend class LinkedList<T>;
    public:
       node(T data = nullptr, node<T> *next = nullptr)
            : data(data), next(next)
        { }
	node<T>* next;
	T data;
};

template<class T>
class LinkedList
{
public:
	node<T>* first;
	node<T>* last;
	size_t count;
	LinkedList<T>() {
		first = nullptr;
		last = nullptr;
		count=0;
	}

	void add(T data) {
		node<T> *x = new node<T>;
		x->data=data;
		x->next=nullptr;
		if (first==nullptr)
		{
			first=x;
			last=x;
			count++;
			return;
		}
		last->next=x;
		last=x;
		count++;
	}



	void add(LinkedList<T> &list) {
		uint32_t i=0;
		//LOG("List has %d", list.count);
		T x=list.get(i);
		while (x != nullptr && i<list.count)
		{
			//LOG("added");
			add(x);
			//LOG("addr %x %d",(uint32_t)x,i);
			i=i+1;
			x=list.get(i);

		}
		//LOG("Count %d", count);
	}

	T get(uint32_t index) {
		//LOG("index %d count %d",index,count);
		if (index>=count)
		{
			return nullptr;
		}
		if(index == 0) {
			// Get the first element
			return this->first->data;
		} else {
			// Get the index'th element
			node<T>* curr = this->first;
			for(uint32_t i = 0; i < index; ++i) {
				if (curr != nullptr)
				{
					curr = curr->next;
				} else
				{
					//LOG("List Done");
					return nullptr;
				}
			}
			return curr->data;
		}
	}

	T operator[](int index) {
		return get(index);
	}

};

#endif /* SRC_LIBRARY_LINKEDLIST_HPP_ */
