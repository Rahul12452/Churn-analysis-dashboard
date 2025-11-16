CREATE TABLE Customer_Data (
    Customer_ID VARCHAR(30) PRIMARY KEY,
    Gender VARCHAR(20),
    Age INT,
    Married VARCHAR(20),
    State VARCHAR(60),
    Number_of_Referrals INT,
    Tenure_in_Months INT,
    Value_Deal VARCHAR(80),
    Phone_Service VARCHAR(10),
    Multiple_Lines VARCHAR(20),
    Internet_Service VARCHAR(20),
    Internet_Type VARCHAR(80),
    Online_Security VARCHAR(20),
    Online_Backup VARCHAR(20),
    Device_Protection_Plan VARCHAR(20),
    Premium_Support VARCHAR(20),
    Streaming_TV VARCHAR(20),
    Streaming_Movies VARCHAR(20),
    Streaming_Music VARCHAR(5),
    Unlimited_Data VARCHAR(5),
    Contract VARCHAR(30),
    Paperless_Billing VARCHAR(5),
    Payment_Method VARCHAR(80),
    Monthly_Charge DECIMAL(10,2),
    Total_Charges DECIMAL(10,2),
    Total_Refunds DECIMAL(10,2),
    Total_Extra_Data_Charges DECIMAL(10,2),
    Total_Long_Distance_Charges DECIMAL(10,2),
    Total_Revenue DECIMAL(10,2),
    Customer_Status VARCHAR(50),
    Churn_Category VARCHAR(80),
    Churn_Reason VARCHAR(150)
);

SELECT *from Customer_Data;


SELECT count(*) from customer_Data;

--- Data Exploaring

SELECT gender,count(gender) as Total_count,
round(count(gender) * 100.0 / (SELECT count(*) FROM customer_Data),2) from customer_Data as percentage
GROUP by gender


SELECT Contract,count(contract) as Total_contract,
round(count(Contract)*100.0 / (SELECT count(*) from customer_Data),2) as percentage
from customer_Data
GROUP by Contract


SELECT Customer_Status, count(Customer_Status) as Total_counts , sum(Total_Revenue) as Total_Rev,
round(sum(Total_Revenue)/(select sum(Total_Revenue) from customer_Data )*100,2) as Revenue_percentage
from customer_Data
GROUP by Customer_Status


SELECT State, count(State) as Total_counts,
round(count(State) *100.0 /(select count(*) FROM customer_Data ),2)  as Total_percentage
FROM customer_Data
GROUP by State
ORDER by Total_percentage DESC

SELECT
SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null_Count,
SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,
SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS Married_Null_Count,
SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Null_Count,
SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Null_Count,
SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
FROM customer_Data;


SELECT
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    COALESCE(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    COALESCE(Multiple_Lines, 'No') AS Multiple_Lines,
    Internet_Service,
    COALESCE(Internet_Type, 'None') AS Internet_Type,
    COALESCE(Online_Security, 'No') AS Online_Security,
    COALESCE(Online_Backup, 'No') AS Online_Backup,
    COALESCE(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    COALESCE(Premium_Support, 'No') AS Premium_Support,
    COALESCE(Streaming_TV, 'No') AS Streaming_TV,
    COALESCE(Streaming_Movies, 'No') AS Streaming_Movies,
    COALESCE(Streaming_Music, 'No') AS Streaming_Music,
    COALESCE(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    COALESCE(Churn_Category, 'Others') AS Churn_Category,
    COALESCE(Churn_Reason, 'Others') AS Churn_Reason
INTO Prodchurn
FROM Customer_Data;

CREATE VIEW VW_churndate as 
select * from prodchurn where customer_status in ('Churned','Stayed')

CREATE VIEW VW_joindata as 
select * from prodchurn where customer_status = 'Joined'


select * from VW_joindata

-- 1. OVERALL CHURN SUMMARY
-- =====================================================
SELECT 
    COUNT(*) as Total_Customers,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Total_Churn,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate,
    SUM(CASE WHEN Customer_Status = 'Joined' THEN 1 ELSE 0 END) as New_Joiners
FROM Customer_Data;


-- 2. CHURN BY GENDER

SELECT 
    Gender,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / 
          (SELECT COUNT(*) FROM Customer_Data WHERE Customer_Status = 'Churned'), 2) as Pct_of_Churn
FROM Customer_Data
GROUP BY Gender;

-- 3. CHURN BY AGE GROUP

SELECT 
    CASE 
        WHEN Age < 20 THEN '< 20'
        WHEN Age BETWEEN 20 AND 35 THEN '20-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '> 50'
    END as Age_Group,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Age_Group
ORDER BY Age_Group;


-- 4. TOP 5 STATES BY CHURN RATE

SELECT 
    State,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY State
HAVING COUNT(*) >= 30
ORDER BY Churn_Rate DESC
LIMIT 5;

-- 5. CHURN BY CONTRACT TYPE
-- =====================================================
SELECT 
    Contract,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Contract
ORDER BY Churn_Rate DESC;


-- =====================================================
-- 6. CHURN BY PAYMENT METHOD
-- =====================================================
SELECT 
    Payment_Method,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Payment_Method
ORDER BY Churn_Rate DESC;


-- =====================================================
-- 7. CHURN BY INTERNET TYPE
-- =====================================================
SELECT 
    Internet_Type,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
WHERE Internet_Type != 'None'
GROUP BY Internet_Type
ORDER BY Churn_Rate DESC;


-- =====================================================
-- 8. CHURN BY TENURE GROUP
-- =====================================================
SELECT 
    CASE 
        WHEN Tenure_in_Months < 6 THEN '< 6 Months'
        WHEN Tenure_in_Months BETWEEN 6 AND 12 THEN '6-12 Months'
        WHEN Tenure_in_Months BETWEEN 13 AND 18 THEN '12-18 Months'
        WHEN Tenure_in_Months BETWEEN 19 AND 24 THEN '18-24 Months'
        ELSE '>= 24 Months'
    END as Tenure_Group,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Tenure_Group
ORDER BY Tenure_Group;


-- =====================================================
-- 9. CHURN CATEGORY BREAKDOWN
-- =====================================================
SELECT 
    Churn_Category,
    COUNT(*) as Churned_Count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Customer_Data WHERE Customer_Status = 'Churned'), 2) as Pct
