package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f32232a;

    private b() {
    }

    protected static synchronized b e() {
        try {
            if (f32232a == null) {
                f32232a = new b();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32232a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "firebase_performance_collection_deactivated";
    }

    protected Boolean d() {
        return Boolean.FALSE;
    }
}
