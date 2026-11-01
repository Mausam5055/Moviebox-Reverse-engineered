package com.google.firebase.perf.metrics;

import com.google.firebase.perf.util.Timer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import vc.k;

/* JADX INFO: loaded from: classes4.dex */
public class h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final sc.a f32295f = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f32296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Timer f32297b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32300e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32299d = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f32298c = new ConcurrentHashMap();

    public h(String str, String str2, k kVar, Timer timer) {
        this.f32300e = false;
        this.f32297b = timer;
        i iVarF = i.b(kVar).q(str).f(str2);
        this.f32296a = iVarF;
        iVarF.h();
        if (com.google.firebase.perf.config.a.g().K()) {
            return;
        }
        f32295f.g("HttpMetric feature is disabled. URL %s", str);
        this.f32300e = true;
    }

    public void a(int i11) {
        this.f32296a.g(i11);
    }
}
