package com.kogent.hibernate;
import java.io.Serializable;
public abstract class AbstractEmployeedata 
implements Serializable
{
/** The cached hash code value for this instance. Settting to 0 triggers re-			calculation. */
	private int hashValue = 0;
	
	/** The composite primary key value. */
	private java.lang.Integer EmployeeId;

	/** The value of the simple EmployeeName property. */
	private java.lang.String EmployeeName;

	/** The value of the simple EmployeeTitle property. */
	private java.lang.String EmployeeTitle;

	/**
	* Simple constructor of AbstractEmployeedata instances.
	*/
	public AbstractEmployeedata()
	{
	}
	
	/**
	* Constructor of AbstractEmployeedata instances given a simple primary key.
	* @param EmployeeId
	*/
	public AbstractEmployeedata(java.lang.Integer EmployeeId)
	{
		this.setEmployeeId(EmployeeId);
	}

	/**
	* Return the simple primary key value that identifies this object.
	* @return java.lang.Integer
	*/


	public java.lang.Integer getEmployeeId()
	{
		return EmployeeId;
	}
	
	/**
	* Set the simple primary key value that identifies this object.
	* @param EmployeeId
	*/
	public void setEmployeeId(java.lang.Integer EmployeeId)
	{
	this.hashValue = 0;
	this.EmployeeId = EmployeeId;
	}
	
	/**
	* Return the value of the Employee_name column.
	* @return java.lang.String
	*/
	public java.lang.String getEmployeeName()
	{
		return this.EmployeeName;
	}

	/**
	* Set the value of the Employee_name column.
	* @param EmployeeName
	*/
	public void setEmployeeName(java.lang.String EmployeeName)
	{
		this.EmployeeName = EmployeeName;
	}

	/**
	* Return the value of the Employee_title column.
	* @return java.lang.String
	*/
	public java.lang.String getEmployeeTitle()
	{
		return this.EmployeeTitle;
	}
	
	/**
	* Set the value of the Employee_title column.
	* @param EmployeeTitle
	*/
	public void setEmployeeTitle(java.lang.String EmployeeTitle)
	{
		this.EmployeeTitle = EmployeeTitle;
	}

	/**
	* Implementation of the equals comparison on the basis of equality of the 			primary key values.
	* @param rhs

	* @return boolean
	*/
	public boolean equals(Object rhs)
	{
		if (rhs == null)
			return false;
		if (! (rhs instanceof Employeedata))
			return false;
		Employeedata that = (Employeedata) rhs;
		if (this.getEmployeeId() != null && that.getEmployeeId() != null)
		{
			if (! this.getEmployeeId().equals(that.getEmployeeId())) {
				return false;
			}
		}
		return true;
	}

	public int hashCode() {
		if (this.hashValue == 0) {
			int result = 17;
			int EmployeeIdValue = this.getEmployeeId() == null ? 0 : 					 this.getEmployeeId().hashCode();
			result = result * 37 + EmployeeIdValue;
			this.hashValue = result;
		}
		return this.hashValue;
	}
}
