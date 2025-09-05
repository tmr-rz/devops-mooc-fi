#!/usr/bin/env python3

import time
import uuid
from datetime import datetime, timezone

def main():
    # Generate a random string on startup and store it in memory
    random_string = str(uuid.uuid4())
    print(f"Application started. Generated string: {random_string}")
    
    # Output the string every 5 seconds with timestamp
    while True:
        timestamp = datetime.now(timezone.utc).isoformat(timespec='milliseconds').replace('+00:00', 'Z')
        print(f"{timestamp}: {random_string}")
        time.sleep(5)

if __name__ == "__main__":
    main()