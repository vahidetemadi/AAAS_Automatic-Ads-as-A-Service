using System;
using System.Data;
using business;
namespace UI
{
    public class GPSForm
    {

        public void GetInfo(int longtitude, int latitude, int altitude)
        {
            GPSSelectAds(longtitude, latitude, altitude);

        }
        public void GPSSelectAds(int longtitude, int latitude, int altitude)
        {
            String s;
            Ads ads = new Ads();
            s = ads.SelectAds(longtitude, latitude, altitude);
            ShowAds(s);

        }
        public void SelectBus()
        {

        }
        public void ShowAds(String s)
        {
            Console.Write(s);
            Bus bus = new Bus();
            bus.SelectDevice();
            //send ads for device
        }

    }
}