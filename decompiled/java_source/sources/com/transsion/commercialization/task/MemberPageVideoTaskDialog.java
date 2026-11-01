package com.transsion.commercialization.task;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\"\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0003J4\u0010\u0016\u001a\u00020\u00002%\b\u0002\u0010\u0015\u001a\u001f\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\b\u0018\u00010\u0010¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\b\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "onDestroy", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "isOnRewarded", "callback", "t0", "(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;", "c", "Lkotlin/jvm/functions/Function1;", "mCallback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "mIsOnRewarded", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "e", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "videoManager", "com/transsion/commercialization/task/MemberPageVideoTaskDialog$a", "f", "Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;", "videoListener", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MemberPageVideoTaskDialog extends BaseMemberLoadingDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function1 mCallback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean mIsOnRewarded;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private BiddingVideoManager videoManager;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final a videoListener = new a();

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            MemberPageVideoTaskDialog.this.dismissAllowingStateLoss();
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            BiddingVideoManager biddingVideoManager;
            super.j(biddingIntermediateMaterialBean);
            FragmentActivity activity = MemberPageVideoTaskDialog.this.getActivity();
            if (activity == null || (biddingVideoManager = MemberPageVideoTaskDialog.this.videoManager) == null) {
                return;
            }
            AbsAdBidding.R0(biddingVideoManager, activity, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            MemberPageVideoTaskDialog.this.dismissAllowingStateLoss();
        }

        @Override // di.a
        public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.o(biddingIntermediateMaterialBean);
            MemberPageVideoTaskDialog.this.mIsOnRewarded = true;
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            MemberPageVideoTaskDialog.this.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: renamed from: com.transsion.commercialization.task.MemberPageVideoTaskDialog$onViewCreated$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.commercialization.task.MemberPageVideoTaskDialog$onViewCreated$1", f = "MemberPageVideoTaskDialog.kt", l = {71}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MemberPageVideoTaskDialog.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                MemberPageVideoTaskDialog.this.videoManager = new BiddingVideoManager();
                BiddingVideoManager biddingVideoManager = MemberPageVideoTaskDialog.this.videoManager;
                if (biddingVideoManager != null) {
                    biddingVideoManager.O0("MemberPageVideoTaskScene");
                }
                BiddingVideoManager biddingVideoManager2 = MemberPageVideoTaskDialog.this.videoManager;
                if (biddingVideoManager2 != null) {
                    biddingVideoManager2.N0(MemberPageVideoTaskDialog.this.videoListener);
                }
                BiddingVideoManager biddingVideoManager3 = MemberPageVideoTaskDialog.this.videoManager;
                if (biddingVideoManager3 != null) {
                    this.label = 1;
                    if (AbsAdBidding.w0(biddingVideoManager3, 0, false, this, 3, null) == objF) {
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

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        BiddingVideoManager biddingVideoManager = this.videoManager;
        if (biddingVideoManager != null) {
            biddingVideoManager.V();
        }
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        Function1 function1 = this.mCallback;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(this.mIsOnRewarded));
        }
    }

    @Override // com.transsion.baseui.dialog.BaseMemberLoadingDialog, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        kotlinx.coroutines.k.d(v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final MemberPageVideoTaskDialog t0(Function1 callback) {
        this.mCallback = callback;
        return this;
    }
}
