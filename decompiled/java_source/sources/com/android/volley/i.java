package com.android.volley;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f19251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c.a f19252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VolleyError f19253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f19254d;

    public interface a {
        void onErrorResponse(VolleyError volleyError);
    }

    public interface b {
        void onResponse(Object obj);
    }

    private i(VolleyError volleyError) {
        this.f19254d = false;
        this.f19251a = null;
        this.f19252b = null;
        this.f19253c = volleyError;
    }

    private i(Object obj, c.a aVar) {
        this.f19254d = false;
        this.f19251a = obj;
        this.f19252b = aVar;
        this.f19253c = null;
    }

    public static i a(VolleyError volleyError) {
        return new i(volleyError);
    }

    public static i c(Object obj, c.a aVar) {
        return new i(obj, aVar);
    }

    public boolean b() {
        return this.f19253c == null;
    }
}
