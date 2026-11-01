package com.mbridge.msdk.tracker;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class i implements Serializable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static String f38516i = "CREATE TABLE IF NOT EXISTS %s (id INTEGER PRIMARY KEY,uuid TEXT,name TEXT,type INTEGER,time_stamp INTEGER,duration INTEGER,properties TEXT,priority INTEGER,state INTEGER,invalid_time INTEGER,ignore_max_timeout INTEGER,ignore_max_retry_times INTEGER,report_error_message TEXT,report_count INTEGER)";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static String f38517j = "DROP TABLE IF EXISTS %s";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f38518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f38519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f38521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f38522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f38523f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f38524g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f38525h;

    public i(e eVar) {
        this.f38518a = eVar;
        this.f38521d = eVar.i();
    }

    public e a() {
        return this.f38518a;
    }

    public void a(int i11) {
        this.f38519b = i11;
    }

    public void a(long j11) {
        this.f38522e = j11;
    }

    public void a(String str) {
        this.f38525h = str;
    }

    public void a(boolean z10) {
        this.f38524g = z10;
    }

    public long b() {
        return this.f38522e;
    }

    public void b(int i11) {
        this.f38520c = i11;
    }

    public void b(boolean z10) {
        this.f38523f = z10;
    }

    public int c() {
        return this.f38519b;
    }

    public String d() {
        return this.f38525h;
    }

    public int e() {
        return this.f38520c;
    }

    public String f() {
        return this.f38521d;
    }

    public boolean g() {
        return this.f38524g;
    }

    public boolean h() {
        return this.f38523f;
    }
}
