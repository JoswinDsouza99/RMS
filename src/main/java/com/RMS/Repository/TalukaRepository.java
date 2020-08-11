package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.StateMaster;
import com.RMS.Bean.TalukaMaster;

@Transactional
public interface TalukaRepository extends CrudRepository<TalukaMaster, Integer> {

	@Query("from TalukaMaster where deleted='N'")
	List<TalukaMaster> getAllTalukaList();
	
	@Query("from TalukaMaster where taluka_id = :taluka_id and deleted='N'")
	TalukaMaster getTalukaById(@Param("taluka_id") Integer taluka_id);
	
}
