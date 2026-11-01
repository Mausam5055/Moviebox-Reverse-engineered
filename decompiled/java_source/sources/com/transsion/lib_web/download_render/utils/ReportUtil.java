package com.transsion.lib_web.download_render.utils;

import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes5.dex */
public final class ReportUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ReportUtil f46183a = new ReportUtil();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final n0 f46184b;

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        f46184b = o0.a(m1.c(executorServiceNewSingleThreadExecutor));
    }

    private ReportUtil() {
    }

    public final void a(Map datas) {
        Intrinsics.h(datas, "datas");
        k.d(f46184b, null, null, new ReportUtil$reportManifestDownload$1(datas, null), 3, null);
    }

    public final void b(String url, String versionCode, int i11, int i12, int i13, int i14, int i15, long j11, boolean z10, long j12, long j13) {
        Intrinsics.h(url, "url");
        Intrinsics.h(versionCode, "versionCode");
        k.d(f46184b, null, null, new ReportUtil$reportPageDownload$1(url, versionCode, i11, i12, i13, i14, j11, z10, i15, j12, j13, null), 3, null);
    }

    public final void c(RenderStage renderStage) {
        k.d(f46184b, null, null, new ReportUtil$reportRender$1(renderStage, null), 3, null);
    }
}
