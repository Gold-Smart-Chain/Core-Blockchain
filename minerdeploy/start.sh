#! /bin/bash
sh -c 'cd /app; ./geth --datadir stand --networkid 77612 --bootnodes "enr:-KO4QMXcrXobuLS0b8Rz8UjPY1P9lE6UhKLNWBwJp2ujNncvN_YSYVTyCTB_2Co37hcPBIXbV4FCJqzrXIKQq0WFFAWGAYT2lWxQg2V0aMfGhNY4HfiAgmlkgnY0gmlwhKdj7-OJc2VjcDI1NmsxoQPmYjG9YnddkzcRddxsVNqDB7j1eDkfcwERgj7SXf_xIoRzbmFwwIN0Y3CCf5yDdWRwgn-c" --mine --syncmode full --unlock 0 --password /app/.accountpassword'
