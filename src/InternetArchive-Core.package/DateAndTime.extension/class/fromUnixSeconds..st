*internetarchive-core
fromUnixSeconds: seconds
	"Answer a DateAndTime since the Unix epoch: 1 January 1980"

	^ self basicNew ticks: (Array with: 2440588 with: seconds with: 0) offset: self localOffset
 