package com.vungle.ads.internal.downloader;

import com.vungle.ads.NoSpaceError;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.task.PriorityRunnable;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.RealResponseBody;
import okio.GzipSource;
import okio.Okio;

/* JADX INFO: loaded from: classes7.dex */
public final class AssetDownloader implements Downloader {
    private static final String CONTENT_ENCODING = "Content-Encoding";
    private static final String CONTENT_TYPE = "Content-Type";
    public static final a Companion = new a(null);
    private static final int DOWNLOAD_CHUNK_SIZE = 2048;
    private static final String GZIP = "gzip";
    private static final int MINIMUM_SPACE_REQUIRED_MB = 20971520;
    private static final String TAG = "AssetDownloader";
    private final VungleThreadPoolExecutor downloadExecutor;
    private final Lazy okHttpClient$delegate;
    private final p pathProvider;
    private final List<DownloadRequest> transitioning;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b {
        public static final b INSTANCE = new b();
        private static OkHttpClient client;

        private b() {
        }

        public final OkHttpClient createOkHttpClient(p pathProvider) {
            Intrinsics.h(pathProvider, "pathProvider");
            OkHttpClient okHttpClient = client;
            if (okHttpClient != null) {
                return okHttpClient;
            }
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            OkHttpClient.Builder builderFollowSslRedirects = builder.readTimeout(60L, timeUnit).connectTimeout(60L, timeUnit).cache(null).followRedirects(true).followSslRedirects(true);
            ConfigManager configManager = ConfigManager.INSTANCE;
            if (configManager.isCleverCacheEnabled()) {
                long cleverCacheDiskSize = configManager.getCleverCacheDiskSize();
                int cleverCacheDiskPercentage = configManager.getCleverCacheDiskPercentage();
                String absolutePath = pathProvider.getCleverCacheDir().getAbsolutePath();
                Intrinsics.g(absolutePath, "pathProvider.getCleverCacheDir().absolutePath");
                long jMin = Math.min(cleverCacheDiskSize, (pathProvider.getAvailableBytes(absolutePath) * ((long) cleverCacheDiskPercentage)) / ((long) 100));
                if (jMin > 0) {
                    builderFollowSslRedirects.cache(new Cache(pathProvider.getCleverCacheDir(), jMin));
                } else {
                    o.Companion.w("OkHttpClientWrapper", "cache disk capacity size <=0, no clever cache active.");
                }
            }
            OkHttpClient okHttpClientBuild = builderFollowSslRedirects.build();
            client = okHttpClientBuild;
            return okHttpClientBuild;
        }
    }

    public AssetDownloader(VungleThreadPoolExecutor downloadExecutor, p pathProvider) {
        Intrinsics.h(downloadExecutor, "downloadExecutor");
        Intrinsics.h(pathProvider, "pathProvider");
        this.downloadExecutor = downloadExecutor;
        this.pathProvider = pathProvider;
        this.okHttpClient$delegate = LazyKt.b(new Function0<OkHttpClient>() { // from class: com.vungle.ads.internal.downloader.AssetDownloader$okHttpClient$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final OkHttpClient invoke() {
                return AssetDownloader.b.INSTANCE.createOkHttpClient(this.this$0.pathProvider);
            }
        });
        this.transitioning = new ArrayList();
    }

    private final boolean checkSpaceAvailable(DownloadRequest downloadRequest) {
        p pVar = this.pathProvider;
        String absolutePath = pVar.getVungleDir().getAbsolutePath();
        Intrinsics.g(absolutePath, "pathProvider.getVungleDir().absolutePath");
        long availableBytes = pVar.getAvailableBytes(absolutePath);
        if (availableBytes >= 20971520) {
            return true;
        }
        new NoSpaceError("Insufficient space " + availableBytes).setLogEntry$vungle_ads_release(downloadRequest.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
        return false;
    }

    private final ResponseBody decodeGzipIfNeeded(Response response) {
        ResponseBody responseBodyBody = response.body();
        if (!StringsKt.H(GZIP, Response.header$default(response, "Content-Encoding", null, 2, null), true) || responseBodyBody == null) {
            return responseBodyBody;
        }
        return new RealResponseBody(Response.header$default(response, "Content-Type", null, 2, null), -1L, Okio.buffer(new GzipSource(responseBodyBody.getSource())));
    }

    private final void deliverError(DownloadRequest downloadRequest, com.vungle.ads.internal.downloader.a aVar, com.vungle.ads.internal.downloader.a.C0702a c0702a) {
        if (aVar != null) {
            aVar.onError(c0702a, downloadRequest);
        }
    }

    private final void deliverSuccess(File file, DownloadRequest downloadRequest, com.vungle.ads.internal.downloader.a aVar) {
        o.Companion.d(TAG, "On success " + downloadRequest);
        if (aVar != null) {
            aVar.onSuccess(file, downloadRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: download$lambda-0, reason: not valid java name */
    public static final void m392download$lambda0(DownloadRequest downloadRequest, AssetDownloader this$0, com.vungle.ads.internal.downloader.a aVar) {
        Intrinsics.h(this$0, "this$0");
        this$0.deliverError(downloadRequest, aVar, new com.vungle.ads.internal.downloader.a.C0702a(-1, new OutOfMemory("Failed to execute download request: " + downloadRequest.getAsset().getServerPath()), com.vungle.ads.internal.downloader.a.C0702a.b.Companion.getINTERNAL_ERROR()));
    }

    private final OkHttpClient getOkHttpClient() {
        return (OkHttpClient) this.okHttpClient$delegate.getValue();
    }

    private final boolean isValidUrl(String str) {
        return (str == null || str.length() == 0 || HttpUrl.INSTANCE.parse(str) == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 15531. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final void launchRequest(com.vungle.ads.internal.downloader.DownloadRequest r25, com.vungle.ads.internal.downloader.a r26) {
        /*
            Method dump skipped, instruction units count: 1553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.downloader.AssetDownloader.launchRequest(com.vungle.ads.internal.downloader.DownloadRequest, com.vungle.ads.internal.downloader.a):void");
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void cancel(DownloadRequest downloadRequest) {
        if (downloadRequest == null || downloadRequest.isCancelled()) {
            return;
        }
        downloadRequest.cancel();
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void cancelAll() {
        Iterator<T> it = this.transitioning.iterator();
        while (it.hasNext()) {
            cancel((DownloadRequest) it.next());
        }
        this.transitioning.clear();
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void download(final DownloadRequest downloadRequest, final com.vungle.ads.internal.downloader.a aVar) {
        if (downloadRequest == null) {
            return;
        }
        this.transitioning.add(downloadRequest);
        this.downloadExecutor.execute(new PriorityRunnable() { // from class: com.vungle.ads.internal.downloader.AssetDownloader.download.1
            @Override // com.vungle.ads.internal.task.PriorityRunnable
            public int getPriority() {
                return downloadRequest.getPriority();
            }

            @Override // java.lang.Runnable
            public void run() {
                AssetDownloader.this.launchRequest(downloadRequest, aVar);
            }
        }, new Runnable() { // from class: com.vungle.ads.internal.downloader.b
            @Override // java.lang.Runnable
            public final void run() {
                AssetDownloader.m392download$lambda0(downloadRequest, this, aVar);
            }
        });
    }
}
