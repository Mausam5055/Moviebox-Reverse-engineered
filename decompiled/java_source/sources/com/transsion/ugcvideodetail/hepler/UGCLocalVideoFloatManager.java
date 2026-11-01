package com.transsion.ugcvideodetail.hepler;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.therouter.TheRouter;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.push.api.IPushProvider;
import com.transsnet.downloader.manager.p;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public final class UGCLocalVideoFloatManager extends com.transsion.videofloat.manager.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final UGCLocalVideoFloatManager f56287b = new UGCLocalVideoFloatManager();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Map f56288c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f56289d = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.hepler.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCLocalVideoFloatManager.o();
        }
    });

    private UGCLocalVideoFloatManager() {
    }

    private final MediaItem d(DownloadBean downloadBean) {
        String ugcVideoName = downloadBean.getUgcVideoName();
        if (ugcVideoName == null) {
            ugcVideoName = downloadBean.getTitleName();
        }
        String str = ugcVideoName;
        String subjectId = downloadBean.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        String str2 = subjectId;
        String cover = downloadBean.getCover();
        String ugcVideoId = downloadBean.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = downloadBean.getResourceId();
        }
        return new MediaItem(str, "", cover, null, null, null, e(downloadBean), null, str2, ugcVideoId, null, null, null, null, 15544, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0095  */
    private final PendingIntent e(DownloadBean downloadBean) {
        Intent intentA;
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        if (iPushProvider != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            intentA = iPushProvider.a(applicationA);
            if (intentA != null) {
                intentA.addFlags(603979776);
                intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/ugc_video/local_detail" + UrlUtils.AND_MARK + "id" + UrlUtils.EQUAL_MARK + downloadBean.getUgcVideoId() + UrlUtils.AND_MARK + "resource_id" + UrlUtils.EQUAL_MARK + downloadBean.getResourceId() + UrlUtils.AND_MARK + "ugcCategory" + UrlUtils.EQUAL_MARK + downloadBean.getUgcVideoType() + UrlUtils.AND_MARK + "ops" + UrlUtils.EQUAL_MARK + downloadBean.getOps() + UrlUtils.AND_MARK + "extra_page_from" + UrlUtils.EQUAL_MARK + "media_notification"));
            } else {
                intentA = null;
            }
        } else {
            intentA = null;
        }
        return PendingIntent.getActivity(Utils.a(), 0, intentA, f());
    }

    private final int f() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UGCVideoDetailPlayDao g() {
        return (UGCVideoDetailPlayDao) f56289d.getValue();
    }

    private final void k(px.a aVar, DownloadBean downloadBean) {
        String strH;
        String path;
        if (!downloadBean.isCompleted() || (path = downloadBean.getPath()) == null || path.length() == 0) {
            strH = p.f59500a.a(Utils.a()).h(downloadBean);
        } else {
            strH = downloadBean.getPath();
            Intrinsics.e(strH);
        }
        String str = strH;
        lg.a.f68839a.c("VideoFloat", "local-----playNextWithLocalData, 开始播放, url:" + str, true);
        String path2 = downloadBean.getPath();
        if (path2 == null) {
            path2 = str;
        }
        ao.e eVar = new ao.e(String.valueOf(path2.hashCode()), str, 0, PlayMimeType.DEFAULT, d(downloadBean), 4, null);
        aVar.y(downloadBean);
        aVar.z(downloadBean.getEp());
        aVar.H(downloadBean.getSe());
        aVar.G(downloadBean.getResourceId());
        aVar.F(0L);
        aVar.f().reset();
        aVar.f().setDataSource(eVar);
        aVar.f().prepare();
        aVar.f().play();
    }

    private final void m(px.a aVar) {
        if (aVar != null) {
            String str = aVar.r() + "+" + aVar.q() + "+" + aVar.c();
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "saveHistory--key:" + str + ", value:" + aVar.n(), false, 4, null);
            f56288c.put(str, Long.valueOf(aVar.n()));
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new UGCLocalVideoFloatManager$saveHistoryInner$2(aVar, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailPlayDao o() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public void h() {
        a().clear();
    }

    public void i(px.a aVar) {
        DownloadBean downloadBeanB;
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "openDetail--1", false, 4, null);
        m(aVar);
        if (aVar == null || (downloadBeanB = aVar.b()) == null) {
            return;
        }
        ak.k.p(TheRouter.c("/ugc_video/local_detail").K("id", downloadBeanB.getUgcVideoId()).K("resource_id", downloadBeanB.getResourceId()).K("ugcCategory", downloadBeanB.getUgcVideoType()).K("ops", downloadBeanB.getOps()));
    }

    public boolean j(px.a aVar) {
        DownloadBean downloadBeanB;
        List<DownloadBean> seriesList;
        int i11;
        String path;
        if (aVar == null || (downloadBeanB = aVar.b()) == null || (seriesList = downloadBeanB.getSeriesList()) == null || seriesList.isEmpty()) {
            return false;
        }
        DownloadBean downloadBeanB2 = aVar.b();
        Iterator<DownloadBean> it = seriesList.iterator();
        int i12 = 0;
        while (true) {
            if (!it.hasNext()) {
                i12 = -1;
                break;
            }
            DownloadBean next = it.next();
            if (Intrinsics.c(next.getUgcVideoId(), downloadBeanB2 != null ? downloadBeanB2.getUgcVideoId() : null)) {
                break;
            }
            if (Intrinsics.c(next.getResourceId(), downloadBeanB2 != null ? downloadBeanB2.getResourceId() : null)) {
                break;
            }
            i12++;
        }
        if (i12 < 0 || (i11 = i12 + 1) >= seriesList.size()) {
            lg.a.f68839a.c("VideoFloat", "local-----playNext, 没有下一集", true);
            return false;
        }
        DownloadBean downloadBean = seriesList.get(i11);
        if (downloadBean.isCompleted() && ((path = downloadBean.getPath()) == null || path.length() == 0)) {
            lg.a.f68839a.c("VideoFloat", "local-----playNext, 下一集文件不存在，无法播放", true);
            return false;
        }
        lg.a.f68839a.c("VideoFloat", "local-----playNext, name:" + downloadBean.getUgcVideoName() + ",nextEp:" + downloadBean.getEp(), true);
        k(aVar, downloadBean);
        return true;
    }

    public void l(px.a aVar) {
        m(aVar);
    }

    public void n(List list) {
        Intrinsics.h(list, "list");
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "stream-----setPlayList:" + list.size(), false, 4, null);
        a().clear();
        a().addAll(list);
    }
}
