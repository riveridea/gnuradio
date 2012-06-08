
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr_block_detail "Implementation details to support the signal processing abstraction

This class contains implementation detail that should be \"out of sight\" of almost all users of GNU Radio. This decoupling also means that we can make changes to the guts without having to recompile everything."























%feature("docstring") gr_block_detail::consume "Tell the scheduler  of input stream  were consumed."

%feature("docstring") gr_block_detail::consume_each "Tell the scheduler  were consumed on each input stream."

%feature("docstring") gr_block_detail::produce "Tell the scheduler  were produced on output stream ."

%feature("docstring") gr_block_detail::produce_each "Tell the scheduler  were produced on each output stream."

%feature("docstring") gr_block_detail::_post "Accept msg, place in queue, arrange for thread to be awakened if it's not already."





%feature("docstring") gr_block_detail::add_item_tag "Adds a new tag to the given output stream.

This takes the input parameters and builds a PMT tuple from it. It then calls gr_buffer::add_item_tag(pmt::pmt_t t), which appends the tag onto its deque."

%feature("docstring") gr_block_detail::get_tags_in_range "Given a [start,end), returns a vector of all tags in the range.

Pass-through function to gr_buffer_reader to get a vector of tags in given range. Range of counts is from start to end-1.

Tags are tuples of: (item count, source id, key, value)"



%feature("docstring") gr_make_block_detail "Implementation details to support the signal processing abstraction

This class contains implementation detail that should be \"out of sight\" of almost all users of GNU Radio. This decoupling also means that we can make changes to the guts without having to recompile everything."

%feature("docstring") gr_buffer "Single writer, multiple reader fifo.

Allocate a buffer that holds at least  of size .

The total size of the buffer will be rounded up to a system dependent boundary. This is typically the system page size, but under MS windows is 64KB."



%feature("docstring") gr_buffer::space_available "return number of items worth of space available for writing"

%feature("docstring") gr_buffer::bufsize "return size of this buffer in items"

%feature("docstring") gr_buffer::write_pointer "return pointer to write buffer.

The return value points at space that can hold at least space_available() items."

%feature("docstring") gr_buffer::update_write_pointer "tell buffer that we wrote  into it"





%feature("docstring") gr_buffer::link "Return the block that writes to this buffer."











%feature("docstring") gr_buffer::add_item_tag "Adds a new tag to the buffer."

%feature("docstring") gr_buffer::prune_tags "Removes all tags before  from buffer."











%feature("docstring") gr_buffer::gr_buffer "constructor is private. Use gr_make_buffer to create instances.

Allocate a buffer that holds at least  of size .


The total size of the buffer will be rounded up to a system dependent boundary. This is typically the system page size, but under MS windows is 64KB."

%feature("docstring") gr_buffer::drop_reader "disassociate  from this buffer"

%feature("docstring") gr_make_buffer "Single writer, multiple reader fifo.

Allocate a buffer that holds at least  of size .

The total size of the buffer will be rounded up to a system dependent boundary. This is typically the system page size, but under MS windows is 64KB."

%feature("docstring") gr_dispatcher "invoke callbacks based on select."









%feature("docstring") gr_dispatcher::loop "Event dispatching loop.

Enter a polling loop that only terminates after all gr_select_handlers have been removed.  sets the timeout parameter to the select() call, measured in seconds."

%feature("docstring") gr_make_dispatcher "invoke callbacks based on select."

%feature("docstring") gr_flat_flowgraph "Class specializing gr_flat_flowgraph that has all nodes as gr_blocks, with no hierarchy."









%feature("docstring") gr_flat_flowgraph::make_block_vector "Make a vector of gr_block from a vector of gr_basic_block"











%feature("docstring") gr_make_flat_flowgraph "Class specializing gr_flat_flowgraph that has all nodes as gr_blocks, with no hierarchy."

%feature("docstring") gr_flowgraph "Class representing a directed, acyclic graph of basic blocks."





















































