USE [BGA_DEV]
GO

DECLARE	@FinancialAccountCodeWildcard nvarchar(256),
		@FinancialAccountCodePattern NVARCHAR(255)


SET @FinancialAccountCodeWildcard = N'100*'
SET @FinancialAccountCodePattern = GeneralLedger.ufn_BgaWildcardToSqlStringPattern(@FinancialAccountCodeWildcard);


EXEC	[GeneralLedger].[uspQueryMainAnalyticAccounts] @FinancialAccountCodePattern = @FinancialAccountCodePattern
GO
