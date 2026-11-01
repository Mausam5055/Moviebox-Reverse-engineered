package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f32233a;

    private c() {
    }

    protected static synchronized c d() {
        try {
            if (f32233a == null) {
                f32233a = new c();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32233a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "isEnabled";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "firebase_performance_collection_enabled";
    }
}
