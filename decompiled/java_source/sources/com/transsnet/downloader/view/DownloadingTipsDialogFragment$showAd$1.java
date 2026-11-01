package com.transsnet.downloader.view;

import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.view.DownloadingTipsDialogFragment$showAd$1", f = "DownloadingTipsDialogFragment.kt", l = {237}, m = "invokeSuspend")
final class DownloadingTipsDialogFragment$showAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ DownloadingTipsDialogFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadingTipsDialogFragment$showAd$1(DownloadingTipsDialogFragment downloadingTipsDialogFragment, Continuation<? super DownloadingTipsDialogFragment$showAd$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadingTipsDialogFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadingTipsDialogFragment$showAd$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadingTipsDialogFragment$showAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String genre;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (this.this$0.nativeManager == null) {
                this.this$0.nativeManager = new BiddingNativeManager();
                BiddingNativeManager biddingNativeManager = this.this$0.nativeManager;
                if (biddingNativeManager != null) {
                    biddingNativeManager.O0("DownloadPopupScene");
                }
                BiddingNativeManager biddingNativeManager2 = this.this$0.nativeManager;
                if (biddingNativeManager2 != null) {
                    com.transsion.ad.strategy.d dVar = com.transsion.ad.strategy.d.f42231a;
                    DownloadBean downloadBean = this.this$0.data;
                    if (downloadBean == null || (genre = downloadBean.getGenre()) == null) {
                        genre = "";
                    }
                    biddingNativeManager2.M0(dVar.a(genre));
                }
                BiddingNativeManager biddingNativeManager3 = this.this$0.nativeManager;
                if (biddingNativeManager3 != null) {
                    final DownloadingTipsDialogFragment downloadingTipsDialogFragment = this.this$0;
                    biddingNativeManager3.N0(new di.a() { // from class: com.transsnet.downloader.view.DownloadingTipsDialogFragment$showAd$1.1
                        @Override // di.a
                        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                            super.j(biddingIntermediateMaterialBean);
                            FragmentActivity activity = downloadingTipsDialogFragment.getActivity();
                            if (activity != null) {
                                k.d(v.a(activity), null, null, new DownloadingTipsDialogFragment$showAd$1$1$onBiddingLoad$1$1(downloadingTipsDialogFragment, activity, biddingIntermediateMaterialBean, null), 3, null);
                            }
                        }
                    });
                }
            }
            BiddingNativeManager biddingNativeManager4 = this.this$0.nativeManager;
            if (biddingNativeManager4 != null) {
                this.label = 1;
                if (AbsAdBidding.w0(biddingNativeManager4, 0, false, this, 3, null) == objF) {
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
