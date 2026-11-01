package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class n extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static n f32244a;

    private n() {
    }

    public static synchronized n e() {
        try {
            if (f32244a == null) {
                f32244a = new n();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32244a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.SessionsMaxDurationMinutes";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "sessions_max_length_minutes";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_session_max_duration_min";
    }

    protected Long d() {
        return 240L;
    }
}
