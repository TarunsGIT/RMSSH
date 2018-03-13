package in.co.mss.rmssh.exception;

/**
 * ApplicationException is propogated from Service classes when an business
 * logic exception occurered.
 * 
 * @author Session Facade
 * @version 1.0
 *
 * 
 */

public class ApplicationException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ApplicationException(String msg) {
		super(msg);
	}

}