%feature("docstring") gr_make_flowgraph "Class representing a directed, acyclic graph of basic blocks."

%feature("docstring") gr_hier_block2 "Hierarchical container class for gr_block's and gr_hier_block2's.

public constructor for gr_hier_block2"





%feature("docstring") gr_hier_block2::self "Return an object, representing the current block, which can be passed to connect.

The returned object may only be used as an argument to connect or disconnect. Any other use of self() results in unspecified (erroneous) behavior."

%feature("docstring") gr_hier_block2::connect "Add a stand-alone (possibly hierarchical) block to internal graph.

This adds a gr-block or hierarchical block to the internal graph without wiring it to anything else."

%feature("docstring") gr_hier_block2::disconnect "Remove a gr-block or hierarchical block from the internal flowgraph.

This removes a gr-block or hierarchical block from the internal flowgraph, disconnecting it from other blocks as needed."

%feature("docstring") gr_hier_block2::disconnect_all "Disconnect all connections in the internal flowgraph.

This call removes all output port to input port connections in the internal flowgraph."

%feature("docstring") gr_hier_block2::lock "Lock a flowgraph in preparation for reconfiguration. When an equal number of calls to lock() and unlock() have occurred, the flowgraph will be reconfigured.

N.B. lock() and unlock() may not be called from a flowgraph thread (E.g., gr_block::work method) or deadlock will occur when reconfiguration happens."

%feature("docstring") gr_hier_block2::unlock "Unlock a flowgraph in preparation for reconfiguration. When an equal number of calls to lock() and unlock() have occurred, the flowgraph will be reconfigured.

N.B. lock() and unlock() may not be called from a flowgraph thread (E.g., gr_block::work method) or deadlock will occur when reconfiguration happens."





%feature("docstring") gr_make_hier_block2 "Hierarchical container class for gr_block's and gr_hier_block2's.

public constructor for gr_hier_block2"

%feature("docstring") gr_io_signature "i/o signature for input and output ports.

misc

Create an i/o signature."













%feature("docstring") gr_make_io_signature "i/o signature for input and output ports.

misc

Create an i/o signature."

%feature("docstring") gr_message "Message class.

The ideas and method names for adjustable message length were lifted from the click modular router \"Packet\" class.

public constructor for gr_message"



























%feature("docstring") gr_make_message "Message class.

The ideas and method names for adjustable message length were lifted from the click modular router \"Packet\" class.

public constructor for gr_message"

%feature("docstring") gr_msg_queue "thread-safe message queue"





%feature("docstring") gr_msg_queue::handle "Generic msg_handler method: insert the message."

%feature("docstring") gr_msg_queue::insert_tail "Insert message at tail of queue.

Block if queue if full."

%feature("docstring") gr_msg_queue::delete_head "Delete message from head of queue and return it. Block if no message is available."

%feature("docstring") gr_msg_queue::delete_head_nowait "If there's a message in the q, delete it and return it. If no message is available, return 0."

%feature("docstring") gr_msg_queue::flush "Delete all messages from the queue."

%feature("docstring") gr_msg_queue::empty_p "is the queue empty?"

%feature("docstring") gr_msg_queue::full_p "is the queue full?"

%feature("docstring") gr_msg_queue::count "return number of messages in queue"

%feature("docstring") gr_msg_queue::limit "return limit on number of message in queue. 0 -> unbounded"

%feature("docstring") gr_make_msg_queue "thread-safe message queue"

%feature("docstring") gr_single_threaded_scheduler "Simple scheduler for stream computations."











%feature("docstring") gr_make_single_threaded_scheduler "Simple scheduler for stream computations."

%feature("docstring") gr_timer "implement timeouts

create a timeout.

gr_timer_hook is called when timer fires."





%feature("docstring") gr_timer::schedule_at "schedule timer to fire at abs_when"

%feature("docstring") gr_timer::schedule_after "schedule timer to fire rel_when seconds from now."

%feature("docstring") gr_timer::schedule_periodic "schedule a periodic timeout."

