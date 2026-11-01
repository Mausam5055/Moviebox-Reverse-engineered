package com.transsion.postdetail.ui.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsnet.downloader.manager.DownloadEsHelper;
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
@DebugMetadata(c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$playerListener$1$onPrepare$1", f = "LocalVideoDetailFragment.kt", l = {468, 469}, m = "invokeSuspend")
final class LocalVideoDetailFragment$playerListener$1$onPrepare$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ LocalVideoDetailFragment this$0;

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$playerListener$1$onPrepare$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$playerListener$1$onPrepare$1$1", f = "LocalVideoDetailFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ LocalVideoDetailFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LocalVideoDetailFragment localVideoDetailFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = localVideoDetailFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
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
            this.this$0.j2().g(LayerFlag.INIT_PLAY, new Object[0]);
            LocalVideoDetailFragment localVideoDetailFragment = this.this$0;
            localVideoDetailFragment.o3(localVideoDetailFragment.downloadBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoDetailFragment$playerListener$1$onPrepare$1(LocalVideoDetailFragment localVideoDetailFragment, Continuation<? super LocalVideoDetailFragment$playerListener$1$onPrepare$1> continuation) {
        super(2, continuation);
        this.this$0 = localVideoDetailFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoDetailFragment$playerListener$1$onPrepare$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoDetailFragment$playerListener$1$onPrepare$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        LocalVideoDetailFragment localVideoDetailFragment;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                localVideoDetailFragment = (LocalVideoDetailFragment) this.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        localVideoDetailFragment = this.this$0;
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String str = this.this$0.resourceId;
        this.L$0 = localVideoDetailFragment;
        this.label = 1;
        obj = downloadEsHelperA.p(str, this);
        if (obj == objF) {
            return objF;
        }
        localVideoDetailFragment.downloadBean = (DownloadBean) obj;
        kotlinx.coroutines.a2 a2VarC = kotlinx.coroutines.y0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
        this.L$0 = null;
        this.label = 2;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
