package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f32234a;

    private d() {
    }

    protected static synchronized d e() {
        try {
            if (f32234a == null) {
                f32234a = new d();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32234a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.ExperimentTTID";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "experiment_app_start_ttid";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_experiment_app_start_ttid";
    }

    protected Boolean d() {
        return Boolean.FALSE;
    }
}
