package com.transsnet.downloader.core.task;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.transsion.baselib.db.download.DownloadBean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes7.dex */
public final class DownloadFileInfoTask {
    private final void c(DownloadBean downloadBean, long j11) {
        if (j11 <= 0) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("download", "-------try_update_download_size, net size = " + downloadBean.getSize() + ", real size = " + j11, true);
        Long size = downloadBean.getSize();
        if (size != null && size.longValue() == j11) {
            return;
        }
        c0828a.c("download", "-------update_download_size, net size = " + downloadBean.getSize() + ", real size = " + j11, true);
        downloadBean.setSize(Long.valueOf(j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(DownloadBean downloadBean, a aVar, Continuation continuation) throws Throwable {
        DownloadFileInfoTask$checkWithOkhttp$1 downloadFileInfoTask$checkWithOkhttp$1;
        if (continuation instanceof DownloadFileInfoTask$checkWithOkhttp$1) {
            downloadFileInfoTask$checkWithOkhttp$1 = (DownloadFileInfoTask$checkWithOkhttp$1) continuation;
            int i11 = downloadFileInfoTask$checkWithOkhttp$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadFileInfoTask$checkWithOkhttp$1.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadFileInfoTask$checkWithOkhttp$1 = new DownloadFileInfoTask$checkWithOkhttp$1(this, continuation);
            }
        } else {
            downloadFileInfoTask$checkWithOkhttp$1 = new DownloadFileInfoTask$checkWithOkhttp$1(this, continuation);
        }
        Object obj = downloadFileInfoTask$checkWithOkhttp$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = downloadFileInfoTask$checkWithOkhttp$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            long j11 = 0;
            boolean z10 = false;
            Call callNewCall = null;
            try {
                OkHttpClient okHttpClientC = com.transsnet.downloader.core.b.f58613c.a().c();
                Request.Builder builder = new Request.Builder();
                builder.url(downloadBean.getUrl());
                builder.addHeader("Range", "bytes=0-");
                callNewCall = okHttpClientC.newCall(builder.build());
                Response responseExecute = FirebasePerfOkHttpClient.execute(callNewCall);
                int iCode = responseExecute.code();
                if (iCode == 200 || iCode == 206) {
                    ResponseBody responseBodyBody = responseExecute.body();
                    long contentLength = responseBodyBody != null ? responseBodyBody.getContentLength() : 0L;
                    c(downloadBean, contentLength);
                    z10 = true;
                    j11 = contentLength;
                }
                if (callNewCall != null) {
                    callNewCall.cancel();
                }
                downloadFileInfoTask$checkWithOkhttp$1.label = 1;
                if (aVar.a(z10, j11, downloadFileInfoTask$checkWithOkhttp$1) == objF) {
                    return objF;
                }
            } catch (Throwable th2) {
                try {
                    lg.a.f68839a.i("download", "DownloadFileInfoTask --> checkWithOkhttp --> e = " + th2, true);
                    if (callNewCall != null) {
                        callNewCall.cancel();
                    }
                    downloadFileInfoTask$checkWithOkhttp$1.label = 2;
                    if (aVar.a(false, 0L, downloadFileInfoTask$checkWithOkhttp$1) == objF) {
                        return objF;
                    }
                } catch (Throwable th3) {
                    if (callNewCall != null) {
                        callNewCall.cancel();
                    }
                    downloadFileInfoTask$checkWithOkhttp$1.L$0 = th3;
                    downloadFileInfoTask$checkWithOkhttp$1.label = 3;
                    if (aVar.a(false, 0L, downloadFileInfoTask$checkWithOkhttp$1) == objF) {
                        return objF;
                    }
                    throw th3;
                }
            }
        } else {
            if (i12 != 1 && i12 != 2) {
                if (i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Throwable th4 = (Throwable) downloadFileInfoTask$checkWithOkhttp$1.L$0;
                ResultKt.b(obj);
                throw th4;
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }

    public final void b(DownloadBean bean, a callback) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(callback, "callback");
        k.d(o0.a(y0.b()), null, null, new DownloadFileInfoTask$checkFileInfo$1(this, bean, callback, null), 3, null);
    }
}