FROM Customer_Data
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Category
ORDER BY Churned_Count DESC;


-- =====================================================
-- 10. TOP CHURN REASONS
-- =====================================================
SELECT 
    Churn_Category,
    Churn_Reason,
    COUNT(*) as Count
FROM Customer_Data
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Category, Churn_Reason
ORDER BY Count DESC
LIMIT 10;


-- =====================================================
-- 11. SERVICES VS CHURN - ALL SERVICES
-- =====================================================
SELECT 
    'Online Security' as Service,
    Online_Security as Has_Service,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Online_Security

UNION ALL

SELECT 
    'Device Protection',
    Device_Protection_Plan,
    COUNT(*),
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END),
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM Customer_Data
GROUP BY Device_Protection_Plan

UNION ALL

SELECT 
    'Premium Support',
    Premium_Support,
    COUNT(*),
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END),
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
FROM Customer_Data
GROUP BY Premium_Support

ORDER BY Service, Has_Service;


-- =====================================================
-- 12. REVENUE LOST FROM CHURN
-- =====================================================
SELECT 
    COUNT(*) as Churned_Customers,
    ROUND(SUM(Monthly_Charge), 2) as Monthly_Revenue_Lost,
    ROUND(SUM(Total_Revenue), 2) as Total_Revenue_Lost,
    ROUND(AVG(Monthly_Charge), 2) as Avg_Monthly_Lost
FROM Customer_Data
WHERE Customer_Status = 'Churned';


-- =====================================================
-- 13. CUSTOMER VALUE BY STATUS
-- =====================================================
SELECT 
    Customer_Status,
    COUNT(*) as Count,
    ROUND(AVG(Total_Revenue), 2) as Avg_Revenue,
    ROUND(AVG(Tenure_in_Months), 2) as Avg_Tenure,
    ROUND(AVG(Monthly_Charge), 2) as Avg_Monthly
FROM Customer_Data
GROUP BY Customer_Status;


-- =====================================================
-- 14. HIGH RISK CUSTOMERS (NOT CHURNED YET)
-- =====================================================
SELECT 
    Customer_ID,
    Gender,
    Age,
    Contract,
    Payment_Method,
    Tenure_in_Months,
    Monthly_Charge,
    (CASE WHEN Contract = 'Month-to-Month' THEN 1 ELSE 0 END +
     CASE WHEN Payment_Method IN ('Mailed Check', 'Bank Withdrawal') THEN 1 ELSE 0 END +
     CASE WHEN Tenure_in_Months < 12 THEN 1 ELSE 0 END +
     CASE WHEN Internet_Type = 'Fiber Optic' THEN 1 ELSE 0 END +
     CASE WHEN Online_Security = 'No' THEN 1 ELSE 0 END) as Risk_Score
FROM Customer_Data
WHERE Customer_Status = 'Stayed'
HAVING Risk_Score >= 3
ORDER BY Risk_Score DESC, Monthly_Charge DESC
LIMIT 100;


-- =====================================================
-- 15. NUMBER OF SERVICES VS CHURN
-- =====================================================
SELECT 
    (CASE WHEN Phone_Service = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Internet_Service = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Online_Security = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Online_Backup = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Device_Protection_Plan = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Premium_Support = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Streaming_TV = 'Yes' THEN 1 ELSE 0 END +
     CASE WHEN Streaming_Movies = 'Yes' THEN 1 ELSE 0 END) as Service_Count,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Service_Count
