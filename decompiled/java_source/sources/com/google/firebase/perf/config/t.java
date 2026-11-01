package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class t extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static t f32250a;

    private t() {
    }

    protected static synchronized t f() {
        try {
            if (f32250a == null) {
                f32250a = new t();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32250a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.TraceSamplingRate";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_vc_trace_sampling_rate";
    }

    protected Double d() {
        return Double.valueOf(1.0d);
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }
}
