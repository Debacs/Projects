--Bayo initiated Database

USE MagnaEngineeringServicesDatabase
GO


--The following are Naeem's Codes to create the Interaction, InteractionType and Workplan Tables


--Create the project interaction table

CREATE TABLE [dbo].[Interaction](
	[InteractionID] [int] NOT NULL,
	[InteractionDescription] [varchar](50) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[InteractionTypeID] [int] NOT NULL,
	[InteractionDate] [date] NOT NULL,
	[WorkplanID] [int] NOT NULL,
	[Workplan] [varchar](50) NOT NULL,
	[Expense] [float] NOT NULL,
	[Follow-upDueDate] [date] NOT NULL,
	[NextStepDeadlineDate] [date] NOT NULL,
	[ActualNextStepDate] [date] NOT NULL,
	[Variance] [varchar](25) NULL,
	[NextStepNotes] [varchar](50) NULL,
	[Approved Budget Amount] [float] NOT NULL,
	[LikelihoodOfProjectApproval] [float] NOT NULL
);



--Create the project interaction type table

CREATE TABLE [dbo].[InteractionType](
	[InteractionTypeID] [int] NOT NULL, 
	[InteractionType] [varchar](25) NULL,
	[Email] [varchar](50) NULL,
	[Phone Call] [varchar](25) NULL,
	[Meeting] [varchar](25) NOT NULL
);



--Create the project Work Plan table

CREATE TABLE [dbo].[WorkPlan](
	[WorkplanID] [int] NOT NULL,
	[FirstContact] [varchar](25) NOT NULL,
	[Submit One-Pager/brochure/engagement brief] [varchar](25) NULL,
	[Video Conference or in-person powerpoint presentation] [varchar](25) NULL,
	[Submission of Workplan/proposal for approval] [varchar](25) NULL,
	[Phone/Email follow-up on Workplan/proposal] [varchar](25) NULL,
	[Contract signed/Authorization to proceed] [varchar](25) NOT NULL
);



 --Create the Project Info table

CREATE TABLE [dbo].[ProjectInfo](
	[ProjectID] [int] NOT NULL,
	[ProjectName] [varchar](50) NULL,
	[ManagerID] [int] NOT NULL,
	[CompanyRepID] [int] NOT NULL,
	[ProjectedProjectBudget] [float] NOT NULL,
	[ApprovedBudgetAmount] [float] NOT NULL,
	[InitialContactDate] [date] NOT NULL,
	[ProjectApprovalDate] [date] NOT NULL,
	[LengthofTimetoAcquireProject] [varchar](25) NULL
);


--The following are Kulwant's Codes to create the ProjectInfo, Manager and BusinessUnit Tables


CREATE TABLE ProjectInfo
 (
  ProjectID NVARCHAR (25)not null Primary Key,
  ProjectName VARCHAR(50)not null,
  ManagerID NVARCHAR (25),
  CompanyRepID NVARCHAR (25),
  ProjectedProjectBudget DECIMAL (10, 4),
  ApprovedBudgetAmount DECIMAL (10, 4),
  InitialContactDate DATE,
  ProjectApprovalDate DATE,
  LengthofTimetoAcquireProject DATE
 );

 CREATE TABLE Manager
 (
  ManagerID NVARCHAR (25) not null PRIMARY KEY,
  MFirstName VARCHAR (50) not null,
  MLastName VARCHAR (50) not null,
  MTitle VARCHAR (100),
  BusinessUnitID NVARCHAR (25)
  );

 CREATE TABLE BusinessUnit
  (
   BusinessUnitID nvarchar(25) not null Primary Key,
   BusinessUnit VARCHAR (25)
   );

 CREATE TABLE CompanyRep
   (
    CompanyRepID NVARCHAR (25) not null Primary Key,
    CRName Varchar (50) not null,
    CompanyID NVARCHAR(50)
   );

 SELECT * FROM ProjectInfo;

 SELECT * FROM Manager;

 SELECT * FROM BusinessUnit;

 ALTER TABLE ProjectInfo
 ADD FOREIGN KEY
   (ManagerID) REFERENCES Manager (ManagerID);

ALTER TABLE ProjectInfo
 ADD FOREIGN KEY
   (CompanyRepID) REFERENCES CompanyRep (CompanyRepID);

ALTER TABLE Manager
 ADD FOREIGN KEY
   (BusinessUnitID) REFERENCES BusinessUnit 


--The following are Manohar's Codes to create the CompanyRep, CompanyInfo and ClientType tables
