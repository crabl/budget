IDENTIFICATION DIVISION.
	PROGRAM-ID. MAIN.

DATA DIVISION.
	WORKING-STORAGE SECTION.
		01 InterestCalculation.
			02 Inputs.
				03 Principal PIC 9(5).
				03 NumberOfYears PIC 9(4).
				03 InterestRate PIC 9(4).
			02 Outputs.
			 	03 SimpleInterest PIC 99999.99.
				03 CompoundInterest PIC 99999.99.

PROCEDURE DIVISION.
	DISPLAY "ENTER PRINCIPAL" .
	ACCEPT Principal.

	DISPLAY "ENTER LOAN TERM (YR) ".
	ACCEPT NumberOfYears.

	DISPLAY "ENTER INTEREST RATE".
	ACCEPT InterestRate.

	DISPLAY "PRINCIPAL AMOUNT = ", Principal.
	DISPLAY "NUMBER OF YEARS = ", NumberOfYears .
	DISPLAY "INTEREST RATE = ", InterestRate.

	COMPUTE SimpleInterest = Principal + ((Principal * NumberOfYears * InterestRate) / 100).
	DISPLAY "SIMPLE INTREST IS ", SimpleInterest.

	COMPUTE CompoundInterest = Principal * (1 + (InterestRate / 100)) ** NumberOfYears.
	DISPLAY "COMPOUND INTREST IS ", CompoundInterest.

	STOP RUN.
