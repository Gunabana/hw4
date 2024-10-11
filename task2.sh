#!/bin/bash

grep -l 'sample' dataset1/file* | xargs -I{} sh -c "count=\$(grep -o 'CSC510' {} | wc -l); size=\$(stat -c%s {}); if [ \$count -ge 3 ]; then echo \$count \$size {}; fi" | sort -k1,1nr -k2,2nr | awk '{print $3}' | sed 's|^dataset1/file_|filtered_|'