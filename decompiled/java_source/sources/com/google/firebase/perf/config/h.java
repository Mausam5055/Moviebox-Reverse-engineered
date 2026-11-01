package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes4.dex */
public final class h extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static h f32238a;

    private h() {
    }

    protected static synchronized h f() {
        try {
            if (f32238a == null) {
                f32238a = new h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32238a;
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.NetworkRequestSamplingRate";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_vc_network_request_sampling_rate";
    }

    protected Double d() {
        return Double.valueOf(1.0d);
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }
}
