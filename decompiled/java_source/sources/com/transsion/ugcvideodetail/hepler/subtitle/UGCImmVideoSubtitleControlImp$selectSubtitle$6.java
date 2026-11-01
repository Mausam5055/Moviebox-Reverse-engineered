package com.transsion.ugcvideodetail.hepler.subtitle;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.UGCImmVideoSubtitleControlImp$selectSubtitle$6", f = "UGCImmVideoSubtitleControlImp.kt", l = {401}, m = "invokeSuspend")
final class UGCImmVideoSubtitleControlImp$selectSubtitle$6 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ eu.a $bean;
    int label;
    final /* synthetic */ UGCImmVideoSubtitleControlImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoSubtitleControlImp$selectSubtitle$6(eu.a aVar, UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp, Continuation<? super UGCImmVideoSubtitleControlImp$selectSubtitle$6> continuation) {
        super(2, continuation);
        this.$bean = aVar;
        this.this$0 = uGCImmVideoSubtitleControlImp;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoSubtitleControlImp$selectSubtitle$6(this.$bean, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoSubtitleControlImp$selectSubtitle$6) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        SubtitleDownloadTable subtitleDownloadTableB;
        String id2;
        UGCImmVideo uGCImmVideo;
        UGCVideo ugcVideo;
        String ugcVideoId;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            eu.a aVar = this.$bean;
            if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null && (id2 = subtitleDownloadTableB.getId()) != null && (uGCImmVideo = this.this$0.f56376f) != null && (ugcVideo = uGCImmVideo.getUgcVideo()) != null && (ugcVideoId = ugcVideo.getUgcVideoId()) != null) {
                AppDatabase.Companion companion = AppDatabase.INSTANCE;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoC1 = companion.b(applicationA).C1();
                this.label = 1;
                if (uGCVideoDetailPlayDaoC1.b(ugcVideoId, id2, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
