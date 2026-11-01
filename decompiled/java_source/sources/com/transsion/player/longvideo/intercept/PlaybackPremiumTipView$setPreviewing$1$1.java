package com.transsion.player.longvideo.intercept;

import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baselib.db.video.PlaybackRecordTable;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$string;
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
@DebugMetadata(c = "com.transsion.player.longvideo.intercept.PlaybackPremiumTipView$setPreviewing$1$1", f = "PlaybackPremiumTipView.kt", l = {86}, m = "invokeSuspend")
final class PlaybackPremiumTipView$setPreviewing$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ go.a $bean;
    final /* synthetic */ go.a $longVdPlayerBean;
    final /* synthetic */ PlaybackInterceptionManager $manager;
    int label;
    final /* synthetic */ PlaybackPremiumTipView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PlaybackPremiumTipView$setPreviewing$1$1(PlaybackPremiumTipView playbackPremiumTipView, go.a aVar, go.a aVar2, PlaybackInterceptionManager playbackInterceptionManager, Continuation<? super PlaybackPremiumTipView$setPreviewing$1$1> continuation) {
        super(2, continuation);
        this.this$0 = playbackPremiumTipView;
        this.$bean = aVar;
        this.$longVdPlayerBean = aVar2;
        this.$manager = playbackInterceptionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PlaybackPremiumTipView$setPreviewing$1$1(this.this$0, this.$bean, this.$longVdPlayerBean, this.$manager, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PlaybackPremiumTipView$setPreviewing$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String subjectId;
        Object objA;
        VipInfo vipInfo;
        Integer requireMemberType;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PlaybackRecordDao playbackRecordDao = this.this$0.getPlaybackRecordDao();
            Subject subjectM = this.$bean.m();
            if (subjectM == null || (subjectId = subjectM.getSubjectId()) == null) {
                subjectId = "";
            }
            int iL = this.$longVdPlayerBean.l();
            int iE = this.$longVdPlayerBean.e();
            this.label = 1;
            objA = playbackRecordDao.a(subjectId, iL, iE, this);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            objA = obj;
        }
        PlaybackRecordTable playbackRecordTable = (PlaybackRecordTable) objA;
        if (playbackRecordTable == null || !playbackRecordTable.getRewardUnlock()) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", "PlaybackPremiumTipView --> onRenderFirstFrame() --> 试看提示 --> pageName = " + this.$bean.i() + " --> 试看提示", false, 4, null);
            this.this$0.setVisibility(0);
            this.this$0.getBinding().f64704d.setVisibility(8);
            this.this$0.getBinding().f64703c.setVisibility(0);
            this.this$0.traceId = ti.n.f76264a.b();
            com.transsion.baselib.helper.f.f43269a.h(this.$bean.i(), "player/resolution_upgrade", this.this$0.traceId, this.$bean.o(), 0);
            Subject subjectM2 = this.$bean.m();
            if (subjectM2 == null || (vipInfo = subjectM2.getVipInfo()) == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
                this.this$0.getBinding().f64705e.setText(this.this$0.getContext().getString(R$string.p_v2_hd_previewing));
                this.this$0.getBinding().f64706f.setText(this.this$0.getContext().getString(R$string.p_v2_unlock_hd));
            } else {
                this.this$0.getBinding().f64705e.setText(this.this$0.getContext().getString(R$string.p_v2_previewing));
                this.this$0.getBinding().f64706f.setText(this.this$0.getContext().getString(R$string.p_v2_unlock_full_access));
            }
            this.this$0.g(this.$bean.i(), this.$bean.o(), this.$manager);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", "PlaybackPremiumTipView --> onRenderFirstFrame() --> 试看提示 --> pageName = " + this.$bean.i() + " --> 当前已经解锁，不展示提示", false, 4, null);
        }
        return Unit.f67061a;
    }
}
