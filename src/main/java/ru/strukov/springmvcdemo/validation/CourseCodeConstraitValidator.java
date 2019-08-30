package ru.strukov.springmvcdemo.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 * Created by Roman Strukov on 23.04.19.
 */

public class CourseCodeConstraitValidator implements ConstraintValidator<CourseCode, String> {
    private String coursePrefix;

    @Override
    public void initialize(CourseCode courseCode) {
        coursePrefix = courseCode.value();
    }

    @Override
    public boolean isValid(String code, ConstraintValidatorContext constraintValidatorContext) {
        boolean result;
        if (code != null)
            result = code.startsWith(coursePrefix);
        else
            result = true;

        return result;
    }
}
