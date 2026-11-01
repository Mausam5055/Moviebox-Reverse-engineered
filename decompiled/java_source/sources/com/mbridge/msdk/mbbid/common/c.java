package com.mbridge.msdk.mbbid.common;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36201c;

    public c(String str, String str2) {
        this.f36199a = str;
        this.f36200b = str2;
    }

    public c(String str, String str2, String str3) {
        this.f36199a = str;
        this.f36200b = str2;
        this.f36201c = str3;
    }

    public String getmFloorPrice() {
        return this.f36201c;
    }

    public String getmPlacementId() {
        return this.f36199a;
    }

    public String getmUnitId() {
        return this.f36200b;
    }

    public void setmFloorPrice(String str) {
        this.f36201c = str;
    }

    public void setmPlacementId(String str) {
        this.f36199a = str;
    }

    public void setmUnitId(String str) {
        this.f36200b = str;
    }
}
