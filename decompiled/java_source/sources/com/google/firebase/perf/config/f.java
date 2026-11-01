package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f32236a;

    private f() {
    }

    public static synchronized f e() {
        try {
            if (f32236a == null) {
                f32236a = new f();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32236a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.NetworkEventCountBackground";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_rl_network_event_count_bg";
    }

    protected Long d() {
        return 70L;
    }
}
