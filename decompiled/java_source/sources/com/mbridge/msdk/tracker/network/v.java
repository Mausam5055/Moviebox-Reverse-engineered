package com.mbridge.msdk.tracker.network;

/* JADX INFO: loaded from: classes5.dex */
public class v<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f38691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.mbridge.msdk.tracker.network.b.a f38692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b0 f38693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f38694d;

    public interface a {
        void a(b0 b0Var);
    }

    public interface b<T> {
        void a(T t11);
    }

    private v(b0 b0Var) {
        this.f38694d = false;
        this.f38691a = null;
        this.f38692b = null;
        this.f38693c = b0Var;
    }

    private v(T t11, com.mbridge.msdk.tracker.network.b.a aVar) {
        this.f38694d = false;
        this.f38691a = t11;
        this.f38692b = aVar;
        this.f38693c = null;
    }

    public static <T> v<T> a(b0 b0Var) {
        return new v<>(b0Var);
    }

    public static <T> v<T> a(T t11, com.mbridge.msdk.tracker.network.b.a aVar) {
        return new v<>(t11, aVar);
    }

    public boolean a() {
        return this.f38693c == null;
    }
}
