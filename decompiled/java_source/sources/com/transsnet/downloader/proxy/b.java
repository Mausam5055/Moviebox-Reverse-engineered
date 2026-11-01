package com.transsnet.downloader.proxy;

import android.content.Context;
import com.danikula.videocache.HttpProxyCacheServer;
import com.danikula.videocache.q;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import lj.m0;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HttpProxyCacheServer f59585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DownloadFileCache f59586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f59587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f59588d = "";

    public final void a(String resourceId, c callback) {
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(callback, "callback");
        DownloadFileCache downloadFileCache = this.f59586b;
        if (downloadFileCache != null) {
            downloadFileCache.f(resourceId, callback);
        }
    }

    public final void b() {
        DownloadFileCache downloadFileCache = this.f59586b;
        if (downloadFileCache != null) {
            downloadFileCache.B();
        }
    }

    public final void c() {
        HttpProxyCacheServer httpProxyCacheServer = this.f59585a;
        if (httpProxyCacheServer != null) {
            httpProxyCacheServer.g();
        }
    }

    public final DownloadBean d() {
        DownloadFileCache downloadFileCache;
        DownloadFileCache downloadFileCache2 = this.f59586b;
        if ((downloadFileCache2 == null || !downloadFileCache2.l()) && (downloadFileCache = this.f59586b) != null) {
            return downloadFileCache.i();
        }
        return null;
    }

    public final m0 e() {
        DownloadFileCache downloadFileCache = this.f59586b;
        if (downloadFileCache != null) {
            return downloadFileCache.j();
        }
        return null;
    }

    public final String f(DownloadBean bean) {
        DownloadFileCache downloadFileCache;
        String strJ;
        Intrinsics.h(bean, "bean");
        DownloadFileCache downloadFileCache2 = this.f59586b;
        DownloadBean downloadBeanI = downloadFileCache2 != null ? downloadFileCache2.i() : null;
        if ((downloadBeanI == null || !Intrinsics.c(downloadBeanI.getResourceId(), bean.getResourceId())) && (downloadFileCache = this.f59586b) != null) {
            downloadFileCache.q(bean);
        }
        String resourceId = bean.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        this.f59588d = resourceId;
        HttpProxyCacheServer httpProxyCacheServer = this.f59585a;
        return (httpProxyCacheServer == null || (strJ = httpProxyCacheServer.j(bean.getUrl(), bean.getPath(), true)) == null) ? bean.getUrl() : strJ;
    }

    public final void g(Context context) {
        Intrinsics.h(context, "context");
        if (this.f59587c) {
            return;
        }
        this.f59587c = true;
        q.d(false);
        this.f59586b = new DownloadFileCache();
        this.f59585a = new HttpProxyCacheServer.a(context).c(new File(DownloadEsHelper.f59419m.a().h().getAbsolutePath())).d(this.f59586b).a();
    }

    public final void h() {
        this.f59588d = "";
        DownloadFileCache downloadFileCache = this.f59586b;
        if (downloadFileCache != null) {
            downloadFileCache.o();
        }
    }

    public final void i(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        DownloadFileCache downloadFileCache = this.f59586b;
        if (downloadFileCache != null) {
            downloadFileCache.n(resourceId);
        }
    }

    public final void j(String contentType, String resourceId) {
        Intrinsics.h(contentType, "contentType");
        Intrinsics.h(resourceId, "resourceId");
        if (this.f59588d.length() <= 0 || Intrinsics.c(this.f59588d, resourceId)) {
            DownloadFileCache downloadFileCache = this.f59586b;
            if (downloadFileCache != null) {
                downloadFileCache.p(contentType);
            }
            q.a("setCurDownloadContentType, contentType = " + contentType);
        }
    }
}
