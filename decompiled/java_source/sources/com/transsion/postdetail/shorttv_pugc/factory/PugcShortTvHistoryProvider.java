package com.transsion.postdetail.shorttv_pugc.factory;

import ak.o;
import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.utils.PlayMode;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.shorttv_pugc.bean.ShortTvInnerPlayBean;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class PugcShortTvHistoryProvider implements st.f {
    @Override // st.f
    public Object a(String str, List list, Continuation continuation) {
        if (list.isEmpty()) {
            return Unit.f67061a;
        }
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Object objA = companion.b(applicationA).B1().a(str, list, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    @Override // st.f
    public Object b(ShorttvModel.UGCVideo uGCVideo, long j11, Continuation continuation) throws Throwable {
        PugcShortTvHistoryProvider$saveHistory$1 pugcShortTvHistoryProvider$saveHistory$1;
        String str;
        String str2;
        long j12;
        ShorttvModel.UGCVideo uGCVideo2;
        if (continuation instanceof PugcShortTvHistoryProvider$saveHistory$1) {
            pugcShortTvHistoryProvider$saveHistory$1 = (PugcShortTvHistoryProvider$saveHistory$1) continuation;
            int i11 = pugcShortTvHistoryProvider$saveHistory$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pugcShortTvHistoryProvider$saveHistory$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pugcShortTvHistoryProvider$saveHistory$1 = new PugcShortTvHistoryProvider$saveHistory$1(this, continuation);
            }
        } else {
            pugcShortTvHistoryProvider$saveHistory$1 = new PugcShortTvHistoryProvider$saveHistory$1(this, continuation);
        }
        PugcShortTvHistoryProvider$saveHistory$1 pugcShortTvHistoryProvider$saveHistory$2 = pugcShortTvHistoryProvider$saveHistory$1;
        Object obj = pugcShortTvHistoryProvider$saveHistory$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pugcShortTvHistoryProvider$saveHistory$2.label;
        if (i12 != 0) {
            if (i12 == 1) {
                long j13 = pugcShortTvHistoryProvider$saveHistory$2.J$0;
                String str3 = (String) pugcShortTvHistoryProvider$saveHistory$2.L$2;
                String str4 = (String) pugcShortTvHistoryProvider$saveHistory$2.L$1;
                uGCVideo2 = (ShorttvModel.UGCVideo) pugcShortTvHistoryProvider$saveHistory$2.L$0;
                ResultKt.b(obj);
                str2 = str3;
                j12 = j13;
                str = str4;
            } else {
                if (i12 != 2 && i12 != 3) {
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
        ResultKt.b(obj);
        String ugcVideoId = uGCVideo.getUgcVideoId();
        ShorttvModel.UGCVideoCollection belongToCollection = uGCVideo.getBelongToCollection();
        String collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
        if (ugcVideoId == null || ugcVideoId.length() == 0 || collectionId == null || collectionId.length() == 0) {
            return Unit.f67061a;
        }
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoC1 = companion.b(applicationA).C1();
        pugcShortTvHistoryProvider$saveHistory$2.L$0 = uGCVideo;
        pugcShortTvHistoryProvider$saveHistory$2.L$1 = ugcVideoId;
        pugcShortTvHistoryProvider$saveHistory$2.L$2 = collectionId;
        pugcShortTvHistoryProvider$saveHistory$2.J$0 = j11;
        pugcShortTvHistoryProvider$saveHistory$2.label = 1;
        Object objC = uGCVideoDetailPlayDaoC1.c(collectionId, pugcShortTvHistoryProvider$saveHistory$2);
        if (objC == objF) {
            return objF;
        }
        str = ugcVideoId;
        str2 = collectionId;
        obj = objC;
        j12 = j11;
        uGCVideo2 = uGCVideo;
        if (((UGCVideoDetailPlayBean) obj) == null) {
            long durationMillis = uGCVideo2.getDurationMillis();
            String title = uGCVideo2.getTitle();
            long jCurrentTimeMillis = System.currentTimeMillis();
            Cover cover = uGCVideo2.getCover();
            String url = cover != null ? cover.getUrl() : null;
            Cover cover2 = uGCVideo2.getCover();
            String thumbnail = cover2 != null ? cover2.getThumbnail() : null;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(str2, str, j12, title, url, thumbnail, uGCVideo2.getEp(), uGCVideo2.getCategory(), null, null, null, null, jCurrentTimeMillis, null, Boxing.e(durationMillis), null, null, null, false, PlayMode.STREAM.getValue(), null, null, null, 0L, null, null, false, false, false, uGCVideo2.getOps(), null, null, null, null, null, o.f646a.d(), -537415936, 7, null);
            AppDatabase.Companion companion2 = AppDatabase.INSTANCE;
            Application applicationA2 = Utils.a();
            Intrinsics.g(applicationA2, "getApp(...)");
            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoC2 = companion2.b(applicationA2).C1();
            pugcShortTvHistoryProvider$saveHistory$2.L$0 = null;
            pugcShortTvHistoryProvider$saveHistory$2.L$1 = null;
            pugcShortTvHistoryProvider$saveHistory$2.L$2 = null;
            pugcShortTvHistoryProvider$saveHistory$2.label = 2;
            if (uGCVideoDetailPlayDaoC2.n(uGCVideoDetailPlayBean, pugcShortTvHistoryProvider$saveHistory$2) == objF) {
                return objF;
            }
        } else {
            AppDatabase.Companion companion3 = AppDatabase.INSTANCE;
            Application applicationA3 = Utils.a();
            Intrinsics.g(applicationA3, "getApp(...)");
            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoC3 = companion3.b(applicationA3).C1();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            int ep2 = uGCVideo2.getEp();
            pugcShortTvHistoryProvider$saveHistory$2.L$0 = null;
            pugcShortTvHistoryProvider$saveHistory$2.L$1 = null;
            pugcShortTvHistoryProvider$saveHistory$2.L$2 = null;
            pugcShortTvHistoryProvider$saveHistory$2.label = 3;
            if (uGCVideoDetailPlayDaoC3.e(str2, str, jCurrentTimeMillis2, j12, ep2, pugcShortTvHistoryProvider$saveHistory$2) == objF) {
                return objF;
            }
        }
        my.e eVar2 = new my.e(true, false);
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = my.e.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, eVar2, 0L);
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x009f  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ad A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // st.f
    public Object c(String str, Continuation continuation) throws Throwable {
        PugcShortTvHistoryProvider$getHistory$1 pugcShortTvHistoryProvider$getHistory$1;
        AppDatabase appDatabaseB;
        Object objR;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
        AppDatabase appDatabase;
        String str2;
        String str3 = str;
        if (continuation instanceof PugcShortTvHistoryProvider$getHistory$1) {
            pugcShortTvHistoryProvider$getHistory$1 = (PugcShortTvHistoryProvider$getHistory$1) continuation;
            int i11 = pugcShortTvHistoryProvider$getHistory$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pugcShortTvHistoryProvider$getHistory$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pugcShortTvHistoryProvider$getHistory$1 = new PugcShortTvHistoryProvider$getHistory$1(this, continuation);
            }
        } else {
            pugcShortTvHistoryProvider$getHistory$1 = new PugcShortTvHistoryProvider$getHistory$1(this, continuation);
        }
        Object objC = pugcShortTvHistoryProvider$getHistory$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pugcShortTvHistoryProvider$getHistory$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                AppDatabase appDatabase2 = (AppDatabase) pugcShortTvHistoryProvider$getHistory$1.L$1;
                String str4 = (String) pugcShortTvHistoryProvider$getHistory$1.L$0;
                ResultKt.b(objC);
                appDatabaseB = appDatabase2;
                str3 = str4;
                objR = objC;
            } else {
                if (i12 == 2) {
                    appDatabase = (AppDatabase) pugcShortTvHistoryProvider$getHistory$1.L$0;
                    ResultKt.b(objC);
                    str2 = (String) objC;
                    if (str2 != null) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoC1 = appDatabase.C1();
                        pugcShortTvHistoryProvider$getHistory$1.L$0 = null;
                        pugcShortTvHistoryProvider$getHistory$1.label = 3;
                        objC = uGCVideoDetailPlayDaoC1.c(str2, pugcShortTvHistoryProvider$getHistory$1);
                        if (objC == objF) {
                            return objF;
                        }
                    } else {
                        uGCVideoDetailPlayBean = null;
                    }
                    if (uGCVideoDetailPlayBean != null) {
                        return new ShortTvInnerPlayBean(uGCVideoDetailPlayBean.getCollectionId(), uGCVideoDetailPlayBean.getUgcVideoId(), uGCVideoDetailPlayBean.getProgress(), uGCVideoDetailPlayBean.getTitle(), uGCVideoDetailPlayBean.getCoverUrl(), uGCVideoDetailPlayBean.getThumbnail(), uGCVideoDetailPlayBean.getPosition(), uGCVideoDetailPlayBean.getType(), uGCVideoDetailPlayBean.getTimeStamp(), uGCVideoDetailPlayBean.getSubtitleSelectId(), uGCVideoDetailPlayBean.getTotalDuration(), uGCVideoDetailPlayBean.getSubjectDurationSeconds(), uGCVideoDetailPlayBean.getAverageHueLight(), uGCVideoDetailPlayBean.getSubjectType(), uGCVideoDetailPlayBean.getHasDelete(), uGCVideoDetailPlayBean.getDownloadUrl(), uGCVideoDetailPlayBean.getDownloadResid(), uGCVideoDetailPlayBean.getDownloadFilePath(), uGCVideoDetailPlayBean.getDownloadSize(), uGCVideoDetailPlayBean.getLastAdStartTimeStamp(), uGCVideoDetailPlayBean.getLastAdEndTimeStamp(), uGCVideoDetailPlayBean.getRewardPlayed(), uGCVideoDetailPlayBean.getRewardUnlock(), uGCVideoDetailPlayBean.getRewardFree());
                    }
                    return null;
                }
                if (i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objC);
            }
            uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objC;
            if (uGCVideoDetailPlayBean != null) {
                return new ShortTvInnerPlayBean(uGCVideoDetailPlayBean.getCollectionId(), uGCVideoDetailPlayBean.getUgcVideoId(), uGCVideoDetailPlayBean.getProgress(), uGCVideoDetailPlayBean.getTitle(), uGCVideoDetailPlayBean.getCoverUrl(), uGCVideoDetailPlayBean.getThumbnail(), uGCVideoDetailPlayBean.getPosition(), uGCVideoDetailPlayBean.getType(), uGCVideoDetailPlayBean.getTimeStamp(), uGCVideoDetailPlayBean.getSubtitleSelectId(), uGCVideoDetailPlayBean.getTotalDuration(), uGCVideoDetailPlayBean.getSubjectDurationSeconds(), uGCVideoDetailPlayBean.getAverageHueLight(), uGCVideoDetailPlayBean.getSubjectType(), uGCVideoDetailPlayBean.getHasDelete(), uGCVideoDetailPlayBean.getDownloadUrl(), uGCVideoDetailPlayBean.getDownloadResid(), uGCVideoDetailPlayBean.getDownloadFilePath(), uGCVideoDetailPlayBean.getDownloadSize(), uGCVideoDetailPlayBean.getLastAdStartTimeStamp(), uGCVideoDetailPlayBean.getLastAdEndTimeStamp(), uGCVideoDetailPlayBean.getRewardPlayed(), uGCVideoDetailPlayBean.getRewardUnlock(), uGCVideoDetailPlayBean.getRewardFree());
            }
            return null;
        }
        ResultKt.b(objC);
        if (str3 == null) {
            return null;
        }
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        appDatabaseB = companion.b(applicationA);
        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoC2 = appDatabaseB.C1();
        pugcShortTvHistoryProvider$getHistory$1.L$0 = str3;
        pugcShortTvHistoryProvider$getHistory$1.L$1 = appDatabaseB;
        pugcShortTvHistoryProvider$getHistory$1.label = 1;
        objR = uGCVideoDetailPlayDaoC2.r(str3, pugcShortTvHistoryProvider$getHistory$1);
        if (objR == objF) {
            return objF;
        }
        uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objR;
        if (uGCVideoDetailPlayBean == null) {
            UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoB1 = appDatabaseB.B1();
            pugcShortTvHistoryProvider$getHistory$1.L$0 = appDatabaseB;
            pugcShortTvHistoryProvider$getHistory$1.L$1 = null;
            pugcShortTvHistoryProvider$getHistory$1.label = 2;
            Object objC2 = uGCCollectionVideoGroupDaoB1.c(str3, pugcShortTvHistoryProvider$getHistory$1);
            if (objC2 == objF) {
                return objF;
            }
            AppDatabase appDatabase3 = appDatabaseB;
            objC = objC2;
            appDatabase = appDatabase3;
            str2 = (String) objC;
            if (str2 != null) {
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoC3 = appDatabase.C1();
                pugcShortTvHistoryProvider$getHistory$1.L$0 = null;
                pugcShortTvHistoryProvider$getHistory$1.label = 3;
                objC = uGCVideoDetailPlayDaoC3.c(str2, pugcShortTvHistoryProvider$getHistory$1);
                if (objC == objF) {
                    return objF;
                }
                uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objC;
            } else {
                uGCVideoDetailPlayBean = null;
            }
        }
        if (uGCVideoDetailPlayBean != null) {
            return new ShortTvInnerPlayBean(uGCVideoDetailPlayBean.getCollectionId(), uGCVideoDetailPlayBean.getUgcVideoId(), uGCVideoDetailPlayBean.getProgress(), uGCVideoDetailPlayBean.getTitle(), uGCVideoDetailPlayBean.getCoverUrl(), uGCVideoDetailPlayBean.getThumbnail(), uGCVideoDetailPlayBean.getPosition(), uGCVideoDetailPlayBean.getType(), uGCVideoDetailPlayBean.getTimeStamp(), uGCVideoDetailPlayBean.getSubtitleSelectId(), uGCVideoDetailPlayBean.getTotalDuration(), uGCVideoDetailPlayBean.getSubjectDurationSeconds(), uGCVideoDetailPlayBean.getAverageHueLight(), uGCVideoDetailPlayBean.getSubjectType(), uGCVideoDetailPlayBean.getHasDelete(), uGCVideoDetailPlayBean.getDownloadUrl(), uGCVideoDetailPlayBean.getDownloadResid(), uGCVideoDetailPlayBean.getDownloadFilePath(), uGCVideoDetailPlayBean.getDownloadSize(), uGCVideoDetailPlayBean.getLastAdStartTimeStamp(), uGCVideoDetailPlayBean.getLastAdEndTimeStamp(), uGCVideoDetailPlayBean.getRewardPlayed(), uGCVideoDetailPlayBean.getRewardUnlock(), uGCVideoDetailPlayBean.getRewardFree());
        }
        return null;
    }
}