%feature("docstring") gr_timer::unschedule "cancel timer"

%feature("docstring") gr_timer::now "return absolute current time (seconds since the epoc)."

%feature("docstring") gr_make_timer "implement timeouts

create a timeout.

gr_timer_hook is called when timer fires."

%feature("docstring") gr_top_block "Top-level hierarchical block representing a flowgraph."





%feature("docstring") gr_top_block::run "The simple interface to running a flowgraph.

Calls start() then wait(). Used to run a flowgraph that will stop on its own, or when another thread will call stop()."

%feature("docstring") gr_top_block::start "Start the contained flowgraph. Creates one or more threads to execute the flow graph. Returns to the caller once the threads are created. Calling start() on a top_block that is already started IS an error."

%feature("docstring") gr_top_block::stop "Stop the running flowgraph. Notifies each thread created by the scheduler to shutdown, then returns to caller. Calling stop() on a top_block that is already stopped IS NOT an error."

%feature("docstring") gr_top_block::wait "Wait for a flowgraph to complete. Flowgraphs complete when either (1) all blocks indicate that they are done (typically only when using gr.file_source, or gr.head, or (2) after stop() has been called to request shutdown. Calling wait on a top_block that is not running IS NOT an error (wait returns w/o blocking)."

%feature("docstring") gr_top_block::lock "Lock a flowgraph in preparation for reconfiguration. When an equal number of calls to lock() and unlock() have occurred, the flowgraph will be reconfigured.

N.B. lock() and unlock() may not be called from a flowgraph thread (E.g., gr_block::work method) or deadlock will occur when reconfiguration happens."

%feature("docstring") gr_top_block::unlock "Unlock a flowgraph in preparation for reconfiguration. When an equal number of calls to lock() and unlock() have occurred, the flowgraph will be reconfigured.

N.B. lock() and unlock() may not be called from a flowgraph thread (E.g., gr_block::work method) or deadlock will occur when reconfiguration happens."

%feature("docstring") gr_top_block::dump "Displays flattened flowgraph edges and block connectivity"

%feature("docstring") gr_top_block::max_noutput_items "Get the number of max noutput_items in the flowgraph."

%feature("docstring") gr_top_block::set_max_noutput_items "Set the maximum number of noutput_items in the flowgraph."



%feature("docstring") gr_make_top_block "Top-level hierarchical block representing a flowgraph."













%feature("docstring") gr_buffer_add_reader "Create a new gr_buffer_reader and attach it to buffer ."

%feature("docstring") gr_buffer_ncurrently_allocated "returns # of gr_buffers currently allocated"

%feature("docstring") gr_buffer_reader_ncurrently_allocated "returns # of gr_buffer_readers currently allocated"









%feature("docstring") gr_make_io_signature2 "Create an i/o signature."

%feature("docstring") gr_make_io_signature3 "Create an i/o signature."

%feature("docstring") gr_make_io_signaturev "Create an i/o signature.

If there are more streams than there are entries in sizeof_stream_items, the value of the last entry in sizeof_stream_items is used for the missing values. sizeof_stream_items must contain at least 1 entry."





%feature("docstring") gr_pagesize "return the page size in bytes"

%feature("docstring") gr_enable_realtime_scheduling "If possible, enable high-priority \"real time\" scheduling."

%feature("docstring") gr_tmp_path "directory to create temporary files"

%feature("docstring") gr_appdata_path "directory to store application data"

















%feature("docstring") gr_basic_block "The abstract base class for all signal processing blocks.

Basic blocks are the bare abstraction of an entity that has a name, a set of inputs and outputs, and a message queue. These are never instantiated directly; rather, this is the abstract parent class of both gr_hier_block, which is a recursive container, and gr_block, which implements actual signal processing functions."





%feature("docstring") gr_basic_block::set_input_signature "may only be called during constructor"

%feature("docstring") gr_basic_block::set_output_signature "may only be called during constructor"

%feature("docstring") gr_basic_block::set_color "Allow the flowgraph to set for sorting and partitioning."















