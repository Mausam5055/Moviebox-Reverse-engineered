package com.transsion.player.shorttv.preload;

import android.content.Context;
import android.util.Log;
import androidx.media3.exoplayer.offline.DownloadManager;
import androidx.media3.exoplayer.scheduler.Requirements;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f48524g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f48525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f48526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f48527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f48528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f48529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap f48530f;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements DownloadManager.d {
        b() {
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void a(DownloadManager downloadManager, boolean z10) {
            Intrinsics.h(downloadManager, "downloadManager");
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void b(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c download) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(download, "download");
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void c(DownloadManager downloadManager, boolean z10) {
            Intrinsics.h(downloadManager, "downloadManager");
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void d(DownloadManager downloadManager) {
            Intrinsics.h(downloadManager, "downloadManager");
            Log.e("VideoPreloadHelper", "onIdle:");
            g.this.m();
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void e(DownloadManager downloadManager, Requirements requirements, int i11) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(requirements, "requirements");
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void f(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c download, Exception exc) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(download, "download");
            Log.e("VideoPreloadHelper", "onDownloadChanged:  download.requestId:" + download.f12413a.f12343id + "     bytesDownloaded:" + download.a() + "  contentLength:" + download.f12417e + "  percentDownloaded:" + download.b());
            com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) g.this.f48530f.get(download.f12413a.f12343id);
            if (aVar != null) {
                aVar.h(download.a());
                aVar.g(download.f12417e);
            }
            if (Intrinsics.c(download.f12413a.f12343id, g.this.f48528d)) {
                int i11 = download.f12414b;
                if (i11 == 1 || i11 == 3 || i11 == 4) {
                    g.this.f48528d = null;
                    g.this.m();
                }
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void g(DownloadManager downloadManager) {
            Intrinsics.h(downloadManager, "downloadManager");
        }
    }

    public g(Context context) {
        Intrinsics.h(context, "context");
        this.f48525a = context;
        this.f48526b = new CopyOnWriteArrayList();
        b bVar = new b();
        this.f48529e = bVar;
        this.f48530f = new ConcurrentHashMap();
        co.a.h(context).d(bVar);
    }

    private final void i(int i11) {
        ao.e eVar;
        if (i11 < 0 || i11 >= this.f48526b.size() || (eVar = (ao.e) this.f48526b.get(i11)) == null) {
            return;
        }
        Log.e("VideoPreloadHelper", "checkToPause   position:" + i11 + "  shortTVItem:" + eVar);
        q.f48539a.D(eVar.g());
    }

    private final void j(int i11) {
        final ao.e eVar;
        if (i11 < 0 || i11 >= this.f48526b.size() || (eVar = (ao.e) this.f48526b.get(i11)) == null) {
            return;
        }
        q.f48539a.z(new Runnable() { // from class: com.transsion.player.shorttv.preload.f
            @Override // java.lang.Runnable
            public final void run() {
                g.k(eVar, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(ao.e eVar, g gVar) {
        gVar.f48530f.put(eVar.g(), q.f48539a.w(eVar));
    }

    private final com.transsion.player.shorttv.preload.a l(int i11, ao.e eVar) {
        com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) this.f48530f.get(eVar.g());
        if (aVar != null) {
            Log.e("VideoPreloadHelper", "createDownloadRequest [from map] position:" + i11 + "  shortTVItem:" + eVar);
            return aVar;
        }
        String strG = eVar.g();
        com.transsion.player.shorttv.preload.a aVarN = q.f48539a.n(eVar);
        this.f48530f.put(strG, aVarN);
        Log.e("VideoPreloadHelper", "createDownloadRequest [from new] position:" + i11 + "  shortTVItem:" + eVar);
        return aVarN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(g gVar, int i11) {
        int size = gVar.f48526b.size();
        Log.e("VideoPreloadHelper", "loadNext， position:" + i11 + "   size:" + size);
        int i12 = RangesKt.i(i11 + 6, size);
        for (int i13 = i11 + 1; i13 < i12; i13++) {
            ao.e eVar = (ao.e) gVar.f48526b.get(i13);
            if (eVar != null) {
                com.transsion.player.shorttv.preload.a aVarL = gVar.l(i13, eVar);
                aVarL.i(307200L);
                if (aVarL.b() < aVarL.d()) {
                    Log.e("VideoPreloadHelper", "非当前选中  下载大小 downloadLength:" + aVarL.b() + "  index:" + i13);
                    gVar.f48528d = aVarL.c();
                    q.f48539a.s(aVarL);
                    return;
                }
                aVarL.b();
                aVarL.a();
                Log.e("VideoPreloadHelper", "非当前选中  下载大小 downloadLength:" + aVarL.b() + " 大于最小下载，跳过 index:" + i13);
            }
        }
        Log.e("VideoPreloadHelper", "不用全量下载");
    }

    public final void f(int i11, ao.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        if (i11 <= this.f48526b.size()) {
            this.f48526b.add(i11, mediaSource);
        }
        m();
    }

    public final void g(ao.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        this.f48526b.add(mediaSource);
        m();
    }

    public final void h(int i11) {
        Log.e("VideoPreloadHelper", "changeSelect  position:" + i11);
        if (this.f48527c == i11) {
            return;
        }
        this.f48528d = null;
        this.f48527c = i11;
        i(i11);
        j(this.f48527c + 1);
    }

    public final void m() {
        final int i11 = this.f48527c;
        if (i11 >= 0 && this.f48528d == null) {
            q.f48539a.z(new Runnable() { // from class: com.transsion.player.shorttv.preload.e
                @Override // java.lang.Runnable
                public final void run() {
                    g.n(this.f48520a, i11);
                }
            });
        }
    }

    public final void o() {
        i(this.f48527c);
        this.f48527c = -1;
    }

    public final void p() {
        co.a.h(this.f48525a).w(this.f48529e);
        o();
    }

    public final void q(String key) {
        Intrinsics.h(key, "key");
        this.f48530f.remove(key);
        q.f48539a.x(key);
    }
}
