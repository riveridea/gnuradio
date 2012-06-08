
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */






























%feature("docstring") hid_init "Initialize the HIDAPI library.

This function initializes the HIDAPI library. Calling it is not strictly necessary, as it will be called automatically by hid_enumerate() and any of the hid_open_*() functions if it is needed. This function should be called at the beginning of execution however, if there is a chance of HIDAPI handles being opened by different threads simultaneously."

%feature("docstring") hid_exit "Finalize the HIDAPI library.

This function frees all of the static data associated with HIDAPI. It should be called at the end of execution to avoid memory leaks."

%feature("docstring") hid_enumerate "Enumerate the HID Devices.

This function returns a linked list of all the HID devices attached to the system which match vendor_id and product_id. If  and  are both set to 0, then all HID devices will be returned."

%feature("docstring") hid_free_enumeration "Free an enumeration Linked List.

This function frees a linked list created by hid_enumerate()."

%feature("docstring") hid_open "Open a HID device using a Vendor ID (VID), Product ID (PID) and optionally a serial number.

If  is NULL, the first device with the specified VID and PID is opened."

%feature("docstring") hid_open_path "Open a HID device by its path name.

The path name be determined by calling hid_enumerate(), or a platform-specific path name can be used (eg: /dev/hidraw0 on Linux)."

%feature("docstring") hid_write "Write an Output report to a HID device.

The first byte of [] must contain the Report ID. For devices which only support a single report, this must be set to 0x0. The remaining bytes contain the report data. Since the Report ID is mandatory, calls to hid_write() will always contain one more byte than the report contains. For example, if a hid report is 16 bytes long, 17 bytes must be passed to hid_write(), the Report ID (or 0x0, for devices with a single report), followed by the report data (16 bytes). In this example, the length passed in would be 17.

hid_write() will send the data on the first OUT endpoint, if one exists. If it does not, it will send the data through the Control Endpoint (Endpoint 0)."

%feature("docstring") hid_read_timeout "Read an Input report from a HID device with timeout.

Input reports are returned to the host through the INTERRUPT IN endpoint. The first byte will contain the Report number if the device uses numbered reports."

%feature("docstring") hid_read "Read an Input report from a HID device.

Input reports are returned to the host through the INTERRUPT IN endpoint. The first byte will contain the Report number if the device uses numbered reports."

%feature("docstring") hid_set_nonblocking "Set the device handle to be non-blocking.

In non-blocking mode calls to hid_read() will return immediately with a value of 0 if there is no data to be read. In blocking mode, hid_read() will wait (block) until there is data to read before returning.

Nonblocking can be turned on and off at any time."

%feature("docstring") hid_send_feature_report "Send a Feature report to the device.

Feature reports are sent over the Control endpoint as a Set_Report transfer. The first byte of [] must contain the Report ID. For devices which only support a single report, this must be set to 0x0. The remaining bytes contain the report data. Since the Report ID is mandatory, calls to hid_send_feature_report() will always contain one more byte than the report contains. For example, if a hid report is 16 bytes long, 17 bytes must be passed to hid_send_feature_report(): the Report ID (or 0x0, for devices which do not use numbered reports), followed by the report data (16 bytes). In this example, the length passed in would be 17."

%feature("docstring") hid_get_feature_report "Get a feature report from a HID device.

Make sure to set the first byte of [] to the Report ID of the report to be read. Make sure to allow space for this extra byte in []."

%feature("docstring") hid_close "Close a HID device."

%feature("docstring") hid_get_manufacturer_string "Get The Manufacturer String from a HID device."

%feature("docstring") hid_get_product_string "Get The Product String from a HID device."

%feature("docstring") hid_get_serial_number_string "Get The Serial Number String from a HID device."

%feature("docstring") hid_get_indexed_string "Get a string from a HID device, based on its string index."

%feature("docstring") hid_error "Get a string describing the last error which occurred."

















