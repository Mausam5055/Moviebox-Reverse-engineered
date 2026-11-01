package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class q extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static q f32247a;

    private q() {
    }

    public static synchronized q f() {
        try {
            if (f32247a == null) {
                f32247a = new q();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32247a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.SessionSamplingRate";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "sessions_sampling_percentage";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_vc_session_sampling_rate";
    }

    protected Double d() {
        return Double.valueOf(0.01d);
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }
}
