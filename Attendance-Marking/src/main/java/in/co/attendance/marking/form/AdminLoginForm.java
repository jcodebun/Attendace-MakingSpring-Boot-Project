package in.co.attendance.marking.form;

import javax.validation.constraints.NotEmpty;

import org.springframework.util.unit.DataUnit;

import in.co.attendance.marking.dto.AdminDTO;
import in.co.attendance.marking.dto.BaseDTO;
import in.co.attendance.marking.dto.UserDTO;
import in.co.attendance.marking.util.DataUtility;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminLoginForm extends BaseForm {

	@NotEmpty(message = "Admin Id is required")
	private String adminId;
	@NotEmpty(message = "Password is required")
	private String password;
	

	@Override
	public BaseDTO getDTO() {
		AdminDTO bean=new AdminDTO();
		bean.setAdminId(DataUtility.getLong(adminId));
		bean.setPassword(password);
		return bean;
	}

	@Override
	public void populate(BaseDTO bdto) {
		AdminDTO entity=(AdminDTO) bdto;
		adminId=String.valueOf(entity.getAdminId());
		password=entity.getPassword();
	}

}
