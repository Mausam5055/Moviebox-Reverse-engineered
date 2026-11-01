package com.transsnet.downloader.util;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f59941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f59942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f59943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f59944f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f59939a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f59940b = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f59945g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ConcurrentHashMap f59946h = new ConcurrentHashMap();

    private i() {
    }

    public final Map a() {
        if (f59942d) {
            c(PrepareException.ERROR_NO_URL);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ConcurrentHashMap concurrentHashMap = f59946h;
        linkedHashMap.putAll(concurrentHashMap);
        concurrentHashMap.clear();
        f59943e = false;
        f59944f = false;
        return linkedHashMap;
    }

    public final void b(String step) {
        Intrinsics.h(step, "step");
        if (f59942d && !Intrinsics.c(f59945g, step)) {
            if (Intrinsics.c(step, "4")) {
                if (f59943e) {
                    return;
                } else {
                    f59943e = true;
                }
            }
            if (Intrinsics.c(step, "3")) {
                if (f59944f) {
                    return;
                } else {
                    f59944f = true;
                }
            }
            f59945g = step;
            lg.a.C0828a.f(lg.a.f68839a, "DownloadProxyLog", "logPoint, step = " + step, false, 4, null);
            long jCurrentTimeMillis = System.currentTimeMillis();
            f59946h.put("delay_step_" + f59940b + "_" + step, Long.valueOf(jCurrentTimeMillis - f59941c));
            f59940b = step;
            f59941c = jCurrentTimeMillis;
        }
    }

    public final void c(String step) {
        Intrinsics.h(step, "step");
        lg.a.C0828a.v(lg.a.f68839a, "DownloadProxyLog", "onFinish, step = " + step, false, 4, null);
        b(step);
        f59942d = false;
        f59941c = 0L;
    }

    public final void d(String step) {
        Intrinsics.h(step, "step");
        lg.a.C0828a.v(lg.a.f68839a, "DownloadProxyLog", "onStart, step = " + step, false, 4, null);
        f59942d = true;
        f59940b = step;
        f59941c = System.currentTimeMillis();
        f59946h.clear();
    }
}
