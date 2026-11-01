package com.transsion.postdetail.shorttv.factory;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.ShortTVPlayBean;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.Video;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvHistoryProvider implements qs.h {
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // qs.h
    public Object a(Subject subject, ShortTVItem shortTVItem, long j11, Continuation continuation) throws Throwable {
        ShortTvHistoryProvider$saveHistory$1 shortTvHistoryProvider$saveHistory$1;
        Video videoAddress;
        if (continuation instanceof ShortTvHistoryProvider$saveHistory$1) {
            shortTvHistoryProvider$saveHistory$1 = (ShortTvHistoryProvider$saveHistory$1) continuation;
            int i11 = shortTvHistoryProvider$saveHistory$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                shortTvHistoryProvider$saveHistory$1.label = i11 - Integer.MIN_VALUE;
            } else {
                shortTvHistoryProvider$saveHistory$1 = new ShortTvHistoryProvider$saveHistory$1(this, continuation);
            }
        } else {
            shortTvHistoryProvider$saveHistory$1 = new ShortTvHistoryProvider$saveHistory$1(this, continuation);
        }
        Object obj = shortTvHistoryProvider$saveHistory$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = shortTvHistoryProvider$saveHistory$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            String subjectId = subject.getSubjectId();
            String str = subjectId == null ? "" : subjectId;
            String id2 = shortTVItem.getId();
            String str2 = id2 == null ? "" : id2;
            int ep2 = shortTVItem.getEp();
            int se2 = shortTVItem.getSe();
            int totalEpisode = subject.getTotalEpisode();
            String title = subject.getTitle();
            String description = subject.getDescription();
            Cover cover = subject.getCover();
            String url = cover != null ? cover.getUrl() : null;
            Cover cover2 = subject.getCover();
            String thumbnail = cover2 != null ? cover2.getThumbnail() : null;
            String videoId = shortTVItem.getVideoId();
            Media video = shortTVItem.getVideo();
            ShortTVPlayBean shortTVPlayBean = new ShortTVPlayBean(str, str2, ep2, se2, totalEpisode, j11, title, description, url, thumbnail, videoId, (video == null || (videoAddress = video.getVideoAddress()) == null) ? null : videoAddress.getUrl(), System.currentTimeMillis(), null, 8192, null);
            AppDatabase.Companion companion = AppDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            ShortTVPlayDao shortTVPlayDaoX1 = companion.b(applicationA).x1();
            shortTvHistoryProvider$saveHistory$1.label = 1;
            if (shortTVPlayDaoX1.g(shortTVPlayBean, shortTvHistoryProvider$saveHistory$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        my.e eVar = new my.e(true, false);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.e.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, eVar, 0L);
        return Unit.f67061a;
    }

    @Override // qs.h
    public Object b(String str, String str2, Continuation continuation) {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Object objB = companion.b(applicationA).x1().b(str, str2, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // qs.h
    public Object c(String str, Continuation continuation) throws Throwable {
        ShortTvHistoryProvider$getHistory$1 shortTvHistoryProvider$getHistory$1;
        if (continuation instanceof ShortTvHistoryProvider$getHistory$1) {
            shortTvHistoryProvider$getHistory$1 = (ShortTvHistoryProvider$getHistory$1) continuation;
            int i11 = shortTvHistoryProvider$getHistory$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                shortTvHistoryProvider$getHistory$1.label = i11 - Integer.MIN_VALUE;
            } else {
                shortTvHistoryProvider$getHistory$1 = new ShortTvHistoryProvider$getHistory$1(this, continuation);
            }
        } else {
            shortTvHistoryProvider$getHistory$1 = new ShortTvHistoryProvider$getHistory$1(this, continuation);
        }
        Object objE = shortTvHistoryProvider$getHistory$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = shortTvHistoryProvider$getHistory$1.label;
        if (i12 == 0) {
            ResultKt.b(objE);
            AppDatabase.Companion companion = AppDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            ShortTVPlayDao shortTVPlayDaoX1 = companion.b(applicationA).x1();
            shortTvHistoryProvider$getHistory$1.label = 1;
            objE = shortTVPlayDaoX1.e(str, shortTvHistoryProvider$getHistory$1);
            if (objE == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objE);
        }
        ShortTVPlayBean shortTVPlayBean = (ShortTVPlayBean) objE;
        if (shortTVPlayBean == null) {
            return null;
        }
        return new ShortTvInnerPlayBean(shortTVPlayBean.getSubjectId(), shortTVPlayBean.getId(), shortTVPlayBean.getEp(), shortTVPlayBean.getSe(), shortTVPlayBean.getTotalEp(), shortTVPlayBean.getProgress(), shortTVPlayBean.getTitle(), shortTVPlayBean.getDescription(), shortTVPlayBean.getCoverUrl(), shortTVPlayBean.getThumbnail(), shortTVPlayBean.getVideoId(), shortTVPlayBean.getVideoUrl(), shortTVPlayBean.getTimeStamp(), shortTVPlayBean.getSubtitleSelectId());
    }
}
