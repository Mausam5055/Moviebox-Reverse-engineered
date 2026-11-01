package com.transsion.subtitle_download.task;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
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
@DebugMetadata(c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask$download$2", f = "GetInStationSubtitleListTask.kt", l = {180}, m = "invokeSuspend")
final class GetInStationSubtitleListTask$download$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ SubtitleDownloadTable $dbBean;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GetInStationSubtitleListTask$download$2(SubtitleDownloadTable subtitleDownloadTable, Continuation<? super GetInStationSubtitleListTask$download$2> continuation) {
        super(2, continuation);
        this.$dbBean = subtitleDownloadTable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GetInStationSubtitleListTask$download$2(this.$dbBean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GetInStationSubtitleListTask$download$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        SubtitleDownloadTable subtitleDownloadTableC;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            SubtitleDownloadDatabase.Companion companion = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            subtitleDownloadTableC = companion.b(applicationA).l0().c(this.$dbBean.getId(), this.$dbBean.getResourceStreamType());
            if (subtitleDownloadTableC == null) {
                Application applicationA2 = Utils.a();
                Intrinsics.g(applicationA2, "getApp(...)");
                mu.a aVarL0 = companion.b(applicationA2).l0();
                SubtitleDownloadTable subtitleDownloadTable = this.$dbBean;
                this.label = 1;
                if (aVarL0.e(subtitleDownloadTable, this) == objF) {
                    return objF;
                }
            } else {
                subtitleDownloadTableC.setSetImmediately(this.$dbBean.getIsSetImmediately());
            }
            p.f55038a.d(subtitleDownloadTableC, true);
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        subtitleDownloadTableC = this.$dbBean;
        p.f55038a.d(subtitleDownloadTableC, true);
        return Unit.f67061a;
    }
}
