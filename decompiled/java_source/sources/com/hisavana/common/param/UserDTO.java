package com.hisavana.common.param;

/* JADX INFO: loaded from: classes.dex */
public class UserDTO {
    private String baseStation;
    private long coordTime;
    private double latitude;
    private double longitude;

    public String getBaseStation() {
        return this.baseStation;
    }

    public long getCoordTime() {
        return this.coordTime;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setBaseStation(String str) {
        this.baseStation = str;
    }

    public void setCoordTime(long j11) {
        this.coordTime = j11;
    }

    public void setLatitude(double d11) {
        this.latitude = d11;
    }

    public void setLongitude(double d11) {
        this.longitude = d11;
    }
}
