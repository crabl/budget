IDENTIFICATION DIVISION.
	PROGRAM-ID. MAIN.
	AUTHOR. CRABL.

DATA DIVISION.
	WORKING-STORAGE SECTION.
		01 InterestCalculation.
			02 Inputs.
				03 Principal PIC 9(5).
				03 NumberOfYears PIC 9(4).
				03 InterestRate PIC 9(4).
				03 CalculationMethod PIC X(2).
			02 Outputs.
			 	03 SimpleInterest PIC 999999.99.
				03 CompoundInterest PIC 999999.99.

PROCEDURE DIVISION.
	DISPLAY "Principal Amount: $" WITH NO ADVANCING.
	ACCEPT Principal.

	DISPLAY "Loan Term (years): " WITH NO ADVANCING.
	ACCEPT NumberOfYears.

	DISPLAY "Interest Rate (%): " WITH NO ADVANCING.
	ACCEPT InterestRate.

	DISPLAY "Calculation Method (SI/CO): " WITH NO ADVANCING.
	ACCEPT CalculationMethod.

	EVALUATE CalculationMethod
		WHEN "SI"
			COMPUTE SimpleInterest = Principal + (Principal * NumberOfYears * (InterestRate / 100))
			DISPLAY "SIMPLE INTREST IS ", SimpleInterest
		WHEN "CO"
			COMPUTE CompoundInterest = Principal * (1 + (InterestRate / 100)) ** NumberOfYears
			DISPLAY "COMPOUND INTREST IS ", CompoundInterest
		WHEN OTHER
			DISPLAY "Invalid Calculation Method (must be either SI or CO)"
	END-EVALUATE
	STOP RUN.
