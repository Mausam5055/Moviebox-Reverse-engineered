package com.transsion.lib_web.download_render;

import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.FileOperateStatus;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.data.PageListData;
import gm.i;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f46167a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f46168b = LazyKt.b(new Function0() { // from class: com.transsion.lib_web.download_render.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.m();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicBoolean f46169c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final PageListData f46170d = new PageListData(null, new ArrayList(), new HashMap(), 1, null);

    private c() {
    }

    private final MMKV j() {
        Object value = f46168b.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (MMKV) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV m() {
        return MMKV.I("web_file_download_with_render_page_list_data");
    }

    private final void n(PageData pageData) {
        String url = pageData.getUrl();
        if (url != null) {
            f46170d.getLocalH5Pages().put(url, pageData);
        }
    }

    private final PageData q(String str) {
        PageData pageData;
        boolean z10;
        String fileUrl;
        String str2 = null;
        try {
            PageData pageData2 = pageData;
            PageData pageData3 = new PageData(null, null, null, null, null, new LinkedHashMap(), null, null, null, 479, null);
            MMKV mmkvI = MMKV.I("web_file_download_with_render_page_data_" + str);
            String[] strArrA = mmkvI.a();
            boolean z11 = false;
            if (strArrA == null) {
                strArrA = new String[0];
            }
            String[] strArr = strArrA;
            if (strArr.length == 0) {
                return null;
            }
            int length = strArr.length;
            int i11 = 0;
            while (i11 < length) {
                String str3 = strArr[i11];
                if (mmkvI.c(str3)) {
                    if (Intrinsics.c(str3, "pageUrl")) {
                        String string = mmkvI.getString("pageUrl", str2);
                        i.f63883a.a("DR_FileDownloadDataManager", "<syncLocalPageData> url: " + string);
                        pageData = pageData2;
                        pageData.setUrl(string);
                    } else {
                        pageData = pageData2;
                        if (Intrinsics.c(str3, "pageVersion")) {
                            String string2 = mmkvI.getString("pageVersion", str2);
                            i.f63883a.a("DR_FileDownloadDataManager", "<syncLocalPageData> versionCode: " + string2);
                            pageData.setVersionCode(string2);
                        } else {
                            if (Intrinsics.c(str3, "pageUpgradeTime")) {
                                long j11 = mmkvI.getLong("pageUpgradeTime", 0L);
                                i.f63883a.a("DR_FileDownloadDataManager", "<syncLocalPageData> upgradeTime: " + j11);
                                pageData.setUpgradeTime(Long.valueOf(j11));
                            } else if (Intrinsics.c(str3, "pageUsedTime")) {
                                long j12 = mmkvI.getLong("pageUsedTime", 0L);
                                i.f63883a.a("DR_FileDownloadDataManager", "<syncLocalPageData> usedTime: " + j12);
                                pageData.setUsedTime(Long.valueOf(j12));
                            } else if (Intrinsics.c(str3, "pageDownloadStatus")) {
                                z10 = false;
                                boolean z12 = mmkvI.getBoolean("pageDownloadStatus", false);
                                i.f63883a.a("DR_FileDownloadDataManager", "<syncLocalPageData> downloadStatus: " + z12);
                                pageData.setDownloadStatus(Boolean.valueOf(z12));
                            } else {
                                z10 = false;
                                try {
                                    FileData fileData = (FileData) new Gson().fromJson(mmkvI.getString(str3, ""), FileData.class);
                                    if (fileData != null && (fileUrl = fileData.getFileUrl()) != null) {
                                        pageData.getLocalFileMap().put(fileUrl, fileData);
                                    }
                                } catch (Throwable th2) {
                                    i.f63883a.b("DR_FileDownloadDataManager", "<syncLocalPageData> getFile fail: " + th2);
                                }
                            }
                            z10 = false;
                        }
                    }
                    z10 = z11;
                } else {
                    z10 = z11;
                    pageData = pageData2;
                }
                i11++;
                z11 = z10;
                pageData2 = pageData;
                str2 = null;
            }
            PageData pageData4 = pageData2;
            try {
                n(pageData4);
                return pageData4;
            } catch (Throwable th3) {
                th = th3;
                i.f63883a.b("DR_FileDownloadDataManager", "<syncLocalPageData> fail: " + th);
                return null;
            }
        } catch (Throwable th4) {
            th = th4;
            i.f63883a.b("DR_FileDownloadDataManager", "<syncLocalPageData> fail: " + th);
            return null;
        }
    }

    public final void b(String url, String version, FileData fileData) {
        FileData fileData2;
        Intrinsics.h(url, "url");
        Intrinsics.h(version, "version");
        Intrinsics.h(fileData, "fileData");
        try {
            PageListData pageListData = f46170d;
            if (!pageListData.getLocalH5Pages().containsKey(url)) {
                pageListData.getLocalH5Pages().put(url, new PageData(url, version, null, null, null, null, null, null, null, DownloadException.EXCEPTION_IO_MALFORMED_URL, null));
            }
            String fileUrl = fileData.getFileUrl();
            if (fileUrl != null) {
                PageData pageData = pageListData.getLocalH5Pages().get(url);
                if (pageData != null) {
                    pageData.setVersionCode(version);
                    fileData2 = fileData;
                    pageData.getLocalFileMap().put(fileUrl, fileData2);
                } else {
                    fileData2 = fileData;
                }
                lh.a.C0830a c0830a = lh.a.f68842a;
                MMKV.I("web_file_download_with_render_page_data_" + c0830a.a(url)).putString(c0830a.a(fileUrl), new Gson().toJson(fileData2));
            }
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<addLocalFile> fail: " + th2);
        }
    }

    public final void c(String url, String fileUrl) {
        Map<String, FileData> localFileMap;
        Intrinsics.h(url, "url");
        Intrinsics.h(fileUrl, "fileUrl");
        try {
            PageData pageData = f46170d.getLocalH5Pages().get(url);
            if (pageData != null && (localFileMap = pageData.getLocalFileMap()) != null) {
                localFileMap.remove(fileUrl);
            }
            lh.a.C0830a c0830a = lh.a.f68842a;
            MMKV.I("web_file_download_with_render_page_data_" + c0830a.a(url)).remove(c0830a.a(fileUrl));
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<deleteLocalFile> fail: " + th2);
        }
    }

    public final void d(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        try {
            f46170d.getLocalH5Pages().remove(str);
            String str2 = "web_file_download_with_render_page_data_" + lh.a.f68842a.a(str);
            MMKV.I(str2).clearAll();
            String strA = MMKV.A();
            File file = new File(strA, str2);
            File file2 = new File(strA, str2 + ".crc");
            if (file.exists()) {
                i.f63883a.f("DR_FileDownloadDataManager", "<deleteLocalPageData> url:" + str + ", targetFile:" + file.getAbsolutePath());
                file.delete();
            }
            if (file2.exists()) {
                i.f63883a.f("DR_FileDownloadDataManager", "<deleteLocalPageData> url:" + str + ", targetCRCFile:" + file2.getAbsolutePath());
                file2.delete();
            }
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<deleteLocalPageData> url:" + str + ", fail: " + th2);
        }
    }

    public final FileData e(FileData remoteFileData) {
        Intrinsics.h(remoteFileData, "remoteFileData");
        String fileUrl = remoteFileData.getFileUrl();
        String md5 = remoteFileData.getMd5();
        Iterator<T> it = f46170d.getLocalH5Pages().values().iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, FileData> entry : ((PageData) it.next()).getLocalFileMap().entrySet()) {
                String key = entry.getKey();
                FileData value = entry.getValue();
                if (Intrinsics.c(fileUrl, key)) {
                    String fileLocalPath$lib_web_release = value.getFileLocalPath$lib_web_release();
                    if (fileLocalPath$lib_web_release == null) {
                        fileLocalPath$lib_web_release = "";
                    }
                    if (new File(fileLocalPath$lib_web_release).exists() && Intrinsics.c(md5, value.getMd5())) {
                        remoteFileData.setFileCopyOriginLocalPath$lib_web_release(value.getFileLocalPath$lib_web_release());
                        remoteFileData.setFileOperateStatus$lib_web_release(FileOperateStatus.COPY);
                        return remoteFileData;
                    }
                }
            }
        }
        return null;
    }

    public final FileData f(String fileUrl) {
        Intrinsics.h(fileUrl, "fileUrl");
        Iterator<Map.Entry<String, PageData>> it = f46170d.getLocalH5Pages().entrySet().iterator();
        FileData fileData = null;
        while (it.hasNext()) {
            PageData value = it.next().getValue();
            if (value.getLocalFileMap().containsKey(fileUrl)) {
                fileData = value.getLocalFileMap().get(fileUrl);
            }
        }
        return fileData;
    }

    public final PageData g(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return f46170d.getLocalH5Pages().get(str);
    }

    public final PageData h(String str) {
        Object next;
        if (str == null || str.length() == 0) {
            return null;
        }
        String strA = com.transsion.lib_web.download_render.utils.e.f46190a.a(str);
        Iterator<T> it = f46170d.getLocalH5Pages().entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(com.transsion.lib_web.download_render.utils.e.f46190a.a((String) ((Map.Entry) next).getKey()), strA));
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return (PageData) entry.getValue();
        }
        return null;
    }

    public final String i(String str) {
        if (str != null && str.length() != 0) {
            MMKV mmkvI = MMKV.I("web_file_download_with_render_page_data_" + str);
            if (mmkvI.c("pageUrl")) {
                return mmkvI.getString("pageUrl", "");
            }
        }
        return null;
    }

    public final String k() {
        return j().getString("pageListVersion", null);
    }

    public final PageListData l() {
        try {
            List<PageData> h5Pages = f46170d.getH5Pages();
            if (h5Pages == null || h5Pages.isEmpty()) {
                String[] strArrA = j().a();
                if (strArrA == null) {
                    strArrA = new String[0];
                }
                PageListData pageListData = new PageListData(null, new ArrayList(), null, 5, null);
                for (String str : strArrA) {
                    c cVar = f46167a;
                    if (cVar.j().c(str)) {
                        if (Intrinsics.c(str, "pageListVersion")) {
                            pageListData.setVersion(cVar.j().getString("pageListVersion", null));
                        } else {
                            PageData pageData = (PageData) o.d(cVar.j().getString(str, ""), PageData.class);
                            List<PageData> h5Pages2 = pageListData.getH5Pages();
                            if (h5Pages2 != null) {
                                Intrinsics.e(pageData);
                                h5Pages2.add(pageData);
                            }
                        }
                    }
                }
                f46170d.setH5Pages(pageListData.getH5Pages());
            }
            return f46170d;
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<getRemotePageListData> fail: " + th2);
            return null;
        }
    }

    public final void o(PageData pageData) {
        int i11;
        Intrinsics.h(pageData, "pageData");
        try {
            String url = pageData.getUrl();
            if (url == null) {
                return;
            }
            List<PageData> h5Pages = f46170d.getH5Pages();
            if (h5Pages == null) {
                i11 = -1;
                break;
            }
            Iterator<PageData> it = h5Pages.iterator();
            i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                } else if (Intrinsics.c(it.next().getUrl(), url)) {
                    break;
                } else {
                    i11++;
                }
            }
            if (i11 == -1) {
                j().remove(lh.a.f68842a.a(url));
                return;
            }
            PageListData pageListData = f46170d;
            List<PageData> h5Pages2 = pageListData.getH5Pages();
            PageData pageData2 = h5Pages2 != null ? h5Pages2.get(i11) : null;
            if (Intrinsics.c(pageData2 != null ? pageData2.getVersionCode() : null, pageData.getVersionCode())) {
                List<PageData> h5Pages3 = pageListData.getH5Pages();
                if (h5Pages3 != null) {
                    h5Pages3.add(i11, pageData);
                }
                j().putString(lh.a.f68842a.a(url), o.j(pageData));
            }
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<setRemotePageData> fail: " + th2);
        }
    }

    public final void p(PageListData pageListData) {
        Intrinsics.h(pageListData, "pageListData");
        try {
            String[] strArrA = j().a();
            if (strArrA == null) {
                strArrA = new String[0];
            }
            PageListData pageListData2 = new PageListData(null, new ArrayList(), null, 5, null);
            for (String str : strArrA) {
                c cVar = f46167a;
                if (cVar.j().c(str) && !Intrinsics.c(str, "pageListVersion")) {
                    PageData pageData = (PageData) o.d(cVar.j().getString(str, ""), PageData.class);
                    List<PageData> h5Pages = pageListData2.getH5Pages();
                    if (h5Pages != null) {
                        Intrinsics.e(pageData);
                        h5Pages.add(pageData);
                    }
                }
            }
            List<PageData> h5Pages2 = pageListData.getH5Pages();
            if (h5Pages2 != null) {
                for (PageData pageData2 : h5Pages2) {
                    List<PageData> h5Pages3 = pageListData2.getH5Pages();
                    if (h5Pages3 != null) {
                        for (PageData pageData3 : h5Pages3) {
                            if (Intrinsics.c(pageData2.getUrl(), pageData3.getUrl()) && Intrinsics.c(pageData2.getVersionCode(), pageData3.getVersionCode())) {
                                pageData2.setFiles(pageData3.getFiles());
                                break;
                            }
                        }
                    }
                }
            }
            f46170d.setH5Pages(pageListData.getH5Pages());
            j().clearAll();
            j().putString("pageListVersion", pageListData.getVersion());
            List<PageData> h5Pages4 = pageListData.getH5Pages();
            if (h5Pages4 != null) {
                for (PageData pageData4 : h5Pages4) {
                    String url = pageData4.getUrl();
                    if (url != null) {
                        f46167a.j().putString(lh.a.f68842a.a(url), o.j(pageData4));
                    }
                }
            }
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<setRemotePageListData> fail: " + th2);
        }
    }

    public final void r() {
        if (f46169c.compareAndSet(false, true)) {
            String absolutePath = new File(Utils.a().getFilesDir(), "DownloadRender").getAbsolutePath();
            com.transsion.lib_web.download_render.utils.c cVar = com.transsion.lib_web.download_render.utils.c.f46187a;
            Intrinsics.e(absolutePath);
            for (File file : cVar.c(absolutePath)) {
                c cVar2 = f46167a;
                String name = file.getName();
                Intrinsics.g(name, "getName(...)");
                cVar2.q(name);
            }
        }
    }

    public final void s(String url, boolean z10) {
        Intrinsics.h(url, "url");
        try {
            PageData pageData = f46170d.getLocalH5Pages().get(url);
            if (pageData != null) {
                pageData.setDownloadStatus(Boolean.valueOf(z10));
            }
            MMKV.I("web_file_download_with_render_page_data_" + lh.a.f68842a.a(url)).putBoolean("pageDownloadStatus", z10);
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<updateLocalPageDownloadStatus> fail: " + th2);
        }
    }

    public final void t(String url) {
        Intrinsics.h(url, "url");
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            PageData pageData = f46170d.getLocalH5Pages().get(url);
            if (pageData != null) {
                pageData.setUpgradeTime(Long.valueOf(jCurrentTimeMillis));
            }
            MMKV.I("web_file_download_with_render_page_data_" + lh.a.f68842a.a(url)).putLong("pageUpgradeTime", jCurrentTimeMillis);
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<updateLocalPageUpgradeTime> fail: " + th2);
        }
    }

    public final void u(String url) {
        Intrinsics.h(url, "url");
        try {
            MMKV.I("web_file_download_with_render_page_data_" + lh.a.f68842a.a(url)).putString("pageUrl", url);
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<updateLocalPageUrl> fail: " + th2);
        }
    }

    public final void v(String url) {
        Intrinsics.h(url, "url");
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            PageData pageData = f46170d.getLocalH5Pages().get(url);
            if (pageData != null) {
                pageData.setUsedTime(Long.valueOf(jCurrentTimeMillis));
            }
            MMKV.I("web_file_download_with_render_page_data_" + lh.a.f68842a.a(url)).putLong("pageUsedTime", jCurrentTimeMillis);
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<updateLocalPageUsedTime> fail: " + th2);
        }
    }

    public final void w(String url, String versionCode) {
        Intrinsics.h(url, "url");
        Intrinsics.h(versionCode, "versionCode");
        try {
            PageData pageData = f46170d.getLocalH5Pages().get(url);
            if (pageData != null) {
                pageData.setVersionCode(versionCode);
            }
            MMKV.I("web_file_download_with_render_page_data_" + lh.a.f68842a.a(url)).putString("pageVersion", versionCode);
        } catch (Throwable th2) {
            i.f63883a.b("DR_FileDownloadDataManager", "<updateLocalPageVersion> fail: " + th2);
        }
    }
}
