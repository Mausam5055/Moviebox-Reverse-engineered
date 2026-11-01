package com.transsion.mbwidget;

import ak.a0;
import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.p;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends lj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f46239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f46240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static com.transsion.mbwidget.guide.a f46241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f46242d;

    static {
        d dVar = new d();
        f46239a = dVar;
        f46240b = LazyKt.b(new Function0() { // from class: com.transsion.mbwidget.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.p();
            }
        });
        f46242d = 604800000L;
        p.f59500a.a(Utils.a()).e(dVar);
        Application applicationA = Utils.a();
        a0 a0Var = a0.f627a;
        Intrinsics.e(applicationA);
        if (a0Var.a(applicationA)) {
            dVar.q();
        } else {
            lg.a.f68839a.x("DeskWidget_", "Skip widget workers because storage or WorkManager is unavailable", false);
        }
    }

    private d() {
    }

    private final native boolean l();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native MMKV p();

    private final native void q();

    public static /* synthetic */ boolean t(d dVar, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function0 = null;
        }
        return dVar.s(function0);
    }

    @Override // lj.a, lj.m0
    public native void e(DownloadBean downloadBean, String str);

    public final native boolean i(Function0 function0);

    public final native com.transsion.mbwidget.guide.a j();

    public final native MMKV k();

    public final native boolean m();

    public final native boolean n();

    public final native boolean o();

    public final native void r(com.transsion.mbwidget.guide.a aVar);

    public final native boolean s(Function0 function0);
}
