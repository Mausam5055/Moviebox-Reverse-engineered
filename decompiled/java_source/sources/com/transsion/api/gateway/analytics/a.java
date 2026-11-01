package com.transsion.api.gateway.analytics;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f42482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f42483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f42484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f42485f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f42486g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f42487h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f42488i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f42489j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f42490k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f42481b = System.currentTimeMillis();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f42480a = String.valueOf(System.currentTimeMillis());

    public String toString() {
        return "RequestAnalyticsData{requestId='" + this.f42480a + "', requestSubId='" + ((String) null) + "', requestStartTime=" + this.f42481b + ", subRequestStartTime=0, isIpConnect=" + this.f42482c + ", isGateway=" + this.f42483d + ", requestSize=" + this.f42484e + ", responseSize=0, ip='" + ((String) null) + "', host='" + this.f42485f + "', netQuality=0, path='" + this.f42486g + "', originUrl='" + this.f42487h + "', originHost='" + this.f42488i + "', domain='" + ((String) null) + "', result='" + ((String) null) + "', retryTime=" + this.f42489j + ", responseCode=" + this.f42490k + '}';
    }
}