%feature("docstring") gr_basic_block::check_topology "Confirm that ninputs and noutputs is an acceptable combination.

This function is called by the runtime system whenever the topology changes. Most classes do not need to override this. This check is in addition to the constraints specified by the input and output gr_io_signatures."

%feature("docstring") gr_basic_block::set_msg_handler "Set the callback that is fired when messages are available.

can be any kind of function pointer or function object that has the signature: 

(You may want to use boost::bind to massage your callable into the correct form. See gr_nop.{h,cc} for an example that sets up a class method as the callback.)

Blocks that desire to handle messages must call this method in their constructors to register the handler that will be invoked when messages are available.

If the block inherits from gr_block, the runtime system will ensure that msg_handler is called in a thread-safe manner, such that work and msg_handler will never be called concurrently. This allows msg_handler to update state variables without having to worry about thread-safety issues with work, general_work or another invocation of msg_handler.

If the block inherits from gr_hier_block2, the runtime system will ensure that no reentrant calls are made to msg_handler."

%feature("docstring") gr_block "The abstract base class for all 'terminal' processing blocks.

A signal processing flow is constructed by creating a tree of hierarchical blocks, which at any level may also contain terminal nodes that actually implement signal processing functions. This is the base class for all such leaf nodes.

Blocks have a set of input streams and output streams. The input_signature and output_signature define the number of input streams and output streams respectively, and the type of the data items in each stream.

Although blocks may consume data on each input stream at a different rate, all outputs streams must produce data at the same rate. That rate may be different from any of the input rates.

User derived blocks override two methods, forecast and general_work, to implement their signal processing behavior. forecast is called by the system scheduler to determine how many items are required on each input stream in order to produce a given number of output items.

general_work is called to perform the signal processing in the block. It reads the input items and writes the output items."



%feature("docstring") gr_block::history "Assume block computes y_i = f(x_i, x_i-1, x_i-2, x_i-3...) History is the number of x_i's that are examined to produce one y_i. This comes in handy for FIR filters, where we use history to ensure that our input contains the appropriate \"history\" for the filter. History should be equal to the number of filter taps."



%feature("docstring") gr_block::fixed_rate "Return true if this block has a fixed input to output rate.

If true, then fixed_rate_in_to_out and fixed_rate_out_to_in may be called."

%feature("docstring") gr_block::forecast "Estimate input requirements given output request.

Given a request to product , estimate the number of data items required on each input stream. The estimate doesn't have to be exact, but should be close."

%feature("docstring") gr_block::general_work "compute output items from input items

general_work must call consume or consume_each to indicate how many items were consumed on each input stream."

%feature("docstring") gr_block::start "Called to enable drivers, etc for i/o devices.

This allows a block to enable an associated driver to begin transfering data just before we start to execute the scheduler. The end result is that this reduces latency in the pipeline when dealing with audio devices, usrps, etc."

%feature("docstring") gr_block::stop "Called to disable drivers, etc for i/o devices."

%feature("docstring") gr_block::set_output_multiple "Constrain the noutput_items argument passed to forecast and general_work.

set_output_multiple causes the scheduler to ensure that the noutput_items argument passed to forecast and general_work will be an integer multiple of"





%feature("docstring") gr_block::set_alignment "Constrains buffers to work on a set item alignment (for SIMD)

set_alignment_multiple causes the scheduler to ensure that the noutput_items argument passed to forecast and general_work will be an integer multiple of 
This control is similar to the output_multiple setting, except that if the number of items passed to the block is less than the output_multiple, this value is ignored and the block can produce like normal. The d_unaligned value is set to the number of items the block is off by. In the next call to general_work, the noutput_items is set to d_unaligned or less until d_unaligned==0. The buffers are now aligned again and the aligned calls can be performed again."











%feature("docstring") gr_block::consume "Tell the scheduler  of input stream  were consumed."

%feature("docstring") gr_block::consume_each "Tell the scheduler  were consumed on each input stream."

