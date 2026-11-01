package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f32235a;

    private e() {
    }

    protected static synchronized e e() {
        try {
            if (f32235a == null) {
                f32235a = new e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32235a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.FragmentSamplingRate";
    }

    @Override // com.google.firebase.perf.config.u
    protected String b() {
        return "fragment_sampling_percentage";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_vc_fragment_sampling_rate";
    }

    protected Double d() {
        return Double.valueOf(0.0d);
    }
}
