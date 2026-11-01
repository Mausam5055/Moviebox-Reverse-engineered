package com.transsion.postdetail.util;

import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTVFloatManager extends com.transsion.videofloat.manager.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ShortTVFloatManager f50149b = new ShortTVFloatManager();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final os.a f50150c = (os.a) zg.c.f79414e.a().h(os.a.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f50151d = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.util.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTVFloatManager.i();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f50152e = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.util.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTVFloatManager.x();
        }
    });

    private ShortTVFloatManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g i() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsnet.downloader.manager.g j() {
        return (com.transsnet.downloader.manager.g) f50151d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortTVPlayDao l() {
        return (ShortTVPlayDao) f50152e.getValue();
    }

    private final void m(String str, int i11, Function1 function1) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ShortTVFloatManager$getShortTvEpisodeList$1(i11, str, function1, null), 3, null);
    }

    private final void n(px.a aVar, List list) {
        Object next;
        Map mapA;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ShortTVItem shortTVItem = (ShortTVItem) it.next();
                Iterator it2 = f50149b.a().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    js.k kVar = (js.k) next;
                    if ((kVar instanceof js.e) && ((js.e) kVar).c() == shortTVItem.getEp()) {
                        break;
                    }
                }
                js.k kVar2 = (js.k) next;
                if (kVar2 != null && (kVar2 instanceof js.e)) {
                    js.e eVar = (js.e) kVar2;
                    ShortTVItem shortTVItemD = eVar.d();
                    String id2 = shortTVItemD != null ? shortTVItemD.getId() : null;
                    if (id2 != null && id2.length() != 0) {
                        shortTVItem.setId(id2);
                    }
                    lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "handleNewData----设置播放数据  ep:" + shortTVItem.getEp(), false, 4, null);
                    eVar.h(shortTVItem);
                }
                ao.e mediaSource = shortTVItem.toMediaSource();
                if (mediaSource != null) {
                    com.transsion.player.orplayer.g gVarF = aVar.f();
                    lo.f fVar = gVarF instanceof lo.f ? (lo.f) gVarF : null;
                    boolean zContainsKey = (fVar == null || (mapA = fVar.a()) == null) ? false : mapA.containsKey(mediaSource.e());
                    lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "addDataSource----updateShortTvInfoList  ep:" + shortTVItem.getEp() + ",inPlayerList:" + zContainsKey, false, 4, null);
                    if (!zContainsKey) {
                        aVar.f().addDataSource(mediaSource);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q(px.a aVar) {
        f50149b.o();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("oneroom://com.community.oneroom?type=/shorts/detail&id=" + (aVar != null ? aVar.r() : null) + "&ep=" + (aVar != null ? Integer.valueOf(aVar.c()) : null) + "&ms=" + (aVar != null ? Long.valueOf(aVar.n()) : null) + "&channel=video_float"));
        intent.setFlags(ASTNode.DEOP);
        Utils.a().startActivity(intent);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(px.a aVar, ShortTvInfoEpisodeList shortTvInfoEpisodeList) {
        if (shortTvInfoEpisodeList != null) {
            f50149b.n(aVar, shortTvInfoEpisodeList.getItems());
        }
        return Unit.f67061a;
    }

    private final void u(px.a aVar, Function0 function0) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ShortTVFloatManager$saveHistoryInner$1(aVar, function0, null), 3, null);
    }

    static /* synthetic */ void v(ShortTVFloatManager shortTVFloatManager, px.a aVar, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        shortTVFloatManager.u(aVar, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShortTVPlayDao x() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).x1();
    }

    public final String k(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        return "SHORT_TV" + subjectId;
    }

    public void o() {
        a().clear();
    }

    public void p(final px.a aVar) {
        u(aVar, new Function0() { // from class: com.transsion.postdetail.util.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVFloatManager.q(aVar);
            }
        });
    }

    public boolean r(final px.a aVar) {
        js.k kVar;
        String id2;
        Iterator it = a().iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            js.k kVar2 = (js.k) it.next();
            js.e eVar = kVar2 instanceof js.e ? (js.e) kVar2 : null;
            if (Intrinsics.c(eVar != null ? Integer.valueOf(eVar.c()) : null, aVar != null ? Integer.valueOf(aVar.c()) : null)) {
                break;
            }
            i11++;
        }
        int size = a().size();
        int i12 = 0;
        while (true) {
            if (i12 >= size) {
                i12 = 0;
                kVar = null;
                break;
            }
            kVar = (js.k) a().get(i12);
            if (i12 > i11 && (kVar instanceof js.e)) {
                break;
            }
            i12++;
        }
        js.e eVar2 = (js.e) kVar;
        lg.a.f68839a.c("VideoFloat", "shorttv-----playNext, size:" + a().size() + ", ep:" + (aVar != null ? Integer.valueOf(aVar.c()) : null) + " nextEp:" + (eVar2 != null ? Integer.valueOf(eVar2.c()) : null), true);
        if (kVar == null) {
            return false;
        }
        int i13 = i12 + 5;
        if (a().size() > i13) {
            js.k kVar3 = (js.k) a().get(i13);
            if (kVar3 instanceof js.e) {
                js.e eVar3 = (js.e) kVar3;
                if (js.l.b(eVar3) && aVar != null) {
                    f50149b.m(aVar.r(), eVar3.c(), new Function1() { // from class: com.transsion.postdetail.util.k
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return ShortTVFloatManager.s(aVar, (ShortTvInfoEpisodeList) obj);
                        }
                    });
                }
            }
        }
        if (aVar != null) {
            js.e eVar4 = (js.e) kVar;
            aVar.z(eVar4.c());
            aVar.F(0L);
            com.transsion.player.orplayer.g gVarF = aVar.f();
            ShortTVItem shortTVItemD = eVar4.d();
            if (shortTVItemD == null || (id2 = shortTVItemD.getId()) == null) {
                id2 = "";
            }
            gVarF.seekTo(id2, 0L);
            aVar.f().play();
        }
        return true;
    }

    public void t(px.a aVar) {
        v(this, aVar, null, 2, null);
    }

    public void w(List list) {
        Intrinsics.h(list, "list");
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "shorttv-----setPlayList:" + list.size(), false, 4, null);
        a().clear();
        a().addAll(list);
    }
}
