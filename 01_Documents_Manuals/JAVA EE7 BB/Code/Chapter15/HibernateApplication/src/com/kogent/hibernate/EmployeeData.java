package com.kogent.hibernate;
import java.util.ArrayList;
import java.util.Iterator;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.Query;
import org.hibernate.cfg.Configuration;
import com.kogent.hibernate.Employee;
public class EmployeeData
{
	public static Employee getEmployee(String employeeId) throws Exception
	{
		Session session = null;
		Employee employee=null;
		try
		{
			// This step will read hibernate.cfg.xml 
			//and prepare hibernate for use
			SessionFactory sessionFactory = new 
			Configuration().configure().buildSessionFactory();
			session =sessionFactory.openSession();
			//Create new instance of Employee and set 
			//values in it by reading them from form object
			Transaction tx = session.beginTransaction();
			System.out.println("Getting Record");
			employee = new Employee();
			tx.commit();
			System.out.println("Done");
		Query query = session.createQuery("select employee1.employeeId, employee1.name,	employee1.age, employee1.salary from Employee employee1 where employeeId ='"+employeeId +"'");
			for(Iterator it=query.iterate();;)
			{
				Object[] row = (Object[]) it.next();
				employee.setEmployeeId((int) new Integer(row[0].toString()));
				employee.setName((String) row[1]);
				employee.setAge((int) new Integer(row[2].toString()));
				employee.setSalary((Double) row[3]);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		finally
		{
			session.flush();
			session.close();
		}
		return employee;
	}
	// method to read employee of CRUD operation
	public static ArrayList getEmployees()
	{
		Session session = null;
		Employee employee=null;
		ArrayList<Employee> employees = new ArrayList<Employee>();
		try
		{
			// This step will read hibernate.cfg.xml 
			//and prepare hibernate for use
			SessionFactory sessionFactory = new 
			Configuration().configure().buildSessionFactory();
			session =sessionFactory.openSession();
Query query = session.createQuery("select employee1.employeeId, employee1.name, employee1.age, employee1.salary from Employee employee1");
			for(Iterator it=query.iterate();it.hasNext();)
			{
				employee = new Employee();
				Object[] row = (Object[]) it.next();
				
				employee.setEmployeeId((int) new Integer(row[0].toString()));
				employee.setName((String) row[1]);
				employee.setAge((int) new Integer(row[2].toString()));
				employee.setSalary((Double) row[3]);
				employees.add(employee);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		finally
		{
			session.flush();
			session.close();
		}
		return employees;
	}
	// method to create employee of CRUD operation
	public void addEmployee(Employee emp) throws Exception
	{
		Employee employee = null;
		Session session = null;
		try
		{	
			// This step will read hibernate.cfg.xml 
			//and prepare hibernate for use
			SessionFactory sessionFactory = new 
			Configuration().configure().buildSessionFactory();
			session =sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			System.out.println("Selecting Record");
			employee = new Employee();
			employee.setEmployeeId(emp.getEmployeeId());
			employee.setName(emp.getName());
			employee.setAge(emp.getAge());
			employee.setSalary(emp.getSalary());
			session.save(employee);
			tx.commit();
			System.out.println("Done");
		System.out.println("Employee fffId Name Age Salary");
		} 
		catch(Exception e)
		{
		System.out.println("Exception caught in EmployeeData.addEmployee" + e);
		}
	}
	// method to delete employee of CRUD operation
	public static void deleteEmployee(String employeeId) throws Exception
	{
		Session session = null;
		try
		{	
			// This step will read hibernate.cfg.xml 
			//and prepare hibernate for use
			SessionFactory sessionFactory = new 
			Configuration().configure().buildSessionFactory();
			session =sessionFactory.openSession();
   String hqlDelete ="delete Employee employee where employeeId='" + employeeId + "'";
			Transaction tx = session.beginTransaction();
			System.out.println("Deleting Record");
			Query query = session.createQuery(hqlDelete);
			int row = query.executeUpdate();
			System.out.println("Number of rolw deleted " + row);
			tx.commit();
			System.out.println("Done");
		} 
		catch(Exception e)
		{
   System.out.println("Exception caught in EmployeeData.deleteEmployee" + e);
		}
	}
	// method to edit employee of CRUD operation
	public void editEmployee(Employee emp) throws Exception
	{
		Session session = null;
		try
		{	
			// This step will read hibernate.cfg.xml 
			//and prepare hibernate for use
			SessionFactory sessionFactory = new 
			Configuration().configure().buildSessionFactory();
			session =sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			System.out.println("Updating Record...");
			String hqlUpdate = "update Employee employee set name = :newName, age =:newAge, salary = :newSalary where employeeId = :NewEmployeeId";
			Query query = session.createQuery(hqlUpdate);
			query.setInteger("NewEmployeeId", emp.getEmployeeId());
			query.setString("newName", emp.getName());
			query.setInteger("newAge", emp.getAge());
			query.setDouble("newSalary", emp.getSalary());
			int rowCount = query.executeUpdate();
			System.out.println("Rows affected: " + rowCount);
			tx.commit();
			System.out.println("Done");
		} 
		catch(Exception e)
		{
		System.out.println("Exception caught in EmployeeData.EditEmployee " + e);
		}
	}
}
