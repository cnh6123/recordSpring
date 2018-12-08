package kr.ac.hansung.model;

import javax.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString

public class Transcript {
	private int id;
	private int year;
	private int semester;
	@NotEmpty(message="The transcript cord cannot be empty")
	private String cord;
	@NotEmpty(message="The transcript course name cannot be empty")
	private String name;
	@NotEmpty(message="The transcript course type cannot be empty")
	private String type;
	private int score;
	private int scoreSum;
}
