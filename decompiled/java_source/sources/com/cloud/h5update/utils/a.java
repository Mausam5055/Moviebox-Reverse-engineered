package com.cloud.h5update.utils;

import android.content.Context;
import android.os.Bundle;
import com.cloud.h5update.TH5Update;
import com.cloud.h5update.bean.DownloadEntity;
import com.cloud.h5update.bean.PreloadResource;
import com.cloud.h5update.download.DownloadManager;
import com.cloud.h5update.download.DownloadTask;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f21292a = new a();

    /* JADX INFO: renamed from: com.cloud.h5update.utils.a$a, reason: collision with other inner class name */
    public static final class C0293a implements com.cloud.h5update.download.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PreloadResource f21293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f21294b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f21295c;

        C0293a(PreloadResource preloadResource, Ref.ObjectRef objectRef, Context context) {
            this.f21293a = preloadResource;
            this.f21294b = objectRef;
            this.f21295c = context;
        }

        @Override // com.cloud.h5update.download.a
        public void a(DownloadTask downloadTask) {
            t6.b bVarJ = TH5Update.f21238c.j();
            if (bVarJ != null) {
                bVarJ.onZipDownloadCancel(this.f21293a.getStaticZipUrl());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.cloud.h5update.download.a
        public void b(DownloadTask downloadTask) {
            t6.b bVarJ = TH5Update.f21238c.j();
            if (bVarJ != null) {
                bVarJ.onDownloadProcess(this.f21293a.getStaticZipUrl(), ((DownloadEntity) this.f21294b.element).getCompletedSize(), ((DownloadEntity) this.f21294b.element).getTotalSize());
            }
        }

        @Override // com.cloud.h5update.download.a
        public void c(DownloadTask downloadTask) {
        }

        @Override // com.cloud.h5update.download.a
        public void d(DownloadTask downloadTask, int i11) {
            t6.b bVarJ = TH5Update.f21238c.j();
            if (bVarJ != null) {
                String staticZipUrl = this.f21293a.getStaticZipUrl();
                Intrinsics.e(staticZipUrl);
                bVarJ.onError(staticZipUrl, 103, "ERROR_DOWNLOAD");
            }
        }

        @Override // com.cloud.h5update.download.a
        public void e(DownloadTask downloadTask) {
            new Bundle().putString("url", this.f21293a.getStaticZipUrl());
            TH5Update.a aVar = TH5Update.f21238c;
            t6.b bVarJ = aVar.j();
            if (bVarJ != null) {
                bVarJ.onZipDownloadFinish(this.f21293a.getStaticZipUrl());
            }
            l.f21309a.n(this.f21295c, this.f21293a);
            aVar.i().put(this.f21293a.getStaticZipUrl(), Boolean.TRUE);
            aVar.a();
        }
    }

    private a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, com.cloud.h5update.bean.DownloadEntity] */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, com.cloud.h5update.bean.DownloadEntity] */
    public final void a(Context context, PreloadResource preloadResource) {
        Intrinsics.h(context, "context");
        Intrinsics.h(preloadResource, "preloadResource");
        String staticZipUrl = preloadResource.getStaticZipUrl();
        if (staticZipUrl == null || StringsKt.q0(staticZipUrl)) {
            return;
        }
        l lVar = l.f21309a;
        String strI = lVar.i(preloadResource);
        DownloadManager.a aVar = DownloadManager.f21268g;
        DownloadTask downloadTaskH = aVar.a().h(strI);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new DownloadEntity(preloadResource.getEncryptedStaticZip(), staticZipUrl);
        C0293a c0293a = new C0293a(preloadResource, objectRef, context);
        if (downloadTaskH == null) {
            ((DownloadEntity) objectRef.element).setTaskId(strI);
            DownloadTask downloadTask = new DownloadTask((DownloadEntity) objectRef.element);
            downloadTask.setListener(c0293a);
            t6.b bVarJ = TH5Update.f21238c.j();
            if (bVarJ != null) {
                bVarJ.onZipDownloadStart(preloadResource.getStaticZipUrl());
            }
            new Bundle().putString("url", preloadResource.getStaticZipUrl());
            DownloadManager.c(aVar.a(), downloadTask, false, 2, null);
            return;
        }
        ?? downloadEntity = downloadTaskH.getDownloadEntity();
        if (downloadEntity == 0) {
        }
        objectRef.element = downloadEntity;
        downloadTaskH.setListener(c0293a);
        DownloadManager downloadManagerA = aVar.a();
        switch (downloadEntity.getTaskStatus()) {
            case 0:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 1:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 2:
                downloadManagerA.m(downloadTaskH);
                break;
            case 3:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 4:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 5:
                DownloadManager.c(downloadManagerA, downloadTaskH, false, 2, null);
                break;
            case 6:
                lVar.n(context, preloadResource);
                break;
        }
    }

    public final void b(String packageName, PreloadResource preloadResource) {
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(preloadResource, "preloadResource");
        String staticZipUrl = preloadResource.getStaticZipUrl();
        if (staticZipUrl == null || StringsKt.q0(staticZipUrl)) {
            return;
        }
        TH5Update.a aVar = TH5Update.f21238c;
        t6.b bVarJ = aVar.j();
        if (bVarJ != null) {
            String url = preloadResource.getUrl();
            if (url == null) {
                url = "";
            }
            if (!bVarJ.onZipTryDownload(packageName, url, preloadResource.getStaticZipUrl())) {
                return;
            }
        }
        Context contextC = aVar.c();
        if (!StringsKt.W(staticZipUrl, "http://", false, 2, null) && !StringsKt.W(staticZipUrl, "https://", false, 2, null)) {
            gg.b.f63567a.c("error url :" + staticZipUrl);
            t6.b bVarJ2 = aVar.j();
            if (bVarJ2 != null) {
                String staticZipUrl2 = preloadResource.getStaticZipUrl();
                Intrinsics.e(staticZipUrl2);
                bVarJ2.onError(staticZipUrl2, 101, "ERROR_PARAMS");
                return;
            }
            return;
        }
        if (StringsKt.G(staticZipUrl, ".zip", false, 2, null)) {
            a(contextC, preloadResource);
            return;
        }
        gg.b.f63567a.c("error url :" + staticZipUrl);
        t6.b bVarJ3 = aVar.j();
        if (bVarJ3 != null) {
            String staticZipUrl3 = preloadResource.getStaticZipUrl();
            Intrinsics.e(staticZipUrl3);
            bVarJ3.onError(staticZipUrl3, 101, "ERROR_PARAMS");
        }
    }
}
