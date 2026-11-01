package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static k f32241a;

    protected k() {
    }

    protected static synchronized k e() {
        try {
            if (f32241a == null) {
                f32241a = new k();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32241a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.SdkEnabled";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_enabled";
    }

    protected Boolean d() {
        return Boolean.TRUE;
    }
}
