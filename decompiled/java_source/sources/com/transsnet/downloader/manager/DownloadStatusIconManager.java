package com.transsnet.downloader.manager;

import com.blankj.utilcode.util.Utils;
import com.transsnet.downloader.callback.DownloadTaskStat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadStatusIconManager implements ny.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f59462h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f59463i = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadStatusIconManager.s();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f59466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f59467d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f59468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f59469f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f59464a = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.manager.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadStatusIconManager.p();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f59465b = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f59470g = com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_download_done_status", true);

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadStatusIconManager a() {
            return (DownloadStatusIconManager) DownloadStatusIconManager.f59463i.getValue();
        }
    }

    public DownloadStatusIconManager() {
        q().n(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g p() {
        return p.f59500a.a(Utils.a());
    }

    private final g q() {
        return (g) this.f59464a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadStatusIconManager s() {
        return new DownloadStatusIconManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(int i11, int i12) {
        Iterator it = this.f59465b.iterator();
        while (it.hasNext()) {
            ((ny.e) it.next()).a(i11, i12);
        }
    }

    static /* synthetic */ void u(DownloadStatusIconManager downloadStatusIconManager, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i12 = -1;
        }
        downloadStatusIconManager.t(i11, i12);
    }

    @Override // ny.b
    public void a(DownloadTaskStat downloadTaskStat) {
        Intrinsics.h(downloadTaskStat, "downloadTaskStat");
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new DownloadStatusIconManager$onChange$1(this, downloadTaskStat, null), 3, null);
    }

    public final void o(ny.e listener) {
        Intrinsics.h(listener, "listener");
        if (!this.f59465b.contains(listener)) {
            this.f59465b.add(listener);
        }
        q().E();
    }

    public final void r() {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new DownloadStatusIconManager$initDownloadUnreadList$1(this, null), 3, null);
    }

    public final void v(ny.e listener) {
        Intrinsics.h(listener, "listener");
        this.f59465b.remove(listener);
    }

    public final void w(boolean z10) {
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("k_download_done_status", z10);
        this.f59470g = z10;
    }
}
