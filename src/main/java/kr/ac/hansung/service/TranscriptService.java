package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.TranscriptDAO;
import kr.ac.hansung.model.Transcript;

@Service
public class TranscriptService {

	@Autowired
	private TranscriptDAO transcriptDao;

	public List<Transcript> getCurrent() {
		return transcriptDao.getTranscripts();
	}
	
	public List<Transcript> getTranscriptsYearSemester(){
		return transcriptDao.getTranscriptsYearSemester();
	}
	
	public void insert(Transcript transcript) {
		transcriptDao.insert(transcript);
	}
	
	public List<Transcript> getTranscript(int year,int semester){
		return transcriptDao.getTranscript(year,semester);
	}
}
