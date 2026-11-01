package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class i extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static i f32239a;

    private i() {
    }

    public static synchronized i e() {
        try {
            if (f32239a == null) {
                f32239a = new i();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32239a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.TimeLimitSec";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_rl_time_limit_sec";
    }

    protected Long d() {
        return 600L;
    }
}
