package com.transsion.usercenter.profile;

import com.transsnet.downloader.DownloadManagerApi;
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
@DebugMetadata(c = "com.transsion.usercenter.profile.ProfileViewModel$fetchLatestDownloadList$1", f = "ProfileViewModel.kt", l = {102}, m = "invokeSuspend")
final class ProfileViewModel$fetchLatestDownloadList$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ ProfileViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProfileViewModel$fetchLatestDownloadList$1(ProfileViewModel profileViewModel, Continuation<? super ProfileViewModel$fetchLatestDownloadList$1> continuation) {
        super(2, continuation);
        this.this$0 = profileViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ProfileViewModel$fetchLatestDownloadList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ProfileViewModel$fetchLatestDownloadList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        androidx.p009lifecycle.b0 b0Var;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            androidx.p009lifecycle.b0 b0Var2 = this.this$0.f57098e;
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
            this.L$0 = b0Var2;
            this.label = 1;
            Object objL0 = downloadManagerApiA.l0(this);
            if (objL0 == objF) {
                return objF;
            }
            b0Var = b0Var2;
            obj = objL0;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b0Var = (androidx.p009lifecycle.b0) this.L$0;
            ResultKt.b(obj);
        }
        b0Var.q(obj);
        return Unit.f67061a;
    }
}
