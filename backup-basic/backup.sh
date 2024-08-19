#!/bin/bash
tar -cf myarchive.tar ~/{Documents,Downlaods,Desktop}
gzip myarchive.tar
