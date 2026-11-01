package com.transsnet.downloader.fragment;

import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsnet.downloader.viewmodel.DownloadListManager;
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
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadPanelFragment$updateList$1", f = "DownloadPanelFragment.kt", l = {}, m = "invokeSuspend")
final class DownloadPanelFragment$updateList$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ DownloadPanelFragment this$0;

    public static final class a extends di.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DownloadPanelFragment f58865d;

        a(DownloadPanelFragment downloadPanelFragment) {
            this.f58865d = downloadPanelFragment;
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            DownloadListManager.a aVar = DownloadListManager.f59994m;
            DownloadListManager.I(aVar.a(), aVar.a().V(), false, this.f58865d.getDownloadNativeManager(), 2, null);
            this.f58865d.isShowAd = true;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadPanelFragment$updateList$1(DownloadPanelFragment downloadPanelFragment, Continuation<? super DownloadPanelFragment$updateList$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadPanelFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadPanelFragment$updateList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadPanelFragment$updateList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        BiddingNativeManager downloadNativeManager = this.this$0.getDownloadNativeManager();
        if (downloadNativeManager != null) {
            DownloadPanelFragment downloadPanelFragment = this.this$0;
            downloadNativeManager.O0("DownloadListScene");
            downloadNativeManager.N0(new a(downloadPanelFragment));
        }
        return Unit.f67061a;
    }
}
