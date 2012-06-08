
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */












%feature("docstring") gruel::msg_accepter "Virtual base class that accepts messages."





%feature("docstring") gruel::msg_accepter::post "send  to

Sending a message is an asynchronous operation. The  call will not wait for the message either to arrive at the destination or to be received."

%feature("docstring") gruel::msg_accepter_msgq "Concrete class that accepts messages and inserts them into a message queue."





%feature("docstring") gruel::msg_accepter_msgq::post "send  to

Sending a message is an asynchronous operation. The  call will not wait for the message either to arrive at the destination or to be received."



%feature("docstring") gruel::msg_queue "thread-safe message queue"





%feature("docstring") gruel::msg_queue::insert_tail "Insert message at tail of queue.

Block if queue if full."

%feature("docstring") gruel::msg_queue::delete_head "Delete message from head of queue and return it. Block if no message is available."

%feature("docstring") gruel::msg_queue::delete_head_nowait "If there's a message in the q, delete it and return it. If no message is available, return pmt_t()."

%feature("docstring") gruel::msg_queue::flush "Delete all messages from the queue."

%feature("docstring") gruel::msg_queue::empty_p "is the queue empty?"

%feature("docstring") gruel::msg_queue::full_p "is the queue full?"

%feature("docstring") gruel::msg_queue::count "return number of messages in queue"

%feature("docstring") gruel::msg_queue::limit "return limit on number of message in queue. 0 -> unbounded"













%feature("docstring") pmt::pmt_pool "very simple thread-safe fixed-size allocation pool

FIXME may want to go to global allocation with per-thread free list. This would eliminate virtually all lock contention."



































