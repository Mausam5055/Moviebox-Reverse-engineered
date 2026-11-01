package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class s extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static s f32249a;

    private s() {
    }

    public static synchronized s e() {
        try {
            if (f32249a == null) {
                f32249a = new s();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32249a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.TraceEventCountForeground";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_rl_trace_event_count_fg";
    }

    protected Long d() {
        return 300L;
    }
}
