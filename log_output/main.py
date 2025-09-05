import uuid
import time
from time import sleep
from datetime import datetime, timezone
# Generate one random string (like a GUID)
random_string = str(uuid.uuid4())
while True:
    print(f"{datetime.now(timezone.utc).isoformat(timespec='milliseconds').replace('+00:00', 'Z')}: {random_string}")
    sleep(5)