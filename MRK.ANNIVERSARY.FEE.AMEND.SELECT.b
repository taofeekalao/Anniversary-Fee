	$PACKAGE EB.MERAKI
	SUBROUTINE MRK.ANNIVERSARY.FEE.AMEND.SELECT

	*--------------------------------------------------------------
	* 	Activity routine to Update Payment Fee Schedule of A Loan 
	* 	2022-06-10
	*	Taofeek Alao
	*	0 for Retail & 50,000 for Corporate
	*--------------------------------------------------------------

	$INSERT I_COMMON
	$INSERT I_EQUATE
	$INSERT I_AA.LOCAL.COMMON
	$INSERT I_AA.APP.COMMON
	$INSERT I_MRK.ANNIVERSARY.FEE.AMEND
	
	SEL.CMD = "SELECT ":FV.AA.ARRANGEMENT:" WITH PRODUCT.LINE EQ 'LENDING' AND (ARR.STATUS EQ 'AUTH' OR ARR.STATUS EQ 'CURRENT')"
	CALL EB.READLIST(SEL.CMD, SEL.LIST, '', NO.OF.REC, RET.ERR)
	CALL BATCH.BUILD.LIST('', SEL.LIST)

	RETURN
	
END