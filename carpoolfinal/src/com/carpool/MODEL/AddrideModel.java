package com.carpool.MODEL;

public class AddrideModel {
	
		private String fromLoc;
		private String toLoc;
		private String date;
		private String seats;
		public String getFromLoc()
		{
			return fromLoc;
		}
		
		public String getToLoc()
		{
			return toLoc;
		}
		
		public String getDate()
		{
			return date;
		}
		
		public String getSeats()
		{
			return seats;
		}
		
		public void setFromLoc(String fromLoc)
		{
			this.fromLoc=fromLoc;
		}
		
		public void setToLoc(String toLoc)
		{
			this.toLoc=toLoc;
		}
		
		public void setDate(String date)
		{
			this.date=date;
		}
		
		public void setSeats(String seats)
		{
			this.seats=seats;
		}

}
