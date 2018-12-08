package kr.ac.hansung.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hansung.model.Transcript;
import kr.ac.hansung.service.TranscriptService;

@Controller
public class TranscriptController {
	@Autowired
	private TranscriptService transcriptService;
	
	@RequestMapping("/transcripts")
	public String showTranscripts(Model model) {
		List<Transcript> transcriptsYearSemester = transcriptService.getTranscriptsYearSemester();
		model.addAttribute("transcriptsYearSemester", transcriptsYearSemester);

		return "transcripts";
	}
	
	@RequestMapping("/createtranscript")
	public String createTranscript(Model model) {
		model.addAttribute("transcript", new Transcript());
		
		return "createtranscript";
	}
	
	@RequestMapping("/docreate")
	public String doCreate(Model model, @Valid Transcript transcript, BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("===Form data does not validated===");
			List<ObjectError> errors = result.getAllErrors();
			for(ObjectError error:errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "createtranscript";
		}
		
		transcriptService.insert(transcript);
		
		return "transcriptcreated";
	}
	
	@RequestMapping("/parttranscript")
	public String showTranscript(Model model, @RequestParam("year") int year, @RequestParam("semester") int semester) {
		List<Transcript> partTranscripts = transcriptService.getTranscript(year,semester);
		model.addAttribute("transcripts", partTranscripts);

		return "parttranscript";
	}
}