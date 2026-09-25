//
// Copyright 2014-2026 Cristian Maglie. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//

package enumerator

import (
	"go.bug.st/serial"
)

// FreeBSD note: full USB detail enumeration (VID/PID/Manufacturer/Product)
// is not implemented upstream for this platform (would require querying
// libusb or devd). Rather than fail outright -- which previously made every
// call to GetDetailedPortsList() error out unconditionally, hiding all
// serial ports regardless of what was connected -- fall back to the plain
// device listing from serial.GetPortsList() (see serial_freebsd.go) and
// return each port with empty USB detail fields. This means boards will
// show up as generic serial ports without automatic board-type detection,
// which is a real limitation, but ports are at least visible and usable.
func nativeGetDetailedPortsList(_ func(vid, pid string) bool) ([]*PortDetails, error) {
	ports, err := serial.GetPortsList()
	if err != nil {
		return nil, &PortEnumerationError{causedBy: err}
	}

	var res []*PortDetails
	for _, port := range ports {
		res = append(res, &PortDetails{Name: port})
	}
	return res, nil
}
