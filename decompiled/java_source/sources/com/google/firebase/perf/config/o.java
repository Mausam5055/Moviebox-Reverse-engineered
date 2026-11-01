package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class o extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f32245a;

    private o() {
    }

    public static synchronized o e() {
        try {
            if (f32245a == null) {
                f32245a = new o();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32245a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "sessions_memory_capture_frequency_bg_ms";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_session_gauge_memory_capture_frequency_bg_ms";
    }

    protected Long d() {
        return 0L;
    }
}
