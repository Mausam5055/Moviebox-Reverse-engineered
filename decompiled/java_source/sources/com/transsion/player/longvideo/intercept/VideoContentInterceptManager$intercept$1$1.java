package com.transsion.player.longvideo.intercept;

import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baselib.db.video.PlaybackRecordTable;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.intercept.VideoContentInterceptManager$intercept$1$1", f = "VideoContentInterceptManager.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE}, m = "invokeSuspend")
final class VideoContentInterceptManager$intercept$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ go.a $bean;
    final /* synthetic */ d $callback;
    final /* synthetic */ PlaybackInterceptionManager $interceptionManager;
    final /* synthetic */ go.a $longVdPlayerBean;
    final /* synthetic */ com.transsion.player.ui.longvideo.a $playerControl;
    final /* synthetic */ ho.j $viewBinding;
    int label;
    final /* synthetic */ VideoContentInterceptManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoContentInterceptManager$intercept$1$1(VideoContentInterceptManager videoContentInterceptManager, go.a aVar, go.a aVar2, ho.j jVar, com.transsion.player.ui.longvideo.a aVar3, PlaybackInterceptionManager playbackInterceptionManager, d dVar, Continuation<? super VideoContentInterceptManager$intercept$1$1> continuation) {
        super(2, continuation);
        this.this$0 = videoContentInterceptManager;
        this.$bean = aVar;
        this.$longVdPlayerBean = aVar2;
        this.$viewBinding = jVar;
        this.$playerControl = aVar3;
        this.$interceptionManager = playbackInterceptionManager;
        this.$callback = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoContentInterceptManager$intercept$1$1(this.this$0, this.$bean, this.$longVdPlayerBean, this.$viewBinding, this.$playerControl, this.$interceptionManager, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoContentInterceptManager$intercept$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String subjectId;
        String subjectId2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        String str = "";
        if (i11 == 0) {
            ResultKt.b(obj);
            PlaybackRecordDao playbackRecordDaoI = this.this$0.i();
            Subject subjectM = this.$bean.m();
            if (subjectM == null || (subjectId = subjectM.getSubjectId()) == null) {
                subjectId = "";
            }
            int iL = this.$longVdPlayerBean.l();
            int iE = this.$longVdPlayerBean.e();
            this.label = 1;
            obj = playbackRecordDaoI.a(subjectId, iL, iE, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        PlaybackRecordTable playbackRecordTable = (PlaybackRecordTable) obj;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strH = this.this$0.h();
        Subject subjectM2 = this.$bean.m();
        if (subjectM2 != null && (subjectId2 = subjectM2.getSubjectId()) != null) {
            str = subjectId2;
        }
        lg.a.C0828a.f(c0828a, "premium_p", strH + " --> intercept() --> 资源内容拦截 --> subjectId = " + str + " --> se = " + this.$longVdPlayerBean.l() + " --> ep = " + this.$longVdPlayerBean.e() + " --> playbackRecord = " + playbackRecordTable, false, 4, null);
        this.this$0.j(this.$bean, playbackRecordTable, this.$viewBinding, this.$playerControl, this.$interceptionManager, this.$callback);
        return Unit.f67061a;
    }
}
