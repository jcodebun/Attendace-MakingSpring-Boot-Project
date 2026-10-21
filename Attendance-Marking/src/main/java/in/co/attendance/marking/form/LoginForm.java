package in.co.attendance.marking.form;

import javax.validation.constraints.NotEmpty;

import org.springframework.util.unit.DataUnit;

import in.co.attendance.marking.dto.BaseDTO;
import in.co.attendance.marking.dto.UserDTO;
import in.co.attendance.marking.util.DataUtility;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginForm extends BaseForm {

	@NotEmpty(message = "User Id is required")
	private String userId;
	@NotEmpty(message = "Password is required")
	private String password;
	

	@Override
	public BaseDTO getDTO() {
		UserDTO bean=new UserDTO();
		bean.setUserId(DataUtility.getLong(userId));
		bean.setPassword(password);
		return bean;
	}

	@Override
	public void populate(BaseDTO bdto) {
		UserDTO entity=(UserDTO) bdto;
		userId=String.valueOf(entity.getUserId());
		password=entity.getPassword();
	}

}
