package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class m extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f32243a;

    private m() {
    }

    public static synchronized m f() {
        try {
            if (f32243a == null) {
                f32243a = new m();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32243a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "sessions_cpu_capture_frequency_fg_ms";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_session_gauge_cpu_capture_frequency_fg_ms";
    }

    protected Long d() {
        return 100L;
    }

    protected Long e() {
        return Long.valueOf(d().longValue() * 3);
    }
}
