package com.transsion.player.longvideo.ui.dialog;

import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baselib.db.video.PlaybackRecordTable;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Z"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog$isIntercept$isUnlocked$1", f = "LongVdPlayerConfigDialog.kt", l = {195}, m = "invokeSuspend")
final class LongVdPlayerConfigDialog$isIntercept$isUnlocked$1 extends SuspendLambda implements Function2<n0, Continuation<? super Boolean>, Object> {
    final /* synthetic */ go.a $longVdPlayerBean;
    int label;
    final /* synthetic */ LongVdPlayerConfigDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVdPlayerConfigDialog$isIntercept$isUnlocked$1(LongVdPlayerConfigDialog longVdPlayerConfigDialog, go.a aVar, Continuation<? super LongVdPlayerConfigDialog$isIntercept$isUnlocked$1> continuation) {
        super(2, continuation);
        this.this$0 = longVdPlayerConfigDialog;
        this.$longVdPlayerBean = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVdPlayerConfigDialog$isIntercept$isUnlocked$1(this.this$0, this.$longVdPlayerBean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Boolean> continuation) {
        return ((LongVdPlayerConfigDialog$isIntercept$isUnlocked$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String subjectId;
        Subject subjectM;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        boolean z10 = false;
        if (i11 == 0) {
            ResultKt.b(obj);
            PlaybackRecordDao playbackRecordDaoZ0 = this.this$0.z0();
            go.a aVar = this.$longVdPlayerBean;
            if (aVar == null || (subjectM = aVar.m()) == null || (subjectId = subjectM.getSubjectId()) == null) {
                subjectId = "";
            }
            go.a aVar2 = this.$longVdPlayerBean;
            int iL = aVar2 != null ? aVar2.l() : 0;
            go.a aVar3 = this.$longVdPlayerBean;
            int iE = aVar3 != null ? aVar3.e() : 0;
            this.label = 1;
            obj = playbackRecordDaoZ0.a(subjectId, iL, iE, this);
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
        if (playbackRecordTable != null && playbackRecordTable.getRewardUnlock()) {
            z10 = true;
        }
        return Boxing.a(z10);
    }
}