ORDER BY Service_Count;


-- =====================================================
-- 16. REFERRALS VS CHURN
-- =====================================================
SELECT 
    CASE 
        WHEN Number_of_Referrals = 0 THEN '0 Referrals'
        WHEN Number_of_Referrals BETWEEN 1 AND 2 THEN '1-2 Referrals'
        WHEN Number_of_Referrals BETWEEN 3 AND 4 THEN '3-4 Referrals'
        ELSE '5+ Referrals'
    END as Referral_Group,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Referral_Group
ORDER BY Referral_Group;


-- =====================================================
-- 17. MONTHLY CHARGE RANGES VS CHURN
-- =====================================================
SELECT 
    CASE 
        WHEN Monthly_Charge < 30 THEN 'Under $30'
        WHEN Monthly_Charge BETWEEN 30 AND 60 THEN '$30-$60'
        WHEN Monthly_Charge BETWEEN 61 AND 90 THEN '$61-$90'
        ELSE 'Over $90'
    END as Charge_Range,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Charge_Range
ORDER BY Charge_Range;


-- =====================================================
-- 18. MARRIED VS SINGLE CHURN
-- =====================================================
SELECT 
    Married,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Married;


-- =====================================================
-- 19. PAPERLESS BILLING VS CHURN
-- =====================================================
SELECT 
    Paperless_Billing,
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
GROUP BY Paperless_Billing;


-- =====================================================
-- 20. EXECUTIVE DASHBOARD - ALL METRICS
-- =====================================================
SELECT 
    COUNT(*) as Total_Customers,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    SUM(CASE WHEN Customer_Status = 'Stayed' THEN 1 ELSE 0 END) as Retained,
    SUM(CASE WHEN Customer_Status = 'Joined' THEN 1 ELSE 0 END) as New_Joiners,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate,
    ROUND(SUM(Total_Revenue), 2) as Total_Revenue,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN Total_Revenue ELSE 0 END), 2) as Revenue_Lost,
    ROUND(AVG(Monthly_Charge), 2) as Avg_Monthly_Charge
FROM Customer_Data;


-- =====================================================
-- 21. USING VIEW - CHURN VS STAYED
-- =====================================================
SELECT 
    Customer_Status,
    COUNT(*) as Count,
    ROUND(AVG(Tenure_in_Months), 2) as Avg_Tenure,
    ROUND(AVG(Monthly_Charge), 2) as Avg_Monthly,
    ROUND(SUM(Total_Revenue), 2) as Total_Revenue
FROM VW_churndate
GROUP BY Customer_Status;


-- =====================================================
-- 22. NEW JOINERS PROFILE
-- =====================================================
SELECT 
    COUNT(*) as Total_Joiners,
    ROUND(AVG(Age), 2) as Avg_Age,
    ROUND(AVG(Monthly_Charge), 2) as Avg_Monthly,
    COUNT(CASE WHEN Contract = 'Month-to-Month' THEN 1 END) as MTM_Contracts,
    COUNT(CASE WHEN Gender = 'Male' THEN 1 END) as Male_Count,
    COUNT(CASE WHEN Gender = 'Female' THEN 1 END) as Female_Count
FROM VW_joindata;


-- =====================================================
-- 23. CUSTOMERS WITH NO EXTRA SERVICES
-- =====================================================
SELECT 
    COUNT(*) as Total,
    SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) as Churned,
    ROUND(SUM(CASE WHEN Customer_Status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as Churn_Rate
FROM Customer_Data
WHERE Online_Security = 'No' 
  AND Online_Backup = 'No'
  AND Device_Protection_Plan = 'No'
  AND Premium_Support = 'No';


-- =====================================================
-- 24. AVERAGE TENURE BY CONTRACT AND CHURN STATUS
-- =====================================================
SELECT 
    Contract,
    Customer_Status,
    COUNT(*) as Count,
    ROUND(AVG(Tenure_in_Months), 2) as Avg_Tenure,
    ROUND(AVG(Monthly_Charge), 2) as Avg_Monthly
FROM Customer_Data
GROUP BY Contract, Customer_Status
ORDER BY Contract, Customer_Status;


-- =====================================================
-- 25. CUSTOMERS WHO CHURNED IN FIRST 6 MONTHS
-- =====================================================
SELECT 
    COUNT(*) as Early_Churners,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Customer_Data WHERE Customer_Status = 'Churned'), 2) as Pct_of_Total_Churn,
    ROUND(AVG(Monthly_Charge), 2) as Avg_Monthly,
    Churn_Category,
    COUNT(*) as Count_by_Category
FROM Customer_Data
WHERE Customer_Status = 'Churned' AND Tenure_in_Months <= 6
GROUP BY Churn_Category
ORDER BY Count_by_Category DESC;


























