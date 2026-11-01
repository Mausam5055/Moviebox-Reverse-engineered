package com.transsion.player.orplayer;

import com.aliyun.loader.MediaLoader;
import com.aliyun.player.AliPlayerGlobalSettings;
import com.blankj.utilcode.util.Utils;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ORPlayerPreloadManager implements MediaLoader.OnLoadStatusListener {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f48409i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Lazy f48410j = LazyKt.b(new Function0() { // from class: com.transsion.player.orplayer.d0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ORPlayerPreloadManager.d();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f48411a = "ORPlayerPreload";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f48412b = 4000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f48413c = 4000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f48414d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CopyOnWriteArrayList f48415e = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CopyOnWriteArrayList f48416f = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CopyOnWriteArrayList f48417g = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f48418h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ORPlayerPreloadManager a() {
            return (ORPlayerPreloadManager) ORPlayerPreloadManager.f48410j.getValue();
        }
    }

    public ORPlayerPreloadManager() {
        MediaLoader.getInstance().setOnLoadStatusListener(this);
        File externalCacheDir = Utils.a().getExternalCacheDir();
        String absolutePath = externalCacheDir != null ? externalCacheDir.getAbsolutePath() : null;
        String str = absolutePath + File.separator + "video_cache";
        try {
            Result.Companion companion = Result.INSTANCE;
            AliPlayerGlobalSettings.enableLocalCache(true, 0, str);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ORPlayerPreloadManager d() {
        return new ORPlayerPreloadManager();
    }

    private final void l(String str) {
        this.f48418h = System.currentTimeMillis();
        oo.e.b(oo.e.f71074a, this.f48411a, "startPreload, url = " + str, false, 4, null);
        MediaLoader.getInstance().load(str, this.f48413c);
    }

    public final void c() {
        oo.e.b(oo.e.f71074a, this.f48411a, "cancelAll", false, 4, null);
        this.f48414d = "";
        this.f48417g.clear();
        this.f48415e.clear();
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ORPlayerPreloadManager$cancelAll$1(null), 3, null);
    }

    public final boolean e(String url) {
        Intrinsics.h(url, "url");
        return this.f48416f.contains(url);
    }

    public final boolean f(String url) {
        Intrinsics.h(url, "url");
        return (this.f48414d.length() > 0 && Intrinsics.c(url, this.f48414d)) || this.f48417g.contains(url);
    }

    public final void g(String url) {
        Intrinsics.h(url, "url");
        if (!f(url)) {
            oo.e.b(oo.e.f71074a, this.f48411a, "pause, but not contains, PausedContains =  " + this.f48415e.contains(url) + ", url = " + url, false, 4, null);
            return;
        }
        oo.e.b(oo.e.f71074a, this.f48411a, "pause, url = " + url, false, 4, null);
        this.f48415e.add(url);
        if (!Intrinsics.c(this.f48414d, url)) {
            if (this.f48417g.contains(url)) {
                this.f48417g.remove(url);
                return;
            }
            return;
        }
        this.f48414d = "";
        MediaLoader.getInstance().pause(url);
        if (this.f48417g.isEmpty()) {
            return;
        }
        Object objI0 = CollectionsKt.i0(this.f48417g);
        Intrinsics.g(objI0, "first(...)");
        String str = (String) objI0;
        this.f48414d = str;
        l(str);
        this.f48417g.remove(this.f48414d);
    }

    public final void h() {
        oo.e.b(oo.e.f71074a, this.f48411a, "pauseAll, paused size = " + this.f48415e.size() + ", urlsCache size = " + this.f48417g.size() + ", curUrl = " + this.f48414d + " ", false, 4, null);
        if (this.f48414d.length() > 0) {
            MediaLoader.getInstance().pause(this.f48414d);
            this.f48415e.add(this.f48414d);
            this.f48414d = "";
        }
        if (this.f48417g.isEmpty()) {
            return;
        }
        this.f48415e.addAll(this.f48417g);
        this.f48417g.clear();
    }

    public final void i(String url) {
        Intrinsics.h(url, "url");
        j(url, this.f48412b);
    }

    public final void j(String url, long j11) {
        Intrinsics.h(url, "url");
        if (j11 > 0) {
            this.f48413c = j11;
        }
        if (f(url)) {
            oo.e.b(oo.e.f71074a, this.f48411a, "start preload, contains return~ url = " + url, false, 4, null);
            return;
        }
        if (this.f48415e.contains(url)) {
            oo.e.b(oo.e.f71074a, this.f48411a, "start preload, pause contains resume~ url = " + url, false, 4, null);
            if (this.f48414d.length() > 0) {
                this.f48417g.add(url);
            } else {
                this.f48414d = url;
                MediaLoader.getInstance().resume(url);
            }
            this.f48415e.remove(url);
            return;
        }
        if (this.f48416f.contains(url)) {
            oo.e.b(oo.e.f71074a, this.f48411a, "is preloaded, return, url = " + url, false, 4, null);
            return;
        }
        if (this.f48414d.length() <= 0) {
            this.f48414d = url;
            l(url);
            return;
        }
        if (System.currentTimeMillis() - this.f48418h <= 5000) {
            oo.e.b(oo.e.f71074a, this.f48411a, "start preload, add to cache, url = " + url, false, 4, null);
            this.f48417g.add(url);
            return;
        }
        oo.e.i(oo.e.f71074a, this.f48411a, "last is more than 5 sec, preload new url", false, 4, null);
        if (this.f48417g.isEmpty()) {
            this.f48414d = url;
            l(url);
            return;
        }
        Object objI0 = CollectionsKt.i0(this.f48417g);
        Intrinsics.g(objI0, "first(...)");
        String str = (String) objI0;
        this.f48414d = str;
        l(str);
        this.f48417g.remove(this.f48414d);
        this.f48417g.add(url);
    }

    public final void k() {
        oo.e.b(oo.e.f71074a, this.f48411a, "resumeAll, paused size = " + this.f48415e.size() + ", urlsCache size = " + this.f48417g.size() + ", curUrl = " + this.f48414d + " ", false, 4, null);
        if (this.f48414d.length() > 0) {
            return;
        }
        if (!this.f48415e.isEmpty()) {
            Iterator it = this.f48415e.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                String str = (String) it.next();
                if (this.f48414d.length() > 0) {
                    this.f48417g.add(str);
                } else {
                    Intrinsics.e(str);
                    this.f48414d = str;
                    MediaLoader.getInstance().resume(str);
                }
            }
        }
        this.f48415e.clear();
    }

    @Override // com.aliyun.loader.MediaLoader.OnLoadStatusListener
    public void onCanceled(String str) {
    }

    @Override // com.aliyun.loader.MediaLoader.OnLoadStatusListener
    public void onCompleted(String str) {
        oo.e.i(oo.e.f71074a, this.f48411a, "preload complete, url = " + str, false, 4, null);
        this.f48415e.remove(str);
        if (this.f48417g.isEmpty()) {
            this.f48414d = "";
        } else {
            Object objI0 = CollectionsKt.i0(this.f48417g);
            Intrinsics.g(objI0, "first(...)");
            String str2 = (String) objI0;
            this.f48414d = str2;
            l(str2);
            this.f48417g.remove(this.f48414d);
        }
        if (str != null) {
            this.f48416f.add(str);
        }
    }

    @Override // com.aliyun.loader.MediaLoader.OnLoadStatusListener
    public void onError(String str, int i11, String str2) {
        oo.e.b(oo.e.f71074a, this.f48411a, "preload error, " + (i11 == -300 ? "is preloaded code" : "errorCode") + " = " + i11 + ", errorMsg= " + str2 + ", url = " + str, false, 4, null);
        if (!this.f48417g.isEmpty()) {
            Object objI0 = CollectionsKt.i0(this.f48417g);
            Intrinsics.g(objI0, "first(...)");
            String str3 = (String) objI0;
            this.f48414d = str3;
            l(str3);
            this.f48417g.remove(this.f48414d);
        }
        this.f48415e.remove(str);
        if (i11 == -300) {
            this.f48416f.add(str);
        }
    }
}
