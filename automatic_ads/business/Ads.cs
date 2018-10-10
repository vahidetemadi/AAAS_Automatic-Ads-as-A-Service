using System;
using System.Data;
using DataAccess;
namespace business
{
    public class Ads
    {
        private String id;
        private String type;
        private String priority;
        private String location;
        private String time;

        public void ShowDefult()
        {

        }
        public void SaveAds()
        {

        }
        public String SelectAds(int longtitude, int latitude, int altitude)
        {
            Location l = new Location();
            l.longtitude = longtitude;
            l.altitude = altitude;
            l.latitude = latitude;
            DA db = new DA();
            String s = " ";
            String t = "select a.path"+
                       "from Ads as a inner join location as l on a.longtitude=l.longtitude" +
                       "where  l.longtitude="+l.longtitude+" and l.altitude="+l.altitude+" and l.latitude="+l.latitude;
            s=db.ExecuteCommand(t);
            return s;

        }
        public void BaseStationAds()
        {

        }

    }
}