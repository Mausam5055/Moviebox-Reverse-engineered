package com.transsnet.downloader.core.task;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.blankj.utilcode.util.c0;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsnet.downloader.exception.DownloadPauseException;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001\u001bB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0015\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0016\u0010\u000eR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0019R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/transsnet/downloader/core/task/GetFileInfoTask;", "Ljava/lang/Runnable;", "Lcom/transsnet/downloader/core/c;", "downloadResponse", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadInfo", "Lcom/transsnet/downloader/proxy/b;", "proxyHelper", "Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;", "onGetFileInfoListener", "<init>", "(Lcom/transsnet/downloader/core/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/proxy/b;Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;)V", "", "executeConnection", "()V", "Ljava/net/HttpURLConnection;", "httpConnection", "", "isAcceptRanges", "parseHttpResponse", "(Ljava/net/HttpURLConnection;Z)V", "checkIfPause", "run", "Lcom/transsnet/downloader/proxy/b;", "Lcom/transsnet/downloader/core/c;", "Lcom/transsion/baselib/db/download/DownloadBean;", "Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class GetFileInfoTask implements Runnable {
    private final DownloadBean downloadInfo;
    private final com.transsnet.downloader.core.c downloadResponse;
    private final a onGetFileInfoListener;
    private final com.transsnet.downloader.proxy.b proxyHelper;

    public interface a {
    }

    public GetFileInfoTask(com.transsnet.downloader.core.c downloadResponse, DownloadBean downloadInfo, com.transsnet.downloader.proxy.b proxyHelper, a onGetFileInfoListener) {
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(downloadInfo, "downloadInfo");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(onGetFileInfoListener, "onGetFileInfoListener");
        this.proxyHelper = proxyHelper;
        this.downloadResponse = downloadResponse;
        this.downloadInfo = downloadInfo;
    }

    private final void checkIfPause() {
        if (this.downloadInfo.isPause()) {
            throw new DownloadPauseException(7);
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x004e: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:9:0x004e */
    private final void executeConnection() throws Throwable {
        HttpURLConnection httpURLConnection;
        Exception e11;
        ProtocolException e12;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                try {
                    URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(this.downloadInfo.getUrl()).openConnection());
                    Intrinsics.f(uRLConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    HttpURLConnection httpURLConnection3 = (HttpURLConnection) uRLConnection;
                    try {
                        httpURLConnection3.setConnectTimeout(60000);
                        httpURLConnection3.setReadTimeout(60000);
                        httpURLConnection3.setRequestMethod("GET");
                        httpURLConnection3.setRequestProperty("Range", "bytes=0-");
                        int responseCode = httpURLConnection3.getResponseCode();
                        com.transsnet.downloader.proxy.b bVar = this.proxyHelper;
                        String contentType = httpURLConnection3.getContentType();
                        Intrinsics.g(contentType, "getContentType(...)");
                        String resourceId = this.downloadInfo.getResourceId();
                        if (resourceId == null) {
                            resourceId = "";
                        }
                        bVar.j(contentType, resourceId);
                        if (responseCode == 200) {
                            parseHttpResponse(httpURLConnection3, false);
                        } else {
                            if (responseCode != 206) {
                                throw new DownloadException(3, "error response code:" + responseCode);
                            }
                            parseHttpResponse(httpURLConnection3, true);
                        }
                        httpURLConnection3.disconnect();
                    } catch (DownloadPauseException unused) {
                        httpURLConnection2 = httpURLConnection3;
                        lg.a.C0828a.f(lg.a.f68839a, "download", "file downloadPauseException downloadInfo: " + this.downloadInfo.getUrl(), false, 4, null);
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                    } catch (MalformedURLException e13) {
                        e = e13;
                        String message = e.getMessage();
                        if (message == null) {
                            message = "Bad url.";
                        }
                        throw new DownloadException(2, message, e);
                    } catch (ProtocolException e14) {
                        e12 = e14;
                        String message2 = e12.getMessage();
                        if (message2 == null) {
                            message2 = "Protocol error";
                        }
                        throw new DownloadException(4, message2, e12);
                    } catch (Exception e15) {
                        e11 = e15;
                        String message3 = e11.getMessage();
                        if (message3 == null) {
                            message3 = "header error";
                        }
                        throw new DownloadException(4, message3, e11);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            } catch (DownloadPauseException unused2) {
            } catch (MalformedURLException e16) {
                e = e16;
            } catch (ProtocolException e17) {
                e12 = e17;
            } catch (Exception e18) {
                e11 = e18;
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = httpURLConnection;
        }
    }

    private final void parseHttpResponse(HttpURLConnection httpConnection, boolean isAcceptRanges) throws DownloadException {
        String headerField;
        Long lValueOf;
        if (httpConnection == null || (headerField = httpConnection.getHeaderField(HttpHeaders.CONTENT_LENGTH)) == null) {
            headerField = "0";
        }
        if (TextUtils.isEmpty(headerField) || Intrinsics.c(headerField, "0") || Intrinsics.c(headerField, TmcConstants.COLD_OPEN_TYPE)) {
            lValueOf = httpConnection != null ? Long.valueOf(httpConnection.getContentLength()) : null;
        } else {
            lValueOf = Long.valueOf(Long.parseLong(headerField));
        }
        if (TextUtils.isEmpty(this.downloadInfo.getName())) {
            this.downloadInfo.setName(c0.h(System.currentTimeMillis()) + "-" + new Random().nextInt(100));
        }
        String headerField2 = httpConnection != null ? httpConnection.getHeaderField(HttpHeaders.CONTENT_DISPOSITION) : null;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "download", "file contentDis  " + headerField2, false, 4, null);
        List listS0 = headerField2 != null ? StringsKt.S0(headerField2, new String[]{"filename="}, false, 0, 6, null) : null;
        if (listS0 == null || !(!listS0.isEmpty()) || listS0.size() <= 1) {
            this.downloadInfo.setPath(DownloadEsHelper.f59419m.a().h().getAbsolutePath() + File.separatorChar + Uri.decode(this.downloadInfo.getName()).hashCode());
        } else {
            String strReplace = new Regex("[\\\\/:*?\"<>|]").replace(Uri.decode((String) listS0.get(1)).toString(), "");
            this.downloadInfo.setPath(DownloadEsHelper.f59419m.a().h().getAbsolutePath() + File.separatorChar + strReplace);
        }
        lg.a.C0828a.f(c0828a, "download", "filename  " + this.downloadInfo.getPath(), false, 4, null);
        if (lValueOf == null || lValueOf.longValue() <= 0) {
            throw new DownloadException(6, "content-length <= 0");
        }
        checkIfPause();
        throw null;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        try {
            executeConnection();
        } catch (DownloadException e11) {
            lg.a.f68839a.j("GetFileInfoTask --> run() --> executeConnection() --> e = " + e11, true);
            this.downloadResponse.b(this.downloadInfo, e11);
        } catch (Exception e12) {
            lg.a.f68839a.j("GetFileInfoTask --> run() --> executeConnection() --> e = " + e12, true);
            this.downloadResponse.b(this.downloadInfo, new DownloadException(9, e12));
        }
    }
}
