USE [BGA_DEV]
GO

DECLARE	@return_value int

EXEC	@return_value = [GeneralLedger].[usp_Report_All_Analytics_Carryforward]
		@FinancialAccountCodeWildcard = N'100*',
		@ForeignCurrencyID = NULL,
		--SET @AnalyticTypeItems='7032657a-fe32-4fe9-aa21-6a0f315e9e6b,2Clicks Ltd 1';
		@AnalyticTypeItems=NULL,
		@FromDate = '1-1-2018',
		@ToDate = '3-20-2019'
GO
