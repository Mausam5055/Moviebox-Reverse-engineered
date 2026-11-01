package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static j f32240a;

    protected j() {
    }

    protected static synchronized j e() {
        try {
            if (f32240a == null) {
                f32240a = new j();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32240a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.SdkDisabledVersions";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_disabled_android_versions";
    }

    protected String d() {
        return "";
    }
}