%feature("docstring") gr_block::produce "Tell the scheduler  were produced on output stream .

If the block's general_work method calls produce,  must return WORK_CALLED_PRODUCE."

%feature("docstring") gr_block::set_relative_rate "Set the approximate output rate / input rate.

Provide a hint to the buffer allocator and scheduler. The default relative_rate is 1.0

decimators have relative_rates < 1.0 interpolators have relative_rates > 1.0"

%feature("docstring") gr_block::relative_rate "return the approximate output rate / input rate"

%feature("docstring") gr_block::fixed_rate_ninput_to_noutput "Given ninput samples, return number of output samples that will be produced. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_block::fixed_rate_noutput_to_ninput "Given noutput samples, return number of input samples required to produce noutput. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_block::nitems_read "Return the number of items read on input stream which_input."

%feature("docstring") gr_block::nitems_written "Return the number of items written on output stream which_output."

%feature("docstring") gr_block::tag_propagation_policy "Asks for the policy used by the scheduler to moved tags downstream."

%feature("docstring") gr_block::set_tag_propagation_policy "Set the policy by the scheduler to determine how tags are moved downstream."









%feature("docstring") gr_block::add_item_tag "Adds a new tag onto the given output buffer."

%feature("docstring") gr_block::get_tags_in_range "Given a [start,end), returns a vector of all tags in the range.

Range of counts is from start to end-1.

Tags are tuples of: (item count, source id, key, value)"

%feature("docstring") gr_block_executor "Manage the execution of a single block."







%feature("docstring") gr_buffer_reader "How we keep track of the readers of a gr_buffer."



%feature("docstring") gr_buffer_reader::items_available "Return number of items available for reading."

%feature("docstring") gr_buffer_reader::buffer "Return buffer this reader reads from."

%feature("docstring") gr_buffer_reader::max_possible_items_available "Return maximum number of items that could ever be available for reading. This is used as a sanity check in the scheduler to avoid looping forever."

%feature("docstring") gr_buffer_reader::read_pointer "return pointer to read buffer.

The return value points to items_available() number of items"













%feature("docstring") gr_buffer_reader::link "Return the block that reads via this reader."

%feature("docstring") gr_buffer_reader::get_tags_in_range "Given a [start,end), returns a vector all tags in the range.

Get a vector of tags in given range. Range of counts is from start to end-1.

Tags are tuples of: (item count, source id, key, value)"

%feature("docstring") gr_buffer_reader::gr_buffer_reader "constructor is private. Use gr_buffer::add_reader to create instances"

%feature("docstring") gr_edge "Class representing a connection between to graph endpoints."









%feature("docstring") gr_endpoint "Class representing a specific input or output graph endpoint."









%feature("docstring") gr_error_handler "abstract error handler"













































































%feature("docstring") gr_local_sighandler "Get and set signal handler.

Constructor installs new handler, destructor reinstalls original value."







%feature("docstring") gr_msg_accepter "Accepts messages and inserts them into a message queue, then notifies subclass gr_basic_block there is a message pending."







%feature("docstring") gr_msg_handler "abstract class of message handlers"



%feature("docstring") gr_msg_handler::handle "handle"







%feature("docstring") gr_scheduler "Abstract scheduler that takes a flattened flow graph and runs it.

Preconditions: details, buffers and buffer readers have been assigned."

%feature("docstring") gr_scheduler::gr_scheduler "Construct a scheduler and begin evaluating the graph.

The scheduler will continue running until all blocks until they report that they are done or the stop method is called."



%feature("docstring") gr_scheduler::stop "Tell the scheduler to stop executing."

%feature("docstring") gr_scheduler::wait "Block until the graph is done."

%feature("docstring") gr_scheduler_sts "Concrete scheduler that uses the single_threaded_scheduler."

%feature("docstring") gr_scheduler_sts::gr_scheduler_sts "Construct a scheduler and begin evaluating the graph.

The scheduler will continue running until all blocks until they report that they are done or the stop method is called."





