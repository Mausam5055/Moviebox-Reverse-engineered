package com.transsnet.downloader.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.DownloadEsHelper;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.TransferReceivedFragment$deleteItem$1", f = "TransferReceivedFragment.kt", l = {95, 96, 97}, m = "invokeSuspend")
final class TransferReceivedFragment$deleteItem$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $entity;
    int label;
    final /* synthetic */ TransferReceivedFragment this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.TransferReceivedFragment$deleteItem$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.TransferReceivedFragment$deleteItem$1$1", f = "TransferReceivedFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            uh.b.f76753a.d(R$string.download_delete_success);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransferReceivedFragment$deleteItem$1(DownloadBean downloadBean, TransferReceivedFragment transferReceivedFragment, Continuation<? super TransferReceivedFragment$deleteItem$1> continuation) {
        super(2, continuation);
        this.$entity = downloadBean;
        this.this$0 = transferReceivedFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransferReceivedFragment$deleteItem$1(this.$entity, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TransferReceivedFragment$deleteItem$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0056 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.a2 a2VarC;
        AnonymousClass1 anonymousClass1;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                ResultKt.b(obj);
                a2VarC = kotlinx.coroutines.y0.c();
                anonymousClass1 = new AnonymousClass1(null);
                this.label = 3;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            this.this$0.loadData();
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        DownloadBean downloadBean = this.$entity;
        this.label = 1;
        if (downloadEsHelperA.m(downloadBean, this) == objF) {
            return objF;
        }
        this.label = 2;
        if (kotlinx.coroutines.u0.a(300L, this) == objF) {
            return objF;
        }
        a2VarC = kotlinx.coroutines.y0.c();
        anonymousClass1 = new AnonymousClass1(null);
        this.label = 3;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        this.this$0.loadData();
        return Unit.f67061a;
    }
}
