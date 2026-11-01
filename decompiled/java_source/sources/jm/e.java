package jm;

import com.blankj.utilcode.util.o;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.data.PageListData;
import gm.i;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f66234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PageData f66235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f66236c;

    public e(long j11, PageData pageData) {
        Intrinsics.h(pageData, "pageData");
        this.f66234a = j11;
        this.f66235b = pageData;
        this.f66236c = "DR_ManifestDownloadTask";
    }

    @Override // jm.d
    public void start() {
        PageData pageData;
        String manifestUrl;
        List<PageData> h5Pages;
        PageListData pageListDataL = com.transsion.lib_web.download_render.c.f46167a.l();
        if (pageListDataL == null || (h5Pages = pageListDataL.getH5Pages()) == null) {
            pageData = null;
        } else {
            Iterator<T> it = h5Pages.iterator();
            do {
                if (!it.hasNext()) {
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                pageData = (PageData) it.next();
            } while (!Intrinsics.c(pageData.getUrl(), this.f66235b.getUrl()));
        }
        List<FileData> files = pageData != null ? pageData.getFiles() : null;
        if ((files != null && !files.isEmpty()) || pageData == null || (manifestUrl = pageData.getManifestUrl()) == null) {
            return;
        }
        try {
            try {
                i iVar = i.f63883a;
                iVar.a(this.f66236c, "<ManifestDownloadTask> start id:" + this.f66234a);
                Response responseExecute = com.transsion.lib_web.zip.loader.b.f46200a.d().newCall(new Request.Builder().url(manifestUrl).build()).execute();
                try {
                    if (!responseExecute.isSuccessful()) {
                        throw new IOException("Unexpected code " + responseExecute);
                    }
                    ResponseBody responseBodyBody = responseExecute.body();
                    if (responseBodyBody != null) {
                        try {
                            pageData.setFiles(((PageData) o.d(responseBodyBody.string(), PageData.class)).getFiles());
                            com.transsion.lib_web.download_render.c.f46167a.o(pageData);
                            Unit unit = Unit.f67061a;
                            CloseableKt.a(responseBodyBody, null);
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.a(responseBodyBody, th2);
                                throw th3;
                            }
                        }
                    }
                    CloseableKt.a(responseExecute, null);
                    iVar.a(this.f66236c, "<ManifestDownloadTask> end id:" + this.f66234a);
                    return;
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.a(responseExecute, th4);
                        throw th5;
                    }
                }
            } catch (Throwable th6) {
                i.f63883a.f(this.f66236c, "<ManifestDownloadTask> download: " + manifestUrl + " fail, msg:" + th6);
                Unit unit2 = Unit.f67061a;
                return;
            }
            i.f63883a.f(this.f66236c, "<ManifestDownloadTask> download: " + manifestUrl + " fail, msg:" + th6);
            Unit unit3 = Unit.f67061a;
            return;
        } finally {
            i.f63883a.a(this.f66236c, "<ManifestDownloadTask> end id:" + this.f66234a);
        }
    }
}
