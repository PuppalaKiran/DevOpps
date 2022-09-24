package com.abc.bank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.abc.bank.authentication.Agent;
import com.abc.bank.authentication.Customer;
import com.abc.bank.authentication.SingletonConnection;

public class AgentDaoImpl {
	
	
	public static Agent checkLogin(String username, String password)  {
		PreparedStatement statement = null;
		Connection connection = null;
		ResultSet resultSet=null;
		Agent agent = new Agent();
		try {
			connection = SingletonConnection.getConnection();
			
			System.out.println("connection created  " + connection);
			statement = connection.prepareStatement("select * from Agent where Agent_Name=?");
			resultSet = statement.executeQuery();
			while(resultSet.next()){
				//Agent agent = new Agent();
				agent.setUsername(resultSet.getString("Agent_Name"));
				agent.setPassword(resultSet.getString("Agent_PASSWORD"));	
				agent.add(agent);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(statement!=null){
				try {
					statement.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return agent;
}

	public static List<Agent> getAgent(Agent agent){
		PreparedStatement statement = null;
		Connection connection = null;
		ResultSet resultSet=null;
		List<Agent> agent1 = new ArrayList<>();
		try {
			connection = SingletonConnection.getConnection();
			
			System.out.println("connection created  " + connection);
			statement = connection.prepareStatement("select * from Agent where Agent_Name=?");
			//statement.setInt(1, agent.getAgentId());
			resultSet = statement.executeQuery();
			while(resultSet.next()){
				//Agent agent = new Agent();
				agent.setUsername(resultSet.getString("Agent_Name"));
				agent.setPassword(resultSet.getString("Agent_PASSWORD"));	
				agent.add(agent);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(statement!=null){
				try {
					statement.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return agent1;
			
	}
	
	public static Boolean addCustomerdetails(Customer customer) {
		PreparedStatement statement = null;
		Connection connection = null;
		boolean flag=false;

		try {
			connection = SingletonConnection.getConnection();
			System.out.println("connection created  " + connection);

			statement = connection
					.prepareStatement("insert into customerkyc values(?,?,?,?,?,?)");
			statement.setInt(1, customer.getCustId());
			statement.setString(2, customer.getCustName());
			statement.setInt(3, customer.getMobile());
			statement.setString(4, customer.getEmail());
			statement.setInt(5, customer.getAadhar());			
			statement.setString(6, customer.getCustLocation());
			flag=statement.execute();
			System.out.println( flag);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(statement!=null){
				try {
					statement.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return flag;
	}

	public static Agent validateAgent(String userName, String passWord) {
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		Connection connection = null;
		Agent agent = null;

		System.out.println("IN IMPL VALIDATION....");
		try {
			connection = SingletonConnection.getConnection();
			System.out.println("connection created  " + connection);
			statement = connection
					.prepareStatement("select * from agent where agent_name=? and password=?");
			statement.setString(1, userName);
			statement.setString(2, passWord);
			resultSet = statement.executeQuery();
			System.out.println("resultset created");
			if (resultSet.next()) {
				agent = new Agent();
				System.out.println("VALIDATED");
				agent.setUsername(resultSet.getString("USER_NAME"));
				agent.setPassword(resultSet.getString("PASSWORD"));

				System.out.println("result : " + agent);
			} else {
				System.out.println("not validated");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (statement != null) {
					statement.close();
				}

				if (resultSet != null) {
					resultSet.close();
				}
				

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return agent;
	}
}
