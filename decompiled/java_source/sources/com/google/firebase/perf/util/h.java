package com.google.firebase.perf.util;

import com.google.firebase.perf.metrics.Trace;

/* JADX INFO: loaded from: classes4.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final sc.a f32378a = sc.a.e();

    public static Trace a(Trace trace, com.google.firebase.perf.metrics.g.a aVar) {
        if (aVar.d() > 0) {
            trace.putMetric(Constants$CounterNames.FRAMES_TOTAL.toString(), aVar.d());
        }
        if (aVar.c() > 0) {
            trace.putMetric(Constants$CounterNames.FRAMES_SLOW.toString(), aVar.c());
        }
        if (aVar.b() > 0) {
            trace.putMetric(Constants$CounterNames.FRAMES_FROZEN.toString(), aVar.b());
        }
        f32378a.a("Screen trace: " + trace.getName() + " _fr_tot:" + aVar.d() + " _fr_slo:" + aVar.c() + " _fr_fzn:" + aVar.b());
        return trace;
    }
}
