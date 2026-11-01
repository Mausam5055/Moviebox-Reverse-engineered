package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Date f32537e = new Date(-1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Date f32538f = new Date(-1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f32539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f32540b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f32541c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f32542d = new Object();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f32543a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Date f32544b;

        a(int i11, Date date) {
            this.f32543a = i11;
            this.f32544b = date;
        }

        Date a() {
            return this.f32544b;
        }

        int b() {
            return this.f32543a;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f32545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Date f32546b;

        public b(int i11, Date date) {
            this.f32545a = i11;
            this.f32546b = date;
        }

        Date a() {
            return this.f32546b;
        }

        int b() {
            return this.f32545a;
        }
    }

    public n(SharedPreferences sharedPreferences) {
        this.f32539a = sharedPreferences;
    }

    a a() {
        a aVar;
        synchronized (this.f32541c) {
            aVar = new a(this.f32539a.getInt("num_failed_fetches", 0), new Date(this.f32539a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }

    public long b() {
        return this.f32539a.getLong("fetch_timeout_in_seconds", 60L);
    }

    public yc.i c() {
        s sVarA;
        synchronized (this.f32540b) {
            long j11 = this.f32539a.getLong("last_fetch_time_in_millis", -1L);
            int i11 = this.f32539a.getInt("last_fetch_status", 0);
            sVarA = s.b().c(i11).d(j11).b(new yc.j.b().d(this.f32539a.getLong("fetch_timeout_in_seconds", 60L)).e(this.f32539a.getLong("minimum_fetch_interval_in_seconds", ConfigFetchHandler.f32441j)).c()).a();
        }
        return sVarA;
    }

    String d() {
        return this.f32539a.getString("last_fetch_etag", null);
    }

    Date e() {
        return new Date(this.f32539a.getLong("last_fetch_time_in_millis", -1L));
    }

    long f() {
        return this.f32539a.getLong("last_template_version", 0L);
    }

    public long g() {
        return this.f32539a.getLong("minimum_fetch_interval_in_seconds", ConfigFetchHandler.f32441j);
    }

    public b h() {
        b bVar;
        synchronized (this.f32542d) {
            bVar = new b(this.f32539a.getInt("num_failed_realtime_streams", 0), new Date(this.f32539a.getLong("realtime_backoff_end_time_in_millis", -1L)));
        }
        return bVar;
    }

    void i() {
        k(0, f32538f);
    }

    void j() {
        o(0, f32538f);
    }

    void k(int i11, Date date) {
        synchronized (this.f32541c) {
            this.f32539a.edit().putInt("num_failed_fetches", i11).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    public void l(yc.j jVar) {
        synchronized (this.f32540b) {
            this.f32539a.edit().putLong("fetch_timeout_in_seconds", jVar.a()).putLong("minimum_fetch_interval_in_seconds", jVar.b()).commit();
        }
    }

    void m(String str) {
        synchronized (this.f32540b) {
            this.f32539a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    void n(long j11) {
        synchronized (this.f32540b) {
            this.f32539a.edit().putLong("last_template_version", j11).apply();
        }
    }

    void o(int i11, Date date) {
        synchronized (this.f32542d) {
            this.f32539a.edit().putInt("num_failed_realtime_streams", i11).putLong("realtime_backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    void p() {
        synchronized (this.f32540b) {
            this.f32539a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    void q(Date date) {
        synchronized (this.f32540b) {
            this.f32539a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    void r() {
        synchronized (this.f32540b) {
            this.f32539a.edit().putInt("last_fetch_status", 2).apply();
        }
    }
}
