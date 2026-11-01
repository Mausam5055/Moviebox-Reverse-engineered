package com.cloud.h5update.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import com.cloud.h5update.TH5Update;
import com.cloud.h5update.bean.DownloadEntity;
import com.cloud.h5update.bean.PreloadResource;
import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.h5update.download.DownloadManager;
import com.cloud.h5update.service.LocalH5UpdateJobService;
import com.cloud.h5update.service.LocalH5UpdateService;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f21309a = new l();

    private l() {
    }

    private final void d(PreloadResource preloadResource) {
        String strF;
        String strI = i(preloadResource);
        DownloadEntity downloadEntityH = h(strI);
        if (downloadEntityH != null) {
            try {
                String filePath = downloadEntityH.getFilePath();
                String fileName = downloadEntityH.getFileName();
                if (fileName == null) {
                    fileName = "";
                }
                File file = new File(filePath, fileName);
                if (file.exists() && !file.delete()) {
                    gg.b.f63567a.b("failed to delete file:" + file.getAbsolutePath());
                }
                c(strI);
                DownloadManager.f21268g.a().d(strI);
                return;
            } catch (Exception e11) {
                gg.b.f63567a.e(e11);
                return;
            }
        }
        try {
            String url = preloadResource.getUrl();
            Intrinsics.e(url);
            String strK = k(url);
            TH5Update.a aVar = TH5Update.f21238c;
            if (aVar.g()) {
                strF = aVar.f() + File.separator + preloadResource.getEncryptedStaticZip();
            } else {
                strF = aVar.f();
            }
            File file2 = new File(strF, strK);
            if (!file2.exists() || file2.delete()) {
                return;
            }
            gg.b.f63567a.b("failed to delete file:" + file2.getAbsolutePath());
        } catch (Exception e12) {
            gg.b.f63567a.e(e12);
        }
    }

    private final String g(Context context, String str) {
        String path;
        if (!m() || context.getExternalCacheDir() == null) {
            path = context.getCacheDir().getPath();
        } else {
            File externalCacheDir = context.getExternalCacheDir();
            Intrinsics.e(externalCacheDir);
            path = externalCacheDir.getPath();
        }
        if (path == null) {
            path = context.getCacheDir().getPath();
        }
        String str2 = path + File.separator + str;
        File file = new File(str2);
        if (!file.exists() && file.mkdirs()) {
            gg.b.f63567a.b("create file dir success");
        }
        return str2;
    }

    private final File j(DownloadEntity downloadEntity) {
        if (downloadEntity == null) {
            return null;
        }
        String filePath = downloadEntity.getFilePath();
        if (filePath == null) {
            filePath = "";
        }
        return new File(filePath + File.separator + downloadEntity.getFileName());
    }

    private final void l(UpdateEntity updateEntity) {
        if (updateEntity.getUpdateMode() == null) {
            gg.b.f63567a.c("updateEntity.updateMode == null");
            return;
        }
        new Bundle().putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, updateEntity.getUpdateMode().intValue());
        Integer updateMode = updateEntity.getUpdateMode();
        if (updateMode != null && updateMode.intValue() == 1) {
            LocalH5UpdateService.INSTANCE.a(TH5Update.f21238c.c());
            return;
        }
        if (updateMode != null && updateMode.intValue() == 2) {
            LocalH5UpdateJobService.INSTANCE.a(TH5Update.f21238c.c());
            return;
        }
        if (updateMode != null && updateMode.intValue() == 3) {
            LocalH5UpdateService.Companion aVar = LocalH5UpdateService.INSTANCE;
            TH5Update.a aVar2 = TH5Update.f21238c;
            aVar.a(aVar2.c());
            LocalH5UpdateJobService.INSTANCE.a(aVar2.c());
            return;
        }
        if (updateMode != null && updateMode.intValue() == 4) {
            e(updateEntity);
        }
    }

    private final boolean m() {
        return Intrinsics.c("mounted", Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(PreloadResource preloadResource, Context context) {
        t6.b bVarJ;
        Intrinsics.h(context, "$context");
        TH5Update.a aVar = TH5Update.f21238c;
        if (aVar.j() != null) {
            t6.b bVarJ2 = aVar.j();
            Intrinsics.e(bVarJ2);
            String staticZipUrl = preloadResource != null ? preloadResource.getStaticZipUrl() : null;
            Intrinsics.e(staticZipUrl);
            if (!bVarJ2.onZipDownloaded(staticZipUrl)) {
                return;
            }
        }
        l lVar = f21309a;
        File fileJ = lVar.j(lVar.h(lVar.i(preloadResource)));
        if (h.f21296a.u(preloadResource != null ? preloadResource.getEncryptedStaticZip() : null, fileJ)) {
            lVar.r(context, fileJ);
            if (fileJ != null && fileJ.getParentFile() != null && (bVarJ = aVar.j()) != null) {
                String staticZipUrl2 = preloadResource != null ? preloadResource.getStaticZipUrl() : null;
                Intrinsics.e(staticZipUrl2);
                File parentFile = fileJ.getParentFile();
                String absolutePath = parentFile != null ? parentFile.getAbsolutePath() : null;
                Intrinsics.e(absolutePath);
                bVarJ.onUnZipDownloadFinish(staticZipUrl2, absolutePath, fileJ);
            }
            j jVar = j.f21304a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("last_update_url_version");
            sb2.append(preloadResource != null ? preloadResource.getStaticZipUrl() : null);
            String string = sb2.toString();
            Long version = preloadResource != null ? preloadResource.getVersion() : null;
            Intrinsics.e(version);
            jVar.g(string, version.longValue());
        } else {
            t6.b bVarJ3 = aVar.j();
            if (bVarJ3 != null) {
                String staticZipUrl3 = preloadResource != null ? preloadResource.getStaticZipUrl() : null;
                Intrinsics.e(staticZipUrl3);
                bVarJ3.onError(staticZipUrl3, 104, "ERROR_VALID");
            }
            gg.b bVar = gg.b.f63567a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("md5比对失败:");
            sb3.append(fileJ != null ? fileJ.getAbsolutePath() : null);
            bVar.c(sb3.toString());
        }
        if (preloadResource != null) {
            lVar.d(preloadResource);
        }
    }

    private final void r(Context context, File file) {
        if (file == null) {
            return;
        }
        gg.b.f63567a.g("开始安装zip文件, 文件路径:" + file.getAbsolutePath());
        s(context, file);
    }

    private final boolean s(Context context, File file) {
        if (context != null && file != null) {
            try {
                m mVar = m.f21310a;
                String absolutePath = file.getParentFile().getAbsolutePath();
                Intrinsics.g(absolutePath, "zipFile.parentFile.absolutePath");
                mVar.a(file, absolutePath);
                return true;
            } catch (IOException e11) {
                t6.b bVarJ = TH5Update.f21238c.j();
                if (bVarJ != null) {
                    String absolutePath2 = file.getAbsolutePath();
                    Intrinsics.e(absolutePath2);
                    bVarJ.onError(absolutePath2, 105, "ERROR_UNZIP");
                }
                gg.b.f63567a.g("An error occurred while install zip:" + e11.getMessage());
            }
        }
        return false;
    }

    public final boolean b() {
        Object systemService = TH5Update.f21238c.d().l().getSystemService("connectivity");
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.net.ConnectivityManager");
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final void c(String str) {
        if (str == null || StringsKt.q0(str)) {
            return;
        }
        j.f21304a.i(str);
    }

    public final void e(UpdateEntity updateEntity) {
        if (updateEntity == null) {
            return;
        }
        TH5Update.a aVar = TH5Update.f21238c;
        if (aVar.h()) {
            gg.b.f63567a.i("update task is going on");
            return;
        }
        aVar.p(true);
        List<PreloadResource> preloadResource = updateEntity.getPreloadResource();
        if (preloadResource != null) {
            for (PreloadResource preloadResource2 : preloadResource) {
                if (preloadResource2.getVersion() != null && !TextUtils.isEmpty(preloadResource2.getStaticZipUrl())) {
                    j jVar = j.f21304a;
                    long jC = jVar.c("last_update_url_version" + preloadResource2.getStaticZipUrl(), 0L);
                    if (jC == 0) {
                        jC = jVar.b("last_update_url_version" + preloadResource2.getStaticZipUrl(), 0);
                    }
                    if (jC >= preloadResource2.getVersion().longValue()) {
                        gg.b.f63567a.g("h5update no need to update for version:" + preloadResource2.getVersion());
                        t6.b bVarJ = TH5Update.f21238c.j();
                        if (bVarJ != null) {
                            String staticZipUrl = preloadResource2.getStaticZipUrl();
                            Intrinsics.e(staticZipUrl);
                            bVarJ.onNoNeedDownload(staticZipUrl);
                        }
                    } else {
                        l lVar = f21309a;
                        if (DownloadManager.f21268g.a().l(lVar.i(preloadResource2))) {
                            TH5Update.a aVar2 = TH5Update.f21238c;
                            lVar.n(aVar2.d().l(), preloadResource2);
                            ConcurrentHashMap concurrentHashMapI = aVar2.i();
                            String staticZipUrl2 = preloadResource2.getStaticZipUrl();
                            Intrinsics.e(staticZipUrl2);
                            concurrentHashMapI.put(staticZipUrl2, Boolean.TRUE);
                        } else {
                            a aVar3 = a.f21292a;
                            String packageName = updateEntity.getPackageName();
                            if (packageName == null) {
                                packageName = "";
                            }
                            aVar3.b(packageName, preloadResource2);
                        }
                    }
                }
            }
        }
        TH5Update.f21238c.p(false);
    }

    public final String f() {
        return g(TH5Update.f21238c.d().l(), "tupdate");
    }

    public final DownloadEntity h(String str) {
        if (str != null && !StringsKt.q0(str)) {
            try {
                return (DownloadEntity) j.f21304a.d(str, DownloadEntity.class);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    public final String i(PreloadResource preloadResource) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(preloadResource != null ? preloadResource.getStaticZipUrl() : null);
        sb2.append(preloadResource != null ? preloadResource.getVersion() : null);
        return String.valueOf(sb2.toString().hashCode());
    }

    public final String k(String downloadUrl) {
        Intrinsics.h(downloadUrl, "downloadUrl");
        if (TextUtils.isEmpty(downloadUrl)) {
            return "temp_" + System.currentTimeMillis() + ".zip";
        }
        String strSubstring = downloadUrl.substring(StringsKt.v0(downloadUrl, "/", 0, false, 6, null) + 1);
        Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
        if (StringsKt.G(strSubstring, ".zip", false, 2, null)) {
            return strSubstring;
        }
        return "temp_" + System.currentTimeMillis() + ".zip";
    }

    public final void n(final Context context, final PreloadResource preloadResource) {
        Intrinsics.h(context, "context");
        ThreadPoolExecutor threadPoolExecutorF = DownloadManager.f21268g.a().f();
        if (threadPoolExecutorF != null) {
            threadPoolExecutorF.execute(new Runnable() { // from class: com.cloud.h5update.utils.k
                @Override // java.lang.Runnable
                public final void run() {
                    l.o(preloadResource, context);
                }
            });
        }
    }

    public final void p(UpdateEntity updateEntity) {
        if (updateEntity == null || updateEntity.getVersion() == null) {
            return;
        }
        j jVar = j.f21304a;
        long jC = jVar.c("last_update_version", 0L);
        if (jC == 0) {
            jC = jVar.b("last_update_version", 0);
        }
        if (jC < ((int) updateEntity.getVersion().longValue())) {
            l(updateEntity);
            return;
        }
        t6.b bVarJ = TH5Update.f21238c.j();
        if (bVarJ != null) {
            String packageName = updateEntity.getPackageName();
            Intrinsics.e(packageName);
            bVarJ.onError(packageName, 102, "ERROR_VERSION");
        }
        gg.b.f63567a.g("no need update for version " + ((int) updateEntity.getVersion().longValue()));
    }

    public final Object q(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    public final void t(String str, DownloadEntity downloadEntity) throws Throwable {
        if (downloadEntity == null || str == null || StringsKt.q0(str)) {
            return;
        }
        j.f21304a.h(str, downloadEntity);
    }
}
