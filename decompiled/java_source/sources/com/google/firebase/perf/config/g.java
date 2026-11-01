package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static g f32237a;

    private g() {
    }

    public static synchronized g e() {
        try {
            if (f32237a == null) {
                f32237a = new g();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32237a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.NetworkEventCountForeground";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_rl_network_event_count_fg";
    }

    protected Long d() {
        return 700L;
    }
}
