---
sidebar_position: 1
---

# Introduction
inoERP is an open source **[OneApp](https://docs.rikdata.com)** (GoLang back-end & Flutter front-end) based enterprise management system. The ERP systems contain all the required modules for running any small to midsize businesses. The features are very similar to Oracle R12/ Cloud Application and SAP ECC/Hana S/4. It also contains a lightweight CMS which seamlessly integrates with the ERP

## Why inoERP
The idea behind inoERP is to provide a dynamic pull-based system where the demand /supply changes frequently and traditional planning systems (such as MRP or Kanban) are incompetent to provide a good inventory turn.

## What is Dynamic pull System
Dynamic pull system is an advanced version of pull system which encompasses the best feature of traditional pull system & MRP. The major disadvantage of traditional Kanban system is the fixed Kanban size and requirement of at least 2 bins for full operation. In the event of sudden demand decrease, Kanban system can result in extra inventory and the value of unused inventory can go up to 2 bin size. Similarly, In case of unexpected demand increasing, it can result in line down and the issue will be severe if the lead times are not short.

Dynamic pull system overcomes this issue by recalculating the bucket size (Kanban size/lot size) before creating any supply (requisitions/purchase order/work order). Each time a new supply is created, system automatically decides the best supply size as per the existing actual demand.

## Modules
------------

Below are the fully functional ERP Modules available in inoERP

###  General Ledger (GL)
A multi segment chart of account structure to represent all the segments of a business.
      Ex : 001-100-1020202-0100-100
      Where 001 – Represents a specific company / business unit /legal entity
      100 – Represents a cost center
      1020202 – a Natural account such as Asset, Liability, Expense, Income or Owners Equity

2.	Calendars 
Define as many different financial calendars as required
Ex : One calendar INO_CORP for Corporate and INO_USA, INO_UK for specific countries
3.	Account Combinations
4.	Currency & Conversions
5.	Ledger :  A set of calendar, currency and accounts
6.	Banks
7.	Journal 


###  Accounts Payable(AP)
1.	Suppliers
2.	AP Transactions
 -  2.1	Invoices
 -  2.2	Debit Memo
 -  2.3	Credit Memo
3.	PO/Transaction Matching 
4.  Multi select matching
5.	AP Payments
 -  5.1	Single Invoice Payment
 -  5.2	Multi select Payment
6.	Transfer Journals to GL

###  Accounts Receivable(AR)
1.	Customer
2.	AR Transactions
 -  2.1	Invoices
 -  2.2	Debit Memo
 -  2.3	Credit Memo
 -  2.4	Deposit
 -  2.5	Guarantee
 -  2.6	Charge Back
3.	AR Payments
 -  3.1	Single Invoice Payment
 -  3.2	Multi select Payment
4. Transfer Journals to GL

### Organizations(ORG)
1.	Enterprise Org
2.	Legal Org
3.	Business Org
4.	Inventory Org
5	Address

### Inventory (INV)
1.	Item Master
2.	Unit of Measure
3.	Sub inventory
4.	Locator
5.	Inventory Transactions
6.	Material Receipts
	 * PO Receipt  
	 * IR Receipt  
	 * RMA Receipt  
7.	Onhand Value
8.	Cycle Count
	* Cycle Count Adjustment
	* Cycle Count Approval 
9.	ABC Analysis

### Purchasing (PO)
1.	Purchase Order
	* Standard
	* Blanket Agreement
	* Planned PO
2.	Requisitions
	* External
	* Internal

3.	RFQ / Quote
4. Approval for PO, Requisition

### Sales & Distributions (SD)
1.	Sales Order - Creation & Auto Booking
2.	Sales Picking
3.	Delivery & Shipment
4.  Auto AR Invoice

### Bills Of Material (BOM)
1.	Departments
2.	Resources
3.	Routing
4.	BOM
5.	Super BOM

### Costing (CST)
1.	Material Element
2.	Material OH 
3.	Overhead
4.	Resources
5.	Standard Cost
6.	Cost Roll Up
7.	Cost Update

### Work in Process (WIP)
1.	Work Order 
2.	WIP Move Transactions
3.	WIP Resource Transactions
4.	WIP Material Transaction
5.	WO Completion/Return

### Supply Chain Planning (SCP)
1.	Forecast
2.	MDS
3.	MRP
4.	Min-Max Planning
	* Multi Bin Min Max
	
### Human Resource (HR)
1.	Employee
	* Education
	* Experience
	* Planned PO
2.	Job
3.	Position
4.  Compensation & Payroll
4.  Leave System
4.  Approval Hierarchy
	
### Basic Features
1.	 Options
2.	 Value Groups
3.	 Transaction Types
4.	 Custom Reporting
5.	 Search
5.	 Multi Select
6.	 Mass Upload	

### Below are the functionalities available in CMS
1.	User 
2.	Blocks
3.	Contents 
	* 3.1	Documents
	* 3.2	Forums
	* 3.3	Issue Logs
4.	User Roles
5.	Role Based Access Control
6.	Content Types – To create custom content types
