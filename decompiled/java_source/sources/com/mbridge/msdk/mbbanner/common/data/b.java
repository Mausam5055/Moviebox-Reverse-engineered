package com.mbridge.msdk.mbbanner.common.data;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36048c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f36049d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36050e;

    public b(String str, String str2, int i11, int i12) {
        this.f36046a = str;
        this.f36047b = str2;
        this.f36049d = i11;
        this.f36050e = i12;
    }

    public String a() {
        return this.f36048c;
    }

    public void a(int i11) {
        this.f36049d = i11;
    }

    public void a(String str) {
        this.f36048c = str;
    }

    public int b() {
        return this.f36050e;
    }

    public void b(String str) {
        this.f36047b = str;
    }

    public int c() {
        return this.f36049d;
    }

    public String d() {
        return this.f36047b;
    }
}