%feature("docstring") gr_scheduler_sts::stop "Tell the scheduler to stop executing."

%feature("docstring") gr_scheduler_sts::wait "Block until the graph is done."

%feature("docstring") gr_scheduler_tpb "Concrete scheduler that uses a kernel thread-per-block."

%feature("docstring") gr_scheduler_tpb::gr_scheduler_tpb "Construct a scheduler and begin evaluating the graph.

The scheduler will continue running until all blocks until they report that they are done or the stop method is called."





%feature("docstring") gr_scheduler_tpb::stop "Tell the scheduler to stop executing."

%feature("docstring") gr_scheduler_tpb::wait "Block until the graph is done."

%feature("docstring") gr_select_handler "Abstract handler for select based notification."









%feature("docstring") gr_select_handler::handle_read "Called when file_descriptor is readable.

Called when the dispatcher detects that file_descriptor can be read without blocking."

%feature("docstring") gr_select_handler::handle_write "Called when file_descriptor is writable.

Called when dispatcher detects that file descriptor can be written without blocking."

%feature("docstring") gr_select_handler::readable "Called each time around the dispatcher loop to determine whether this handler's file descriptor should be added to the list on which read events can occur. The default method returns true, indicating that by default, all handlers are interested in read events."

%feature("docstring") gr_select_handler::writable "Called each time around the dispatcher loop to determine whether this handler's file descriptor should be added to the list on which write events can occur. The default method returns true, indicating that by default, all handlers are interested in write events."

%feature("docstring") gr_signal "Representation of signal."







%feature("docstring") gr_sync_block "synchronous 1:1 input to output with history

Override work to provide the signal processing implementation."



%feature("docstring") gr_sync_block::work "just like gr_block::general_work, only this arranges to call consume_each for you

The user must override work to define the signal processing code"

%feature("docstring") gr_sync_block::forecast "Estimate input requirements given output request.

Given a request to product , estimate the number of data items required on each input stream. The estimate doesn't have to be exact, but should be close."

%feature("docstring") gr_sync_block::general_work "compute output items from input items

general_work must call consume or consume_each to indicate how many items were consumed on each input stream."

%feature("docstring") gr_sync_block::fixed_rate_ninput_to_noutput "Given ninput samples, return number of output samples that will be produced. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_sync_block::fixed_rate_noutput_to_ninput "Given noutput samples, return number of input samples required to produce noutput. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_sync_decimator "synchronous N:1 input to output with history

Override work to provide the signal processing implementation."







%feature("docstring") gr_sync_decimator::forecast "Estimate input requirements given output request.

Given a request to product , estimate the number of data items required on each input stream. The estimate doesn't have to be exact, but should be close."

%feature("docstring") gr_sync_decimator::general_work "compute output items from input items

general_work must call consume or consume_each to indicate how many items were consumed on each input stream."

%feature("docstring") gr_sync_decimator::fixed_rate_ninput_to_noutput "Given ninput samples, return number of output samples that will be produced. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_sync_decimator::fixed_rate_noutput_to_ninput "Given noutput samples, return number of input samples required to produce noutput. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_sync_interpolator "synchronous 1:N input to output with history

Override work to provide the signal processing implementation."







%feature("docstring") gr_sync_interpolator::forecast "Estimate input requirements given output request.

Given a request to product , estimate the number of data items required on each input stream. The estimate doesn't have to be exact, but should be close."

%feature("docstring") gr_sync_interpolator::general_work "compute output items from input items

general_work must call consume or consume_each to indicate how many items were consumed on each input stream."

%feature("docstring") gr_sync_interpolator::fixed_rate_ninput_to_noutput "Given ninput samples, return number of output samples that will be produced. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_sync_interpolator::fixed_rate_noutput_to_ninput "Given noutput samples, return number of input samples required to produce noutput. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_top_block_impl "Abstract implementation details of gr_top_block

The actual implementation of gr_top_block. Separate class allows decoupling of changes from dependent classes."























%feature("docstring") gr_tpb_thread_body "The body of each thread-per-block thread.

