SELECT REGION.Name AS Region, STAFF.Name AS Staff FROM REGION, STAFF WHERE REGION.RegionManager = STAFF.StaffId ORDER BY Region;