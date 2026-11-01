package com.transsion.ugcvideodetail.viewmodel;

import ak.o;
import com.google.logging.type.LogSeverity;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import my.g;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$updateHistory$1", f = "UGCImmVideoDetailViewModel.kt", l = {667, LogSeverity.ALERT_VALUE, 708, 710}, m = "invokeSuspend")
@SourceDebugExtension
final class UGCImmVideoDetailViewModel$updateHistory$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ UGCImmVideo $data;
    final /* synthetic */ long $playProgress;
    final /* synthetic */ long $totalDuration;
    int I$0;
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$updateHistory$1(UGCImmVideo uGCImmVideo, long j11, long j12, UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, Continuation<? super UGCImmVideoDetailViewModel$updateHistory$1> continuation) {
        super(2, continuation);
        this.$data = uGCImmVideo;
        this.$totalDuration = j11;
        this.$playProgress = j12;
        this.this$0 = uGCImmVideoDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$updateHistory$1(this.$data, this.$totalDuration, this.$playProgress, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoDetailViewModel$updateHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:81:0x0209 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:82:0x020a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        UGCVideo ugcVideo;
        long jLongValue;
        long j11;
        Object objC;
        String str;
        String str2;
        List<UGCVideoPlayStream> resources;
        UGCVideoPlayStream uGCVideoPlayStream;
        String duration;
        Long lX;
        String str3;
        String str4;
        Object obj2;
        long j12;
        int i11;
        String str5;
        String str6;
        String str7;
        String str8;
        long j13;
        int i12;
        long j14;
        long j15;
        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK;
        Object objF = IntrinsicsKt.f();
        int i13 = this.label;
        if (i13 != 0) {
            if (i13 != 1) {
                if (i13 != 2) {
                    if (i13 == 3) {
                        j13 = this.J$1;
                        i12 = this.I$0;
                        j14 = this.J$0;
                        str7 = (String) this.L$1;
                        str8 = (String) this.L$0;
                        ResultKt.b(obj);
                        obj2 = objF;
                        j11 = j14;
                        str5 = str7;
                        str6 = str8;
                        j12 = j13;
                        i11 = i12;
                        uGCVideoDetailPlayDaoK = this.this$0.K();
                        this.L$0 = str6;
                        this.L$1 = str5;
                        this.L$2 = null;
                        this.J$0 = j11;
                        this.label = 4;
                        if (uGCVideoDetailPlayDaoK.e(str5, str6, j12, j11, i11, this) == obj2) {
                            return obj2;
                        }
                        str3 = str5;
                        str4 = str6;
                        j15 = j11;
                    } else if (i13 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
                j15 = this.J$0;
                str3 = (String) this.L$1;
                str4 = (String) this.L$0;
                ResultKt.b(obj);
            } else {
                j11 = this.J$1;
                jLongValue = this.J$0;
                String str9 = (String) this.L$2;
                String str10 = (String) this.L$1;
                ugcVideo = (UGCVideo) this.L$0;
                ResultKt.b(obj);
                objC = obj;
                str2 = str9;
                str = str10;
            }
            my.e eVar = new my.e(true, false);
            AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
            FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name = my.e.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, eVar, 0L);
            g gVar = new g(str4, str3, j15);
            FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = g.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, gVar, 0L);
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        UGCImmVideo uGCImmVideo = this.$data;
        if (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) {
            return Unit.f67061a;
        }
        String ugcVideoId = ugcVideo.getUgcVideoId();
        if (ugcVideoId == null) {
            return Unit.f67061a;
        }
        jLongValue = this.$totalDuration;
        if (jLongValue < 1000) {
            UGCVideoPlayInfo playInfo = this.$data.getPlayInfo();
            jLongValue = ((long) 1000) * ((playInfo == null || (resources = playInfo.getResources()) == null || (uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(resources)) == null || (duration = uGCVideoPlayStream.getDuration()) == null || (lX = StringsKt.x(duration)) == null) ? 0L : lX.longValue());
        }
        j11 = this.$playProgress;
        if (j11 > jLongValue) {
            j11 = jLongValue;
        }
        UGCVideoBelongToCollection belongToCollection = ugcVideo.getBelongToCollection();
        String collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
        if (collectionId == null) {
            collectionId = UGCVideoDetailPlayBean.SINGLE_VIDEO_PREFIX + ugcVideoId;
        }
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetailViewModel", "imm saveUGCVideoHistory -------- collectionId:" + collectionId + ", ugcVideoId:" + ugcVideoId + ", progress " + j11 + "， totalDuration：" + this.$totalDuration, false, 4, null);
        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK2 = this.this$0.K();
        this.L$0 = ugcVideo;
        this.L$1 = ugcVideoId;
        this.L$2 = collectionId;
        this.J$0 = jLongValue;
        this.J$1 = j11;
        this.label = 1;
        objC = uGCVideoDetailPlayDaoK2.c(collectionId, this);
        if (objC == objF) {
            return objF;
        }
        str = ugcVideoId;
        str2 = collectionId;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objC;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "UGCImmVideoDetailViewModel", "imm saveUGCVideoHistory2 -------- " + (uGCVideoDetailPlayBean == null), false, 4, null);
        int iVideoUGCPosition = ugcVideo.videoUGCPosition();
        String ugcVideoId2 = uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.getUgcVideoId() : null;
        UGCVideo ugcVideo2 = this.$data.getUgcVideo();
        boolean zC = Intrinsics.c(ugcVideoId2, ugcVideo2 != null ? ugcVideo2.getUgcVideoId() : null);
        if (uGCVideoDetailPlayBean == null || !zC) {
            String title = ugcVideo.getTitle();
            long jCurrentTimeMillis = System.currentTimeMillis();
            Cover cover = ugcVideo.getCover();
            String url = cover != null ? cover.getUrl() : null;
            Cover cover2 = ugcVideo.getCover();
            String thumbnail = cover2 != null ? cover2.getThumbnail() : null;
            Cover cover3 = ugcVideo.getCover();
            String averageHueLight = cover3 != null ? cover3.getAverageHueLight() : null;
            String category = ugcVideo.getCategory();
            String ops = ugcVideo.getOps();
            UGCVideoCreator creator = ugcVideo.getCreator();
            String uid = creator != null ? creator.getUid() : null;
            UGCVideoCreator creator2 = ugcVideo.getCreator();
            String nickname = creator2 != null ? creator2.getNickname() : null;
            UGCVideoCreator creator3 = ugcVideo.getCreator();
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean2 = new UGCVideoDetailPlayBean(str2, str, j11, title, url, thumbnail, iVideoUGCPosition, category, null, null, null, null, jCurrentTimeMillis, null, Boxing.e(jLongValue), null, averageHueLight, null, false, null, null, null, null, 0L, Boxing.e(0L), Boxing.e(0L), false, true, false, ops, uid, nickname, creator3 != null ? creator3.getAvatar() : null, ugcVideo.getDescription(), ugcVideo.getVideoStyle(), o.f646a.d(), 11448064, 0, null);
            lg.a.C0828a.f(c0828a, "UGCImmVideoDetailViewModel", "saveUGCVideoHistory new,collectionId:" + str2 + ", ugcVideoId:" + str + ", progress " + j11, false, 4, null);
            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK3 = this.this$0.K();
            this.L$0 = str;
            this.L$1 = str2;
            this.L$2 = null;
            this.J$0 = j11;
            this.label = 2;
            if (uGCVideoDetailPlayDaoK3.n(uGCVideoDetailPlayBean2, this) == objF) {
                return objF;
            }
            str3 = str2;
            str4 = str;
        } else {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            lg.a.C0828a.f(c0828a, "UGCImmVideoDetailViewModel", "saveUGCVideoHistory old,collectionId:" + str2 + ", ugcVideoId:" + str + ", progress " + j11 + ", timeStamp:" + jCurrentTimeMillis2, false, 4, null);
            Long totalDuration = uGCVideoDetailPlayBean.getTotalDuration();
            if ((totalDuration != null ? totalDuration.longValue() : 0L) < 1000) {
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK4 = this.this$0.K();
                this.L$0 = str;
                this.L$1 = str2;
                this.L$2 = null;
                this.J$0 = j11;
                this.I$0 = iVideoUGCPosition;
                this.J$1 = jCurrentTimeMillis2;
                this.label = 3;
                obj2 = objF;
                if (uGCVideoDetailPlayDaoK4.h(str2, str, jLongValue, this) == obj2) {
                    return obj2;
                }
                str7 = str2;
                str8 = str;
                j13 = jCurrentTimeMillis2;
                i12 = iVideoUGCPosition;
                j14 = j11;
                j11 = j14;
                str5 = str7;
                str6 = str8;
                j12 = j13;
                i11 = i12;
            } else {
                obj2 = objF;
                j12 = jCurrentTimeMillis2;
                i11 = iVideoUGCPosition;
                str5 = str2;
                str6 = str;
            }
            uGCVideoDetailPlayDaoK = this.this$0.K();
            this.L$0 = str6;
            this.L$1 = str5;
            this.L$2 = null;
            this.J$0 = j11;
            this.label = 4;
            if (uGCVideoDetailPlayDaoK.e(str5, str6, j12, j11, i11, this) == obj2) {
                return obj2;
            }
            str3 = str5;
            str4 = str6;
        }
        j15 = j11;
        my.e eVar2 = new my.e(true, false);
        AppScopeVMlProvider appScopeVMlProvider2 = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
        String name3 = my.e.class.getName();
        Intrinsics.g(name3, "getName(...)");
        flowEventBus3.postEvent(name3, eVar2, 0L);
        g gVar2 = new g(str4, str3, j15);
        FlowEventBus flowEventBus4 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
        String name4 = g.class.getName();
        Intrinsics.g(name4, "getName(...)");
        flowEventBus4.postEvent(name4, gVar2, 0L);
        return Unit.f67061a;
    }
}