One of these is instantiated in its own thread for each block. The constructor turns into the main loop which returns when the block is done or is interrupted."





%feature("docstring") gr_vmcircbuf "abstract class to implement doubly mapped virtual memory circular buffers"









%feature("docstring") gr_vmcircbuf_createfilemapping "concrete class to implement circular buffers with mmap and shm_open"





%feature("docstring") gr_vmcircbuf_createfilemapping_factory "concrete factory for circular buffers built using mmap and shm_open"



%feature("docstring") gr_vmcircbuf_createfilemapping_factory::name "return name of this factory"

%feature("docstring") gr_vmcircbuf_createfilemapping_factory::granularity "return granularity of mapping, typically equal to page size"

%feature("docstring") gr_vmcircbuf_createfilemapping_factory::make "return a gr_vmcircbuf, or 0 if unable.

Call this to create a doubly mapped circular buffer."

%feature("docstring") gr_vmcircbuf_factory "abstract factory for creating circular buffers"





%feature("docstring") gr_vmcircbuf_factory::name "return name of this factory"

%feature("docstring") gr_vmcircbuf_factory::granularity "return granularity of mapping, typically equal to page size"

%feature("docstring") gr_vmcircbuf_factory::make "return a gr_vmcircbuf, or 0 if unable.

Call this to create a doubly mapped circular buffer."

%feature("docstring") gr_vmcircbuf_mmap_shm_open "concrete class to implement circular buffers with mmap and shm_open"





%feature("docstring") gr_vmcircbuf_mmap_shm_open_factory "concrete factory for circular buffers built using mmap and shm_open"



%feature("docstring") gr_vmcircbuf_mmap_shm_open_factory::name "return name of this factory"

%feature("docstring") gr_vmcircbuf_mmap_shm_open_factory::granularity "return granularity of mapping, typically equal to page size"

%feature("docstring") gr_vmcircbuf_mmap_shm_open_factory::make "return a gr_vmcircbuf, or 0 if unable.

Call this to create a doubly mapped circular buffer."

%feature("docstring") gr_vmcircbuf_mmap_tmpfile "concrete class to implement circular buffers with mmap and shm_open"





%feature("docstring") gr_vmcircbuf_mmap_tmpfile_factory "concrete factory for circular buffers built using mmap and shm_open"



%feature("docstring") gr_vmcircbuf_mmap_tmpfile_factory::name "return name of this factory"

%feature("docstring") gr_vmcircbuf_mmap_tmpfile_factory::granularity "return granularity of mapping, typically equal to page size"

%feature("docstring") gr_vmcircbuf_mmap_tmpfile_factory::make "return a gr_vmcircbuf, or 0 if unable.

Call this to create a doubly mapped circular buffer."













%feature("docstring") gr_vmcircbuf_sysconfig::test_factory "Does this factory really work?

verbose = 0: silent verbose = 1: names of factories tested and results verbose = 2: all intermediate results"

%feature("docstring") gr_vmcircbuf_sysconfig::test_all_factories "Test all factories, return true if at least one of them works verbose = 0: silent verbose = 1: names of factories tested and results verbose = 2: all intermediate results."

%feature("docstring") gr_vmcircbuf_sysv_shm "concrete class to implement circular buffers with mmap and shm_open"





%feature("docstring") gr_vmcircbuf_sysv_shm_factory "concrete factory for circular buffers built using mmap and shm_open"



%feature("docstring") gr_vmcircbuf_sysv_shm_factory::name "return name of this factory"

%feature("docstring") gr_vmcircbuf_sysv_shm_factory::granularity "return granularity of mapping, typically equal to page size"

%feature("docstring") gr_vmcircbuf_sysv_shm_factory::make "return a gr_vmcircbuf, or 0 if unable.

Call this to create a doubly mapped circular buffer."





































































































































































%feature("docstring") qa_runtime "collect all the tests for the runtime directory"

%feature("docstring") qa_runtime::suite "return suite of tests for all of runtime directory"















