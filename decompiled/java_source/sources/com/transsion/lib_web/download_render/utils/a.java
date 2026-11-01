package com.transsion.lib_web.download_render.utils;

import androidx.core.view.PointerIconCompat;
import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.data.PageListData;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f46185a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f46186b = new ConcurrentHashMap();

    private a() {
    }

    private final RenderStage c(String str) {
        try {
            return (RenderStage) f46186b.get(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private final void l(String str) {
        try {
            f46186b.remove(str);
        } catch (Throwable unused) {
        }
    }

    public final void a(String url, RenderSource source) {
        Intrinsics.h(url, "url");
        Intrinsics.h(source, "source");
        try {
            ConcurrentHashMap concurrentHashMap = f46186b;
            concurrentHashMap.remove(url);
            concurrentHashMap.put(url, new RenderStage(url, source.getDes(), System.currentTimeMillis(), false, false, false, null, null, null, null, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, null));
        } catch (Throwable unused) {
        }
    }

    public final void b() {
        List<PageData> listL;
        Map<String, PageData> mapH;
        try {
            com.transsion.lib_web.download_render.c cVar = com.transsion.lib_web.download_render.c.f46167a;
            PageListData pageListDataL = cVar.l();
            if (pageListDataL == null || (listL = pageListDataL.getH5Pages()) == null) {
                listL = CollectionsKt.l();
            }
            PageListData pageListDataL2 = cVar.l();
            if (pageListDataL2 == null || (mapH = pageListDataL2.getLocalH5Pages()) == null) {
                mapH = MapsKt.h();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (PageData pageData : listL) {
                String url = pageData.getUrl();
                if (url != null) {
                    PageData pageData2 = mapH.get(url);
                    String str = "";
                    if (pageData2 == null) {
                        String versionCode = pageData.getVersionCode();
                        if (versionCode != null) {
                            str = versionCode;
                        }
                        List<FileData> files = pageData.getFiles();
                        linkedHashMap.put(url, new DownloadData(url, str, files != null ? files.size() : 0, 0));
                    } else {
                        String versionCode2 = pageData.getVersionCode();
                        if (versionCode2 != null) {
                            str = versionCode2;
                        }
                        List<FileData> files2 = pageData.getFiles();
                        linkedHashMap.put(url, new DownloadData(url, str, files2 != null ? files2.size() : 0, pageData2.getLocalFileMap().size()));
                    }
                }
            }
            ReportUtil.f46183a.a(linkedHashMap);
        } catch (Throwable unused) {
        }
    }

    public final void d(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            if (!renderStageC.getStage1().getStageFinished()) {
                FileScoreData stage1 = renderStageC.getStage1();
                stage1.setException(stage1.getException() + 1);
            }
            if (!renderStageC.getStage2().getStageFinished()) {
                FileScoreData stage2 = renderStageC.getStage2();
                stage2.setException(stage2.getException() + 1);
            }
            if (renderStageC.getStage3().getStageFinished()) {
                return;
            }
            FileScoreData stage3 = renderStageC.getStage3();
            stage3.setException(stage3.getException() + 1);
        }
    }

    public final void e(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            if (!renderStageC.getStage1().getStageFinished()) {
                FileScoreData stage1 = renderStageC.getStage1();
                stage1.setFileDataNull(stage1.getFileDataNull() + 1);
            }
            if (!renderStageC.getStage2().getStageFinished()) {
                FileScoreData stage2 = renderStageC.getStage2();
                stage2.setFileDataNull(stage2.getFileDataNull() + 1);
            }
            if (renderStageC.getStage3().getStageFinished()) {
                return;
            }
            FileScoreData stage3 = renderStageC.getStage3();
            stage3.setFileDataNull(stage3.getFileDataNull() + 1);
        }
    }

    public final void f(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            if (!renderStageC.getStage1().getStageFinished()) {
                FileScoreData stage1 = renderStageC.getStage1();
                stage1.setFileOperateStatusAbort(stage1.getFileOperateStatusAbort() + 1);
            }
            if (!renderStageC.getStage2().getStageFinished()) {
                FileScoreData stage2 = renderStageC.getStage2();
                stage2.setFileOperateStatusAbort(stage2.getFileOperateStatusAbort() + 1);
            }
            if (renderStageC.getStage3().getStageFinished()) {
                return;
            }
            FileScoreData stage3 = renderStageC.getStage3();
            stage3.setFileOperateStatusAbort(stage3.getFileOperateStatusAbort() + 1);
        }
    }

    public final void g(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            if (!renderStageC.getStage1().getStageFinished()) {
                FileScoreData stage1 = renderStageC.getStage1();
                stage1.setFileUnExist(stage1.getFileUnExist() + 1);
            }
            if (!renderStageC.getStage2().getStageFinished()) {
                FileScoreData stage2 = renderStageC.getStage2();
                stage2.setFileUnExist(stage2.getFileUnExist() + 1);
            }
            if (renderStageC.getStage3().getStageFinished()) {
                return;
            }
            FileScoreData stage3 = renderStageC.getStage3();
            stage3.setFileUnExist(stage3.getFileUnExist() + 1);
        }
    }

    public final void h(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            if (!renderStageC.getStage1().getStageFinished()) {
                FileScoreData stage1 = renderStageC.getStage1();
                stage1.setHtmlFromRemote(stage1.getHtmlFromRemote() + 1);
            }
            if (!renderStageC.getStage2().getStageFinished()) {
                FileScoreData stage2 = renderStageC.getStage2();
                stage2.setHtmlFromRemote(stage2.getHtmlFromRemote() + 1);
            }
            if (renderStageC.getStage3().getStageFinished()) {
                return;
            }
            FileScoreData stage3 = renderStageC.getStage3();
            stage3.setHtmlFromRemote(stage3.getHtmlFromRemote() + 1);
        }
    }

    public final void i(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            if (!renderStageC.getStage1().getStageFinished()) {
                FileScoreData stage1 = renderStageC.getStage1();
                stage1.setScore(stage1.getScore() + 1);
            }
            if (!renderStageC.getStage2().getStageFinished()) {
                FileScoreData stage2 = renderStageC.getStage2();
                stage2.setScore(stage2.getScore() + 1);
            }
            if (renderStageC.getStage3().getStageFinished()) {
                return;
            }
            FileScoreData stage3 = renderStageC.getStage3();
            stage3.setScore(stage3.getScore() + 1);
        }
    }

    public final void j(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            renderStageC.setNeedReport(true);
        }
    }

    public final void k(String url, String originalUrl, int i11) {
        Intrinsics.h(url, "url");
        Intrinsics.h(originalUrl, "originalUrl");
        if (Intrinsics.c(url, originalUrl) && i11 == 100) {
            p(url);
        }
    }

    public final void m(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            renderStageC.setRenderWithDownload(true);
        }
    }

    public final void n() {
        ConcurrentHashMap concurrentHashMap = f46186b;
        if (concurrentHashMap.isEmpty()) {
            return;
        }
        Set setKeySet = concurrentHashMap.keySet();
        Intrinsics.g(setKeySet, "<get-keys>(...)");
        Object objH0 = CollectionsKt.h0(setKeySet);
        Intrinsics.g(objH0, "first(...)");
        String str = (String) objH0;
        q(str);
        ReportUtil reportUtil = ReportUtil.f46183a;
        Collection collectionValues = concurrentHashMap.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        reportUtil.c((RenderStage) CollectionsKt.h0(collectionValues));
        l(str);
    }

    public final void o(String url, CacheType cacheType) {
        Intrinsics.h(url, "url");
        Intrinsics.h(cacheType, "cacheType");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            renderStageC.setType(cacheType.getDes());
        }
    }

    public final void p(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            renderStageC.getStage1().setStageFinished(true);
            renderStageC.getStage1().setRenderTime(System.currentTimeMillis() - renderStageC.getRenderStartTime());
        }
    }

    public final void q(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            renderStageC.getStage3().setStageFinished(true);
            renderStageC.getStage3().setRenderTime(System.currentTimeMillis() - renderStageC.getRenderStartTime());
        }
    }

    public final void r(String url) {
        Intrinsics.h(url, "url");
        RenderStage renderStageC = c(url);
        if (renderStageC != null) {
            renderStageC.getStage2().setStageFinished(true);
            renderStageC.getStage2().setRenderTime(System.currentTimeMillis() - renderStageC.getRenderStartTime());
        }
    }
}
