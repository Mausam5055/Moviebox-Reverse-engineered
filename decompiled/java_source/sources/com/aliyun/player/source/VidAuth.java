package com.aliyun.player.source;

/* JADX INFO: loaded from: classes2.dex */
public class VidAuth extends VidSourceBase {
    private String mPlayAuth;
    private String mRegion;
    private String mVid;

    public String getPlayAuth() {
        return this.mPlayAuth;
    }

    public String getRegion() {
        return this.mRegion;
    }

    public String getVid() {
        return this.mVid;
    }

    public void setPlayAuth(String str) {
        this.mPlayAuth = str;
    }

    public void setQuality(String str, boolean z10) {
        this.mQuality = str;
        this.mForceQuality = z10;
    }

    public void setRegion(String str) {
        this.mRegion = str;
    }

    public void setVid(String str) {
        this.mVid = str;
    }
}
