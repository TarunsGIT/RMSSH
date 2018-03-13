package in.co.mss.rmssh.exception;

/**
 * DatabaseException is Propogated by DAO classes when an Unhandled Database
 * exception occurred
 * 
 * @author Session Facade
 * @version 1.0

 * 
 */

public class DatabaseException extends Exception {

	/**
	 * @param msg
	 *            : Error message
	 */
	public DatabaseException(String msg) {
		super(msg);
	}
}
