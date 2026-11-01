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
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.push.api.IPushProvider;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public final class UGCVideoFloatManager extends com.transsion.videofloat.manager.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final UGCVideoFloatManager f56290b = new UGCVideoFloatManager();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Map f56291c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f56292d = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.hepler.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCVideoFloatManager.w();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f56293e = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.hepler.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCVideoFloatManager.v();
        }
    });

    private UGCVideoFloatManager() {
    }

    private final MediaItem g(go.a aVar, UGCVideoPlayInfo uGCVideoPlayInfo) {
        return new MediaItem(aVar != null ? aVar.t() : null, "", aVar != null ? aVar.c() : null, null, null, null, h(aVar, uGCVideoPlayInfo), null, aVar != null ? aVar.o() : null, uGCVideoPlayInfo.getUgcVideoId(), null, null, null, null, 15544, null);
    }

    private final PendingIntent h(go.a aVar, UGCVideoPlayInfo uGCVideoPlayInfo) {
        UGCVideo uGCVideoU;
        UGCVideo uGCVideoU2;
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/ugc_video/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_resource_id");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(uGCVideoPlayInfo.getUgcVideoId());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("ugc_video_type");
        sb2.append(UrlUtils.EQUAL_MARK);
        Intent intent = null;
        sb2.append((aVar == null || (uGCVideoU2 = aVar.u()) == null) ? null : uGCVideoU2.getCategory());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("id");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append((aVar == null || (uGCVideoU = aVar.u()) == null) ? null : uGCVideoU.getUgcVideoId());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("ops");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.q() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append("media_notification");
        sb2.append(UrlUtils.AND_MARK);
        if (iPushProvider != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            Intent intentA = iPushProvider.a(applicationA);
            if (intentA != null) {
                intentA.addFlags(603979776);
                intentA.setData(Uri.parse(sb2.toString()));
                intent = intentA;
            }
        }
        return PendingIntent.getActivity(Utils.a(), 0, intent, j());
    }

    private final int j() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    private final void k(String str, Function1 function1) {
        if (str == null || str.length() == 0) {
            function1.invoke(null);
        } else {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new UGCVideoFloatManager$getPlayInfo$1(str, function1, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final rv.a l() {
        return (rv.a) f56293e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UGCVideoDetailPlayDao m() {
        return (UGCVideoDetailPlayDao) f56292d.getValue();
    }

    private final void n(px.a aVar, go.a aVar2, UGCVideoPlayInfo uGCVideoPlayInfo) {
        LinkedHashMap linkedHashMap;
        UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(uGCVideoPlayInfo.getResources());
        if (uGCVideoPlayStream == null) {
            return;
        }
        if (uGCVideoPlayStream.getSignCookie().length() > 0) {
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("cookie", uGCVideoPlayStream.getSignCookie());
        } else {
            linkedHashMap = null;
        }
        lg.a.f68839a.c("VideoFloat", "stream-----getPlayInfoSuccess,开始播放, se:" + uGCVideoPlayInfo.getUgcVideoId(), true);
        ao.e eVar = new ao.e(String.valueOf(uGCVideoPlayStream.getUrl().hashCode()), uGCVideoPlayStream.getUrl(), 0, i(uGCVideoPlayStream.getFormat()), g(aVar2, uGCVideoPlayInfo), 4, null);
        eVar.q(linkedHashMap);
        UGCVideo uGCVideoV = aVar.v();
        if (uGCVideoV != null) {
            uGCVideoV.setUgcVideoId(uGCVideoPlayInfo.getUgcVideoId());
        }
        aVar.K(uGCVideoPlayStream.getIdType());
        aVar.F(0L);
        aVar.f().reset();
        aVar.f().setDataSource(eVar);
        aVar.f().prepare();
        aVar.f().play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(go.a aVar, px.a aVar2, go.a aVar3, UGCVideoPlayInfo uGCVideoPlayInfo) {
        if (uGCVideoPlayInfo != null) {
            f56290b.n(aVar2, aVar3, uGCVideoPlayInfo);
            return Unit.f67061a;
        }
        lg.a.f68839a.c("VideoFloat", "ugc-----playNext,nextSe:" + aVar.l() + ",nextEp:" + aVar.e() + " 下一集数据为空，无法播放", true);
        return Unit.f67061a;
    }

    private final void t(px.a aVar) {
        if (aVar != null) {
            String str = aVar.r() + "+" + aVar.q() + "+" + aVar.c();
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "saveHistory--key:" + str + ", value:" + aVar.n(), false, 4, null);
            f56291c.put(str, Long.valueOf(aVar.n()));
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new UGCVideoFloatManager$saveHistoryInner$2(aVar, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rv.a v() {
        return (rv.a) zg.c.f79414e.a().h(rv.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailPlayDao w() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final PlayMimeType i(String format) {
        Intrinsics.h(format, "format");
        String upperCase = format.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        if (Intrinsics.c(upperCase, "DASH")) {
            return PlayMimeType.DASH;
        }
        return Intrinsics.c(upperCase, "HLS") ? PlayMimeType.HLS : PlayMimeType.DEFAULT;
    }

    public void o() {
        a().clear();
    }

    public void p(px.a aVar) {
        UGCVideo uGCVideoV;
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "openDetail--1", false, 4, null);
        t(aVar);
        if (aVar == null || (uGCVideoV = aVar.v()) == null) {
            return;
        }
        pv.b.b(uGCVideoV, null, 1, null);
    }

    public boolean q(final px.a aVar) {
        Object next;
        Iterator it = a().iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            go.a aVar2 = (go.a) it.next();
            if (aVar != null && aVar2.e() == aVar.c()) {
                break;
            }
            i11++;
        }
        Iterator it2 = a().iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            go.a aVar3 = (go.a) next;
            if (aVar != null && aVar3.e() == aVar.c()) {
                break;
            }
        }
        final go.a aVar4 = (go.a) next;
        int i12 = i11 + 1;
        if (i12 >= a().size()) {
            return false;
        }
        final go.a aVar5 = (go.a) a().get(i12);
        lg.a.f68839a.c("VideoFloat", "ugc-----playNext, name:" + aVar5.p() + ",nextSe:" + aVar5.l() + ",nextEp:" + aVar5.e(), true);
        if (aVar == null) {
            return false;
        }
        UGCVideo uGCVideoV = aVar.v();
        k(uGCVideoV != null ? uGCVideoV.getUgcVideoId() : null, new Function1() { // from class: com.transsion.ugcvideodetail.hepler.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoFloatManager.r(aVar5, aVar, aVar4, (UGCVideoPlayInfo) obj);
            }
        });
        return true;
    }

    public void s(px.a aVar) {
        t(aVar);
    }

    public void u(List list) {
        Intrinsics.h(list, "list");
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "stream-----setPlayList:" + list.size(), false, 4, null);
        a().clear();
        a().addAll(list);
    }
}
