package androidx.work.impl.utils;

import android.content.Context;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.work.impl.model.j0;
import androidx.work.impl.r1;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Ljava/lang/Void;", "kotlin.jvm.PlatformType", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/Void;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "androidx.work.impl.utils.WorkForegroundKt$workForeground$2", f = "WorkForeground.kt", l = {42, 50}, m = "invokeSuspend")
@SourceDebugExtension
final class WorkForegroundKt$workForeground$2 extends SuspendLambda implements Function2<n0, Continuation<? super Void>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ androidx.work.j $foregroundUpdater;
    final /* synthetic */ j0 $spec;
    final /* synthetic */ androidx.work.s $worker;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WorkForegroundKt$workForeground$2(androidx.work.s sVar, j0 j0Var, androidx.work.j jVar, Context context, Continuation<? super WorkForegroundKt$workForeground$2> continuation) {
        super(2, continuation);
        this.$worker = sVar;
        this.$spec = j0Var;
        this.$foregroundUpdater = jVar;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WorkForegroundKt$workForeground$2(this.$worker, this.$spec, this.$foregroundUpdater, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Void> continuation) {
        return ((WorkForegroundKt$workForeground$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        }
        ResultKt.b(obj);
        com.google.common.util.concurrent.r rVarC = this.$worker.c();
        Intrinsics.g(rVarC, "getForegroundInfoAsync(...)");
        androidx.work.s sVar = this.$worker;
        this.label = 1;
        obj = r1.d(rVarC, sVar, this);
        if (obj == objF) {
            return objF;
        }
        androidx.work.i iVar = (androidx.work.i) obj;
        if (iVar == null) {
            throw new IllegalStateException("Worker was marked important (" + this.$spec.f15766c + ") but did not provide ForegroundInfo");
        }
        String str = WorkForegroundKt.f15939a;
        j0 j0Var = this.$spec;
        androidx.work.t.e().a(str, "Updating notification for " + j0Var.f15766c);
        com.google.common.util.concurrent.r rVarA = this.$foregroundUpdater.a(this.$context, this.$worker.d(), iVar);
        Intrinsics.g(rVarA, "setForegroundAsync(...)");
        this.label = 2;
        obj = ListenableFutureKt.b(rVarA, this);
        return obj == objF ? objF : obj;
    }
}
