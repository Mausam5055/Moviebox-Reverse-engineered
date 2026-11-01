package com.mbridge.msdk.click.entity;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f34311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f34312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f34313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f34314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f34315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f34316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f34317g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f34318h;

    public String a() {
        return "statusCode=" + this.f34316f + ", location=" + this.f34311a + ", contentType=" + this.f34312b + ", contentLength=" + this.f34315e + ", contentEncoding=" + this.f34313c + ", referer=" + this.f34314d;
    }

    @NonNull
    public String toString() {
        return "ClickResponseHeader{location='" + this.f34311a + "', contentType='" + this.f34312b + "', contentEncoding='" + this.f34313c + "', referer='" + this.f34314d + "', contentLength=" + this.f34315e + ", statusCode=" + this.f34316f + ", url='" + this.f34317g + "', exception='" + this.f34318h + "'}";
    }
}
