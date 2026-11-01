package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class l extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static l f32242a;

    private l() {
    }

    public static synchronized l e() {
        try {
            if (f32242a == null) {
                f32242a = new l();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32242a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "sessions_cpu_capture_frequency_bg_ms";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_session_gauge_cpu_capture_frequency_bg_ms";
    }

    protected Long d() {
        return 0L;
    }
}
