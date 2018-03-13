package in.co.mss.rmssh.validator;

import in.co.mss.rmssh.dto.MarksheetDTO;
import in.co.mss.rmssh.form.MarksheetForm;
import in.co.mss.rmssh.util.DataValidator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class MarksheetValidator implements Validator {

	public boolean supports(Class marksheet) {

		return MarksheetDTO.class.isAssignableFrom(marksheet);
	}

	public void validate(Object target, Errors errors) {

		MarksheetForm marksheet = (MarksheetForm) target;

		if (!DataValidator.isNull(marksheet.getRollNo())) {
			if (!DataValidator.isAlphaNumeric(marksheet.getRollNo())) {

				errors.rejectValue("rollNo", "rollNo.alpha");

			}
		}

	}

}
