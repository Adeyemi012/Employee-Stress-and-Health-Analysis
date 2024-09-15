-- Column Renaming
Exec sp_rename 'Stress_levels.id', 'ID'
Exec sp_rename 'Stress_levels.first_name', 'First Name'
Exec sp_rename 'Stress_levels.last_name', 'Last Name'
Exec sp_rename 'Stress_levels.gender', 'Gender'
Exec sp_rename 'Stress_levels.dob', 'Date of Birth'
Exec sp_rename 'Stress_levels.test_date', 'Test Date'
Exec sp_rename 'Stress_levels.test_time', 'Test Time'
Exec sp_rename 'Stress_levels.stress_source', 'Stress Source'
Exec sp_rename 'Stress_levels.physical_symptoms', 'Physical Symptoms'
Exec sp_rename 'Stress_levels.emotional_symptoms', 'Emotional Symptoms'
Exec sp_rename 'Stress_levels.coping_mechanism', 'Coping Mechanism'
Exec sp_rename 'Stress_levels.stress_duration', 'Stress Duration (In Days)'
Exec sp_rename 'Stress_levels.severity', 'Severity'
Exec sp_rename 'Stress_levels.sleep_quality', 'Sleep Quality'
Exec sp_rename 'Stress_levels.mood', 'Mood'
Exec sp_rename 'Stress_levels.heart_rate', 'Heart Rate'
Exec sp_rename 'Stress_levels.cortisol_level', 'Cortisol Level'
Exec sp_rename 'Stress_levels.stress_level_score', 'Stress Level Score'

-- Renaming the Gender (M) to Male and (F) to Female
Update Stress_levels
Set Gender = Case
When Gender = 'M' Then 'Male'
When Gender = 'F' Then 'Female'
End

-- Renaming Stomach Age to Stomach Ache
Update "Stress_levels"
Set [Physical Symptoms] = 'Stomach Ache'
Where [Physical Symptoms] = 'Stomach Age' 

-- Removal of duplicates
With Duplicates As (
Select *, Row_Number() over (Partition by ID,[First Name],[Last Name] ,Gender ,"Date of Birth" ,"Test Date"
,[Test Time],[Stress Source] ,[Physical Symptoms],[Emotional Symptoms],[Coping Mechanism],[Stress Duration (In Days)]
,[Severity],[Sleep Quality],[Mood],[Heart Rate],[Cortisol Level],[Stress Level Score]
order by (Select Null)) As RowNum 
From Stress_levels)
Delete From Duplicates 
Where RowNum > 1

--Updated an Employee Stress Level Score from Null to Average
Update Stress_levels
Set [Stress Level Score] = (Select Avg([Stress Level Score]) From Stress_levels)
Where ID = 'FSXMV4'

-- Removal of Null Values which are duplicates
Delete From Stress_levels
Where ID is null or [First Name]is null or [Last Name] is null or Gender is null or "Date of Birth" is null or
"Test Date" is null or [Test Time] is null or [Stress Source]is null or [Physical Symptoms]is null or 
[Emotional Symptoms] is null or [Coping Mechanism] is null or [Stress Duration (In Days)] is null or
[Severity] is null or [Sleep Quality] is null or [Mood] is null or [Heart Rate] is null or [Cortisol Level] is null or
[Stress Level Score]is null

-- Concatenation of Last Name and First Name to Full Name
Create View "Stress Level" AS 
Select ID, Concat("Last Name",' ',"First Name") As "Full Name" ,Gender ,"Date of Birth" ,"Test Date"
,[Test Time],[Stress Source] ,[Physical Symptoms],[Emotional Symptoms],[Coping Mechanism],[Stress Duration (In Days)]
,[Severity],[Sleep Quality],[Mood],[Heart Rate],[Cortisol Level],[Stress Level Score]
From Stress_levels

-- Addition of Age, Age Group, Stress Duration(In Months)
Alter View "Stress Level" AS 
Select ID, Concat("Last Name",' ',"First Name") As "Full Name" ,Gender ,"Date of Birth" ,"Test Date",[Test Time],
Datediff(Year, "Date of Birth", "Test Date") - Case
When Dateadd(Year, Datediff(Year, "Date of Birth", "Test Date"),
"Date of Birth")> "Test Date"
Then 1
Else 0
End as Age,
Case 
when Datediff(Year, "Date of Birth", "Test Date") - Case
When Dateadd(Year, Datediff(Year, "Date of Birth", "Test Date"),
"Date of Birth")> "Test Date"
Then 1
Else 0
End Between 17 and 25 Then '17 - 25'
when Datediff(Year, "Date of Birth", "Test Date") - Case
When Dateadd(Year, Datediff(Year, "Date of Birth", "Test Date"),
"Date of Birth")> "Test Date"
Then 1
Else 0
End Between 26 and 35 Then '26 - 35'
when Datediff(Year, "Date of Birth", "Test Date") - Case
When Dateadd(Year, Datediff(Year, "Date of Birth", "Test Date"),
"Date of Birth")> "Test Date"
Then 1
Else 0
End Between 36 and 45 Then '36 - 45'
when Datediff(Year, "Date of Birth", "Test Date") - Case
When Dateadd(Year, Datediff(Year, "Date of Birth", "Test Date"),
"Date of Birth")> "Test Date"
Then 1
Else 0
End Between 46 and 55 Then '46 - 55'
when Datediff(Year, "Date of Birth", "Test Date") - Case
When Dateadd(Year, Datediff(Year, "Date of Birth", "Test Date"),
"Date of Birth")> "Test Date"
Then 1
Else 0
End Between 56 and 65 Then '56 - 65'
when Datediff(Year, "Date of Birth", "Test Date") - Case
When Dateadd(Year, Datediff(Year, "Date of Birth", "Test Date"),
"Date of Birth")> "Test Date"
Then 1
Else 0
End Between 66 and 75 Then '66 - 75'
when Datediff(Year, "Date of Birth", "Test Date") - Case
When Dateadd(Year, Datediff(Year, "Date of Birth", "Test Date"),
"Date of Birth")> "Test Date"
Then 1
Else 0
End Between 76 and 79 Then '76 - 79'
End as "Age Group",
[Stress Source] ,[Physical Symptoms],[Emotional Symptoms],[Coping Mechanism],[Stress Duration (In Days)], 
Case When [Stress Duration (In Days)] <= 91 Then '0 - 3 Months'
When [Stress Duration (In Days)] <= 182 Then '4 - 6 Months'
Else 'Beyond Months'
End as [Stress Duration (In Months)]
,[Severity],[Sleep Quality],[Mood],[Heart Rate],[Cortisol Level], "Stress Level Score"
From Stress_levels
