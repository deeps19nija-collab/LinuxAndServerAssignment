
# User Management and Access Control Report

## Requirement Validation Screenshots

### Validate User Accounts Creation
<img width="940" height="235" alt="image" src="https://github.com/user-attachments/assets/e7bde70f-4a88-493a-b840-8004e3ae9541" />

### Validate Password Set and Expiration
<img width="940" height="471" alt="image" src="https://github.com/user-attachments/assets/d40b9f0a-29d2-44ed-a4b2-7328386c1cc9" />

### Test password complexity 
<img width="940" height="525" alt="image" src="https://github.com/user-attachments/assets/705ae3f8-fe3d-44c5-a0b5-37be0b055f53" />

### Validate Workspace Directories
<img width="940" height="277" alt="image" src="https://github.com/user-attachments/assets/cb411260-c6f4-47d0-9b6e-e767c5b272a9" />

### Validate Permissions (Security Test)
**Try accessing other user’s workspace as normal user**
<img width="940" height="162" alt="image" src="https://github.com/user-attachments/assets/5e6eb413-052a-4762-9777-d752ac790215" />

### Validate Logging
<img width="940" height="311" alt="image" src="https://github.com/user-attachments/assets/fce1aa8e-9a64-45f0-8a63-2a972e2f3784" />


## Summary
This report documents the execution of the user management setup for new developers.

## Users Created
| Username | Home Directory | Workspace Directory             | Password Policy               |
|----------|----------------|--------------------------------|-------------------------------|
| Sarah    | /home/Sarah    | /home/Sarah/workspace          | Complex password, 30-day expiry |
| Mike     | /home/mike     | /home/mike/workspace           | Complex password, 30-day expiry |

## Permissions
- Workspace directories are owned by the respective user.
- Permissions are set to `700`, ensuring only the owner can read/write/execute.

## Logging
- All operations are logged in `/var/log/user_management.log`.
- Sample log entries:
<img width="940" height="311" alt="image" src="https://github.com/user-attachments/assets/615336de-8fea-4c0e-99e8-696a9ea1ff44" />


## Conclusion
The script successfully:
- Creates isolated user accounts.
- Enforces 30-day password expiration.
- Logs all actions for auditing.
- Creates secure workspaces accessible only by the respective users.


