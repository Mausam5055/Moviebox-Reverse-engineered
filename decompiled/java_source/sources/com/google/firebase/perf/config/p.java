package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class p extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static p f32246a;

    private p() {
    }

    public static synchronized p f() {
        try {
            if (f32246a == null) {
                f32246a = new p();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32246a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "sessions_memory_capture_frequency_fg_ms";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_session_gauge_memory_capture_frequency_fg_ms";
    }

    protected Long d() {
        return 100L;
    }

    protected Long e() {
        return Long.valueOf(d().longValue() * 3);
    }
}
