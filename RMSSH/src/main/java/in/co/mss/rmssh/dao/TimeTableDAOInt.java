package in.co.mss.rmssh.dao;

import in.co.mss.rmssh.dto.TimeTableDTO;
import in.co.mss.rmssh.exception.ApplicationException;

import java.util.Date;
import java.util.List;

/**
 * Time Table DAO interface.
 * 
 * @author Session Facade
 * @version 1.0
 * 
 */

public interface TimeTableDAOInt {
	/**
	 * Add a Time Table
	 */
	public long add(TimeTableDTO dto);

	/**
	 * Update a Time Table
	 */
	public void update(TimeTableDTO dto);

	/**
	 * Delete a Time Table
	 */
	public void delete(long id);

	/**
	 * Find Time Table by Course,Subject
	 */
	public TimeTableDTO findByCourse(Long courseId, String subject);

	/**
	 * Find Time Table by Examination Date,Course
	 */
	public TimeTableDTO findByExaminationDate(Date examinationDate,
			Long courseId);

	/**
	 * Find Time Table by PK
	 */
	public TimeTableDTO findByPK(long pk);

	/**
	 * Search Role with pagination
	 * 
	 * @return list : List of Time Table
	 * @param dto
	 *            : Search Parameters
	 * @param pageNo
	 *            : Current Page No.
	 * @param pageSize
	 *            : Size of Page
	 * @throws ApplicationException
	 */
	public List search(TimeTableDTO dto, int pageNo, int pageSize);

	/**
	 * Search Time Table
	 * 
	 * @return list : List of Time Table
	 * @param dto
	 *            : Search Parameters
	 * @throws ApplicationException
	 */
	public List search(TimeTableDTO dto);

}
