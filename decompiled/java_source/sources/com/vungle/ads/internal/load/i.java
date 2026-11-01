package com.vungle.ads.internal.load;

import com.vungle.ads.MraidJsError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class i {
    public static final int MRAID_AVAILABLE = 13;
    public static final int MRAID_DOWNLOADED = 10;
    public static final int MRAID_DOWNLOAD_FAILED = 12;
    public static final int MRAID_INVALID_ENDPOINT = 11;
    private static final String TAG = "MraidJsLoader";
    public static final i INSTANCE = new i();
    private static final AtomicBoolean isDownloading = new AtomicBoolean(false);
    private static final CopyOnWriteArrayList<a> listeners = new CopyOnWriteArrayList<>();

    public interface a {
        void onDownloadResult(int i11);
    }

    public static final class b implements com.vungle.ads.internal.downloader.a {
        final /* synthetic */ AdPayload $advertisement;
        final /* synthetic */ VungleThreadPoolExecutor $executor;
        final /* synthetic */ File $jsPath;
        final /* synthetic */ File $mraidJsFile;

        b(VungleThreadPoolExecutor vungleThreadPoolExecutor, AdPayload adPayload, File file, File file2) {
            this.$executor = vungleThreadPoolExecutor;
            this.$advertisement = adPayload;
            this.$jsPath = file;
            this.$mraidJsFile = file2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onError$lambda-0, reason: not valid java name */
        public static final void m409onError$lambda0(com.vungle.ads.internal.downloader.a.C0702a c0702a, DownloadRequest downloadRequest, AdPayload adPayload, File jsPath) {
            Throwable cause;
            Intrinsics.h(downloadRequest, "$downloadRequest");
            Intrinsics.h(jsPath, "$jsPath");
            try {
                try {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("download mraid js error: ");
                    sb2.append(c0702a != null ? Integer.valueOf(c0702a.getServerCode()) : null);
                    sb2.append(". Failed to load ");
                    sb2.append(downloadRequest.getAsset().getServerPath());
                    sb2.append(", reason: ");
                    sb2.append((c0702a == null || (cause = c0702a.getCause()) == null) ? null : cause.getMessage());
                    String string = sb2.toString();
                    o.Companion.d(i.TAG, string);
                    new MraidJsError(Sdk$SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, string).setLogEntry$vungle_ads_release(adPayload != null ? adPayload.getLogEntry$vungle_ads_release() : null).logErrorNoReturnValue$vungle_ads_release();
                    com.vungle.ads.internal.util.g.deleteContents(jsPath);
                } catch (Exception e11) {
                    o.Companion.e(i.TAG, "Failed to delete js assets", e11);
                }
            } finally {
                i.INSTANCE.notifyListeners(12);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onSuccess$lambda-1, reason: not valid java name */
        public static final void m410onSuccess$lambda1(File file, File mraidJsFile, AdPayload adPayload, File jsPath) {
            Intrinsics.h(file, "$file");
            Intrinsics.h(mraidJsFile, "$mraidJsFile");
            Intrinsics.h(jsPath, "$jsPath");
            try {
                if (file.exists() && file.length() > 0) {
                    i.INSTANCE.notifyListeners(10);
                    return;
                }
                new MraidJsError(Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED, "Mraid js downloaded but write failure: " + mraidJsFile.getAbsolutePath()).setLogEntry$vungle_ads_release(adPayload != null ? adPayload.getLogEntry$vungle_ads_release() : null).logErrorNoReturnValue$vungle_ads_release();
                com.vungle.ads.internal.util.g.deleteContents(jsPath);
                i.INSTANCE.notifyListeners(12);
            } catch (Exception e11) {
                o.Companion.e(i.TAG, "Failed to delete js assets", e11);
                i.INSTANCE.notifyListeners(12);
            }
        }

        @Override // com.vungle.ads.internal.downloader.a
        public void onError(final com.vungle.ads.internal.downloader.a.C0702a c0702a, final DownloadRequest downloadRequest) {
            Intrinsics.h(downloadRequest, "downloadRequest");
            VungleThreadPoolExecutor vungleThreadPoolExecutor = this.$executor;
            final AdPayload adPayload = this.$advertisement;
            final File file = this.$jsPath;
            vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.k
                @Override // java.lang.Runnable
                public final void run() {
                    i.b.m409onError$lambda0(c0702a, downloadRequest, adPayload, file);
                }
            });
        }

        @Override // com.vungle.ads.internal.downloader.a
        public void onSuccess(final File file, DownloadRequest downloadRequest) {
            Intrinsics.h(file, "file");
            Intrinsics.h(downloadRequest, "downloadRequest");
            VungleThreadPoolExecutor vungleThreadPoolExecutor = this.$executor;
            final File file2 = this.$mraidJsFile;
            final AdPayload adPayload = this.$advertisement;
            final File file3 = this.$jsPath;
            vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.j
                @Override // java.lang.Runnable
                public final void run() {
                    i.b.m410onSuccess$lambda1(file, file2, adPayload, file3);
                }
            });
        }
    }

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: downloadJs$lambda-1, reason: not valid java name */
    public static final void m408downloadJs$lambda1(a aVar, AdPayload adPayload, p pathProvider, Downloader downloader, VungleThreadPoolExecutor executor) {
        Intrinsics.h(pathProvider, "$pathProvider");
        Intrinsics.h(downloader, "$downloader");
        Intrinsics.h(executor, "$executor");
        if (aVar != null) {
            try {
                listeners.add(aVar);
            } catch (Exception e11) {
                o.Companion.e(TAG, "Failed to download mraid js", e11);
                return;
            }
        }
        if (isDownloading.getAndSet(true)) {
            o.Companion.w(TAG, "mraid js is downloading, waiting for the previous request.");
            return;
        }
        ConfigManager configManager = ConfigManager.INSTANCE;
        String mraidEndpoint = configManager.getMraidEndpoint();
        if (mraidEndpoint != null && mraidEndpoint.length() != 0) {
            File file = new File(pathProvider.getJsAssetDir(configManager.getMraidJsVersion()), com.vungle.ads.internal.b.MRAID_JS_FILE_NAME);
            if (file.exists()) {
                o.Companion.w(TAG, "mraid js already downloaded");
                INSTANCE.notifyListeners(13);
                return;
            }
            File jsDir = pathProvider.getJsDir();
            com.vungle.ads.internal.util.g.deleteContents(jsDir);
            String str = mraidEndpoint + "/mraid.min.js";
            String absolutePath = file.getAbsolutePath();
            Intrinsics.g(absolutePath, "mraidJsFile.absolutePath");
            downloader.download(new DownloadRequest(DownloadRequest.Priority.HIGH, new AdAsset(com.vungle.ads.internal.b.MRAID_JS_FILE_NAME, str, absolutePath, AdAsset.FileType.ASSET, true), adPayload != null ? adPayload.getLogEntry$vungle_ads_release() : null), new b(executor, adPayload, jsDir, file));
            return;
        }
        new MraidJsError(Sdk$SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, "Mraid endpoint is empty").setLogEntry$vungle_ads_release(adPayload != null ? adPayload.getLogEntry$vungle_ads_release() : null).logErrorNoReturnValue$vungle_ads_release();
        INSTANCE.notifyListeners(11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyListeners(int i11) {
        Iterator<T> it = listeners.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onDownloadResult(i11);
        }
        listeners.clear();
        isDownloading.set(false);
    }

    public final void downloadJs(final p pathProvider, final Downloader downloader, final VungleThreadPoolExecutor executor, final a aVar, final AdPayload adPayload) {
        Intrinsics.h(pathProvider, "pathProvider");
        Intrinsics.h(downloader, "downloader");
        Intrinsics.h(executor, "executor");
        executor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.h
            @Override // java.lang.Runnable
            public final void run() {
                i.m408downloadJs$lambda1(aVar, adPayload, pathProvider, downloader, executor);
            }
        });
    }
}
