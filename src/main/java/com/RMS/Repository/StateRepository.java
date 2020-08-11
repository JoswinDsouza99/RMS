package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.StateMaster;

@Transactional
public interface StateRepository extends CrudRepository<StateMaster, Integer> {

	@Query("from StateMaster where deleted='N'")
	List<StateMaster> getAllStateList();
	
	@Query("from StateMaster where state_id = :state_id and deleted='N'")
	StateMaster getStateById(@Param("state_id") Integer state_id);
}
