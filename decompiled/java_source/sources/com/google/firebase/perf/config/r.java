package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class r extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static r f32248a;

    private r() {
    }

    public static synchronized r e() {
        try {
            if (f32248a == null) {
                f32248a = new r();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32248a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.TraceEventCountBackground";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_rl_trace_event_count_bg";
    }

    protected Long d() {
        return 30L;
    }
}
