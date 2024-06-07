### Issue Summary

**Duration of the outage:**  
Start: June 4, 2024, 15:00
End: June 4, 2024, 17:30

**Impact:**  
Our e-commerce platform was down, preventing users from accessing the website or making purchases. Approximately 85% of users were affected, experiencing either complete service unavailability or severe delays in page loading times.

**Root Cause:**  
The root cause was a misconfigured database index during a recent update, which caused database queries to time out under high traffic conditions.

---

### Timeline

- **15:00:** Issue detected via monitoring alert indicating high database response times.
- **15:05:** Initial investigation started by on-call engineer focusing on web server performance.
- **15:20:** Confirmed web servers were functioning normally; escalated to database team.
- **15:30:** Database team began investigating query performance; identified recent changes.
- **16:00:** Rolled back recent database index changes; performance did not improve.
- **16:30:** Identified additional misconfigured indexes; further rollback initiated.
- **17:00:** Database performance began to stabilize; continued monitoring.
- **17:30:** Confirmed system back to normal; incident resolved.

---

### Root Cause and Resolution

**Root Cause:**  
The outage was caused by a misconfigured database index introduced during a routine update. This misconfiguration led to inefficient query execution plans, causing significant delays under high traffic conditions. As a result, the database was unable to handle the normal load, leading to timeouts and a complete service outage for most users.

**Resolution:**  
The resolution involved identifying and rolling back the problematic database index changes. Initially, the wrong index changes were rolled back, which did not resolve the issue. Upon further investigation, it was discovered that multiple indexes were misconfigured. Rolling back all recent index changes restored database performance, and the system gradually returned to normal operation.

---

### Corrective and Preventative Measures

**Improvements/Fixes:**  
To prevent similar incidents in the future, we need to improve our update deployment and monitoring processes.

**Tasks:**
1. **Revise Database Indexing Procedures:**  
   - Review and update the process for making index changes to ensure thorough testing under load conditions.

2. **Enhanced Monitoring:**  
   - Implement more granular database query performance monitoring to detect inefficient queries early.
   - Set up alerts for unusual database activity that could indicate misconfigurations.

3. **Pre-deployment Testing:**  
   - Develop a robust pre-deployment testing framework that simulates high traffic conditions to identify potential performance issues.

4. **Incident Response Training:**  
   - Conduct regular incident response drills for the engineering team to improve diagnosis and resolution times.

5. **Documentation and Review:**  
   - Document the incident and changes made in detail.
   - Schedule a review meeting to discuss the incident, the response, and to ensure all team members are aware of the changes and new procedures.

By implementing these corrective and preventative measures, we aim to enhance system reliability and reduce the likelihood of similar outages in the future.

