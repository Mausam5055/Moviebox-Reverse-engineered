package com.transsion.player.shorttv.preload;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.media3.exoplayer.offline.DownloadManager;
import androidx.media3.exoplayer.offline.DownloadRequest;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.exoplayer.scheduler.Requirements;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.player.exo.DemoDownloadService;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f48539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f48540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f48541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final HandlerThread f48542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Handler f48543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f48544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Function0 f48545g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final b f48546h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f48547i;

    public static final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message msg) {
            Intrinsics.h(msg, "msg");
            try {
                super.dispatchMessage(msg);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public static final class b implements DownloadManager.d {
        b() {
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void a(DownloadManager downloadManager, boolean z10) {
            Intrinsics.h(downloadManager, "downloadManager");
            Log.e("VideoPreloadUtil", "onWaitingForRequirementsChanged:");
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void b(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c download) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(download, "download");
            Log.e("VideoPreloadUtil", "onDownloadRemoved:");
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void c(DownloadManager downloadManager, boolean z10) {
            Intrinsics.h(downloadManager, "downloadManager");
            Log.e("VideoPreloadUtil", "onDownloadsPausedChanged:");
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void d(DownloadManager downloadManager) {
            Intrinsics.h(downloadManager, "downloadManager");
            Log.e("VideoPreloadUtil", "onIdle:");
            q.f48539a.B();
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void e(DownloadManager downloadManager, Requirements requirements, int i11) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(requirements, "requirements");
            Log.e("VideoPreloadUtil", "onRequirementsStateChanged:");
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void f(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c download, Exception exc) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(download, "download");
            Log.e("VideoPreloadUtil", "onDownloadChanged:  download.requestId:" + download.f12413a.f12343id + "     bytesDownloaded:" + download.a() + "  contentLength:" + download.f12417e + "  percentDownloaded:" + download.b());
            com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) q.f48540b.get(download.f12413a.f12343id);
            if (aVar != null) {
                aVar.h(download.a());
                aVar.g(download.f12417e);
                int i11 = download.f12414b;
                if (i11 == 2) {
                    long jB = aVar.b();
                    long jD = aVar.d();
                    if (1 <= jD && jD < jB) {
                        q qVar = q.f48539a;
                        String id2 = aVar.e().f12343id;
                        Intrinsics.g(id2, "id");
                        qVar.D(id2);
                    }
                } else if (i11 == 1 || i11 == 3) {
                    q qVar2 = q.f48539a;
                    String id3 = aVar.e().f12343id;
                    Intrinsics.g(id3, "id");
                    qVar2.x(id3);
                }
            }
            q.f48539a.A();
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void g(DownloadManager downloadManager) {
            Intrinsics.h(downloadManager, "downloadManager");
        }
    }

    static {
        q qVar = new q();
        f48539a = qVar;
        f48540b = new ConcurrentHashMap();
        f48541c = LazyKt.b(new Function0() { // from class: com.transsion.player.shorttv.preload.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.m();
            }
        });
        HandlerThread handlerThread = new HandlerThread("VideoPreloadUtil");
        f48542d = handlerThread;
        f48544f = 100L;
        f48545g = new Function0() { // from class: com.transsion.player.shorttv.preload.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.F();
            }
        };
        b bVar = new b();
        f48546h = bVar;
        handlerThread.start();
        f48543e = new a(handlerThread.getLooper());
        co.a.h(qVar.o()).d(bVar);
    }

    private q() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        if (f48547i) {
            return;
        }
        f48547i = true;
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        f48547i = false;
        Handler handler = f48543e;
        final Function0 function0 = f48545g;
        handler.removeCallbacks(new Runnable() { // from class: com.transsion.player.shorttv.preload.k
            @Override // java.lang.Runnable
            public final void run() {
                q.C(function0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(String str) {
        oo.e.d(oo.e.f71074a, "VideoPreloadUtil", "stopPreload   key:" + str, false, 4, null);
        DownloadService.z(f48539a.o(), DemoDownloadService.class, str, 10086, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F() {
        for (Object obj : co.a.h(f48539a.o()).e()) {
            Intrinsics.g(obj, "next(...)");
            androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) obj;
            if (cVar.f12414b == 2) {
                String str = cVar.f12413a.f12343id;
                long jA = cVar.a();
                long j11 = cVar.f12417e;
                float fB = cVar.b();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("progress 111:  download.requestId:");
                sb2.append(str);
                sb2.append("     bytesDownloaded:");
                sb2.append(jA);
                sb2.append("  contentLength:");
                sb2.append(j11);
                sb2.append("  percentDownloaded:");
                sb2.append(fB);
                com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) f48540b.get(cVar.f12413a.f12343id);
                if (aVar != null) {
                    aVar.h(cVar.a());
                    aVar.g(cVar.f12417e);
                    long jB = aVar.b();
                    long jD = aVar.d();
                    if (1 <= jD && jD < jB) {
                        q qVar = f48539a;
                        String id2 = aVar.e().f12343id;
                        Intrinsics.g(id2, "id");
                        qVar.x(id2);
                    }
                }
            }
        }
        if (f48547i) {
            f48539a.p();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Application m() {
        return Utils.a();
    }

    private final Context o() {
        Object value = f48541c.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (Context) value;
    }

    private final void p() {
        Handler handler = f48543e;
        final Function0 function0 = f48545g;
        handler.removeCallbacks(new Runnable() { // from class: com.transsion.player.shorttv.preload.n
            @Override // java.lang.Runnable
            public final void run() {
                q.q(function0);
            }
        });
        handler.postDelayed(new Runnable() { // from class: com.transsion.player.shorttv.preload.o
            @Override // java.lang.Runnable
            public final void run() {
                q.r(function0);
            }
        }, f48544f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(ao.e eVar) {
        q qVar = f48539a;
        qVar.s(qVar.n(eVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(com.transsion.player.shorttv.preload.a aVar) {
        Log.e("VideoPreloadUtil", "preloadVideo id:" + aVar.c() + " downloadLength:" + aVar.b() + "  maxLength:" + aVar.d() + " contentLength:" + aVar.a());
        if (aVar.d() == -1 || aVar.b() < aVar.d()) {
            if (aVar.f()) {
                DownloadService.z(f48539a.o(), DemoDownloadService.class, aVar.c(), 0, false);
                Log.e("VideoPreloadUtil", "checkToStart restart  shortTVItem:" + aVar);
                return;
            }
            DownloadService.x(f48539a.o(), DemoDownloadService.class, aVar.e(), false);
            Log.e("VideoPreloadUtil", "checkToStart add    shortTVItem:" + aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(String str) {
        oo.e.d(oo.e.f71074a, "VideoPreloadUtil", "removePreload   key:" + str, false, 4, null);
        DownloadService.y(f48539a.o(), DemoDownloadService.class, str, false);
    }

    public final void D(final String key) {
        Intrinsics.h(key, "key");
        z(new Runnable() { // from class: com.transsion.player.shorttv.preload.m
            @Override // java.lang.Runnable
            public final void run() {
                q.E(key);
            }
        });
    }

    public final String G(String str) {
        int iO0 = str != null ? StringsKt.o0(str, UrlUtils.QUESTION_MARK, 0, false, 6, null) : -1;
        if (str != null && iO0 >= 0) {
            return oo.d.f71072a.a((String) StringsKt.S0(str, new String[]{UrlUtils.QUESTION_MARK}, false, 0, 6, null).get(0));
        }
        oo.d.a aVar = oo.d.f71072a;
        if (str == null) {
            str = "";
        }
        return aVar.a(str);
    }

    public final com.transsion.player.shorttv.preload.a n(ao.e shortTVItem) {
        DownloadRequest downloadRequest;
        Intrinsics.h(shortTVItem, "shortTVItem");
        ConcurrentHashMap concurrentHashMap = f48540b;
        com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) concurrentHashMap.get(shortTVItem.g());
        if (aVar != null) {
            oo.e.b(oo.e.f71074a, "VideoPreloadUtil", "createDownloadRequest [from map]  shortTVItem:" + shortTVItem, false, 4, null);
            return aVar;
        }
        androidx.media3.exoplayer.offline.c cVarH = co.a.h(Utils.a()).f().h(shortTVItem.g());
        if (Intrinsics.c((cVarH == null || (downloadRequest = cVarH.f12413a) == null) ? null : downloadRequest.f12343id, shortTVItem.g())) {
            oo.e.b(oo.e.f71074a, "VideoPreloadUtil", "createDownloadRequest [from currentDownloads]   shortTVItem:" + shortTVItem, false, 4, null);
            String strG = shortTVItem.g();
            String strK = shortTVItem.k();
            DownloadRequest request = cVarH.f12413a;
            Intrinsics.g(request, "request");
            return new com.transsion.player.shorttv.preload.a(strG, strK, request, cVarH.f12417e, cVarH.a(), 307200L, true);
        }
        String strG2 = shortTVItem.g();
        String strK2 = shortTVItem.k();
        DownloadRequest downloadRequestA = new DownloadRequest.b(strG2, Uri.parse(strK2)).b(strG2).a();
        Intrinsics.g(downloadRequestA, "build(...)");
        com.transsion.player.shorttv.preload.a aVar2 = new com.transsion.player.shorttv.preload.a(strG2, strK2, downloadRequestA, -1L, 0L, 307200L, false);
        concurrentHashMap.put(strG2, aVar2);
        oo.e.b(oo.e.f71074a, "VideoPreloadUtil", "createDownloadRequest [from new]  shortTVItem:" + shortTVItem, false, 4, null);
        return aVar2;
    }

    public final com.transsion.player.shorttv.preload.a s(final com.transsion.player.shorttv.preload.a shortTVDownloadBean) {
        Intrinsics.h(shortTVDownloadBean, "shortTVDownloadBean");
        z(new Runnable() { // from class: com.transsion.player.shorttv.preload.p
            @Override // java.lang.Runnable
            public final void run() {
                q.v(shortTVDownloadBean);
            }
        });
        return shortTVDownloadBean;
    }

    public final void t(final ao.e shortTVItem) {
        Intrinsics.h(shortTVItem, "shortTVItem");
        z(new Runnable() { // from class: com.transsion.player.shorttv.preload.j
            @Override // java.lang.Runnable
            public final void run() {
                q.u(shortTVItem);
            }
        });
    }

    public final com.transsion.player.shorttv.preload.a w(ao.e shortTVItem) {
        Intrinsics.h(shortTVItem, "shortTVItem");
        com.transsion.player.shorttv.preload.a aVarN = n(shortTVItem);
        s(aVarN);
        return aVarN;
    }

    public final void x(final String key) {
        Intrinsics.h(key, "key");
        f48540b.remove(key);
        z(new Runnable() { // from class: com.transsion.player.shorttv.preload.l
            @Override // java.lang.Runnable
            public final void run() {
                q.y(key);
            }
        });
    }

    public final void z(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        f48543e.post(runnable);
    }
}
