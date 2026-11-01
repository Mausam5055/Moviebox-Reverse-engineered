package com.transsion.wrapperad.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.gyf.immersionbar.ImmersionBar;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.ScrollDetectFrameLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import ti.q;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000s\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001;\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\nJ\u001f\u0010\u0012\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\b¢\u0006\u0004\b\u001b\u0010\nJ\r\u0010\u001c\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\nJ\r\u0010\u001d\u001a\u00020\b¢\u0006\u0004\b\u001d\u0010\nR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010*R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006?"}, d2 = {"Lcom/transsion/wrapperad/view/DownloadTopIrregularView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "f", "e", "Landroid/view/ViewGroup;", "geminiViewGroup", "Landroidx/lifecycle/LifecycleCoroutineScope;", "lifecycleScope", "setViewGroup", "(Landroid/view/ViewGroup;Landroidx/lifecycle/LifecycleCoroutineScope;)V", "", "deltaX", "deltaY", "Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;", "direction", "onScroll", "(FFLcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;)V", "loadAd", "showAd", PushConstants.PROVIDER_FIELD_DESTROY, "Lkotlinx/coroutines/t1;", "a", "Lkotlinx/coroutines/t1;", "job", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "closeImg", "c", "Landroid/view/ViewGroup;", "mGeminiViewGroup", "Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;", "currentDirection", "Landroidx/lifecycle/LifecycleCoroutineScope;", "mLifecycleScope", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "nativeWrapperAdView", "Lcom/transsion/ad/bidding/base/r;", "g", "Lcom/transsion/ad/bidding/base/r;", "nativeViewBinder", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "h", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "mMaxEcpmObject", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "i", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "adManager", "com/transsion/wrapperad/view/DownloadTopIrregularView$a", "j", "Lcom/transsion/wrapperad/view/DownloadTopIrregularView$a;", "adListener", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadTopIrregularView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private t1 job;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final ImageView closeImg;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ViewGroup mGeminiViewGroup;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ScrollDetectFrameLayout.ScrollDirection currentDirection;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private LifecycleCoroutineScope mLifecycleScope;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final NativeWrapperAdView nativeWrapperAdView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private r nativeViewBinder;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private BiddingIntermediateMaterialBean mMaxEcpmObject;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager adManager;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final a adListener;

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            DownloadTopIrregularView.this.mMaxEcpmObject = null;
            DownloadTopIrregularView.this.setVisibility(8);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            DownloadTopIrregularView.this.mMaxEcpmObject = biddingIntermediateMaterialBean;
            DownloadTopIrregularView.this.showAd();
            DownloadTopIrregularView.this.f();
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            DownloadTopIrregularView.this.mMaxEcpmObject = null;
            DownloadTopIrregularView.this.setVisibility(8);
        }
    }

    /* JADX INFO: renamed from: com.transsion.wrapperad.view.DownloadTopIrregularView$loadAd$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.wrapperad.view.DownloadTopIrregularView$loadAd$1", f = "DownloadTopIrregularView.kt", l = {161}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTopIrregularView.this.new AnonymousClass1(continuation);
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
                BiddingNativeManager biddingNativeManager = DownloadTopIrregularView.this.adManager;
                if (biddingNativeManager != null) {
                    this.label = 1;
                    if (AbsAdBidding.w0(biddingNativeManager, 0, false, this, 3, null) == objF) {
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

    /* JADX INFO: renamed from: com.transsion.wrapperad.view.DownloadTopIrregularView$onScroll$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.wrapperad.view.DownloadTopIrregularView$onScroll$1", f = "DownloadTopIrregularView.kt", l = {Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE}, m = "invokeSuspend")
    static final class C10751 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ ViewGroup.MarginLayoutParams $layoutParams;
        final /* synthetic */ int $mCurrentTopMargin;
        final /* synthetic */ int $minTopMargin;
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ DownloadTopIrregularView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10751(int i11, int i12, DownloadTopIrregularView downloadTopIrregularView, ViewGroup.MarginLayoutParams marginLayoutParams, Continuation<? super C10751> continuation) {
            super(2, continuation);
            this.$mCurrentTopMargin = i11;
            this.$minTopMargin = i12;
            this.this$0 = downloadTopIrregularView;
            this.$layoutParams = marginLayoutParams;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10751(this.$mCurrentTopMargin, this.$minTopMargin, this.this$0, this.$layoutParams, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10751) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:10:0x003d  */
        /* JADX WARN: Code duplicated, block: B:12:0x0057 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:15:0x005e  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0055 -> B:13:0x0058). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:10:0x003d
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
                int r1 = r10.label
                r2 = 1
                if (r1 == 0) goto L25
                if (r1 != r2) goto L1d
                int r1 = r10.I$2
                int r3 = r10.I$1
                int r4 = r10.I$0
                java.lang.Object r5 = r10.L$1
                com.transsion.wrapperad.view.DownloadTopIrregularView r5 = (com.transsion.wrapperad.view.DownloadTopIrregularView) r5
                java.lang.Object r6 = r10.L$0
                android.view.ViewGroup$MarginLayoutParams r6 = (android.view.ViewGroup.MarginLayoutParams) r6
                kotlin.ResultKt.b(r11)
                goto L58
            L1d:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L25:
                kotlin.ResultKt.b(r11)
                int r11 = r10.$mCurrentTopMargin
                int r1 = r10.$minTopMargin
                int r1 = r11 - r1
                int r1 = r1 / 10
                android.view.ViewGroup$MarginLayoutParams r3 = r10.$layoutParams
                com.transsion.wrapperad.view.DownloadTopIrregularView r4 = r10.this$0
                r5 = 0
                r6 = r3
                r3 = r11
                r9 = r4
                r4 = r1
                r1 = r5
                r5 = r9
            L3b:
                if (r1 >= r4) goto L63
                int r11 = r1 * 10
                int r11 = r3 - r11
                r6.topMargin = r11
                r10.L$0 = r6
                r10.L$1 = r5
                r10.I$0 = r4
                r10.I$1 = r3
                r10.I$2 = r1
                r10.label = r2
                r7 = 4
                java.lang.Object r11 = kotlinx.coroutines.u0.a(r7, r10)
                if (r11 != r0) goto L58
                return r0
            L58:
                android.view.ViewGroup r11 = com.transsion.wrapperad.view.DownloadTopIrregularView.access$getMGeminiViewGroup$p(r5)
                if (r11 == 0) goto L61
                r11.setLayoutParams(r6)
            L61:
                int r1 = r1 + r2
                goto L3b
            L63:
                com.transsion.wrapperad.view.DownloadTopIrregularView r11 = r10.this$0
                com.transsion.ad.view.native_ad.NativeWrapperAdView r11 = com.transsion.wrapperad.view.DownloadTopIrregularView.access$getNativeWrapperAdView$p(r11)
                jg.c.g(r11)
                com.transsion.wrapperad.view.DownloadTopIrregularView r11 = r10.this$0
                android.widget.ImageView r11 = com.transsion.wrapperad.view.DownloadTopIrregularView.access$getCloseImg$p(r11)
                jg.c.g(r11)
                kotlin.Unit r11 = kotlin.Unit.f67061a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.wrapperad.view.DownloadTopIrregularView.C10751.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.transsion.wrapperad.view.DownloadTopIrregularView$onScroll$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.wrapperad.view.DownloadTopIrregularView$onScroll$2", f = "DownloadTopIrregularView.kt", l = {135}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ ViewGroup.MarginLayoutParams $layoutParams;
        final /* synthetic */ int $mCurrentTopMargin;
        final /* synthetic */ int $maxTopMargin;
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(int i11, int i12, ViewGroup.MarginLayoutParams marginLayoutParams, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$maxTopMargin = i11;
            this.$mCurrentTopMargin = i12;
            this.$layoutParams = marginLayoutParams;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadTopIrregularView.this.new AnonymousClass2(this.$maxTopMargin, this.$mCurrentTopMargin, this.$layoutParams, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:10:0x004d  */
        /* JADX WARN: Code duplicated, block: B:12:0x0066 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:15:0x006d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0064 -> B:13:0x0067). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:10:0x004d
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
                int r1 = r9.label
                r2 = 1
                if (r1 == 0) goto L25
                if (r1 != r2) goto L1d
                int r1 = r9.I$2
                int r3 = r9.I$1
                int r4 = r9.I$0
                java.lang.Object r5 = r9.L$1
                com.transsion.wrapperad.view.DownloadTopIrregularView r5 = (com.transsion.wrapperad.view.DownloadTopIrregularView) r5
                java.lang.Object r6 = r9.L$0
                android.view.ViewGroup$MarginLayoutParams r6 = (android.view.ViewGroup.MarginLayoutParams) r6
                kotlin.ResultKt.b(r10)
                goto L67
            L1d:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L25:
                kotlin.ResultKt.b(r10)
                com.transsion.wrapperad.view.DownloadTopIrregularView r10 = com.transsion.wrapperad.view.DownloadTopIrregularView.this
                com.transsion.ad.view.native_ad.NativeWrapperAdView r10 = com.transsion.wrapperad.view.DownloadTopIrregularView.access$getNativeWrapperAdView$p(r10)
                jg.c.k(r10)
                com.transsion.wrapperad.view.DownloadTopIrregularView r10 = com.transsion.wrapperad.view.DownloadTopIrregularView.this
                android.widget.ImageView r10 = com.transsion.wrapperad.view.DownloadTopIrregularView.access$getCloseImg$p(r10)
                jg.c.k(r10)
                int r10 = r9.$maxTopMargin
                int r1 = r9.$mCurrentTopMargin
                int r10 = r10 - r1
                int r10 = r10 / 10
                android.view.ViewGroup$MarginLayoutParams r3 = r9.$layoutParams
                com.transsion.wrapperad.view.DownloadTopIrregularView r4 = com.transsion.wrapperad.view.DownloadTopIrregularView.this
                r5 = 0
                r6 = r3
                r3 = r1
                r1 = r5
                r5 = r4
                r4 = r10
            L4b:
                if (r1 >= r4) goto L72
                int r10 = r1 * 10
                int r10 = r10 + r3
                r6.topMargin = r10
                r9.L$0 = r6
                r9.L$1 = r5
                r9.I$0 = r4
                r9.I$1 = r3
                r9.I$2 = r1
                r9.label = r2
                r7 = 4
                java.lang.Object r10 = kotlinx.coroutines.u0.a(r7, r9)
                if (r10 != r0) goto L67
                return r0
            L67:
                android.view.ViewGroup r10 = com.transsion.wrapperad.view.DownloadTopIrregularView.access$getMGeminiViewGroup$p(r5)
                if (r10 == 0) goto L70
                r10.setLayoutParams(r6)
            L70:
                int r1 = r1 + r2
                goto L4b
            L72:
                kotlin.Unit r10 = kotlin.Unit.f67061a
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.wrapperad.view.DownloadTopIrregularView.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public DownloadTopIrregularView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DownloadTopIrregularView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.closeImg = new ImageView(context);
        this.nativeWrapperAdView = new NativeWrapperAdView(context, null, 2, null);
        this.adListener = new a();
    }

    public /* synthetic */ DownloadTopIrregularView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    private final void b() {
        q qVar = q.f76267a;
        qVar.a(this.nativeWrapperAdView);
        addView(this.nativeWrapperAdView);
        this.closeImg.setImageResource(R$mipmap.ad_irregular_close);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a0.a(20.0f), a0.a(20.0f));
        layoutParams.gravity = 8388629;
        layoutParams.setMarginEnd(a0.a(12.0f));
        this.closeImg.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.wrapperad.view.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadTopIrregularView.c(this.f58361a, view);
            }
        });
        qVar.a(this.closeImg);
        addView(this.closeImg, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(DownloadTopIrregularView downloadTopIrregularView, View view) {
        downloadTopIrregularView.destroy();
    }

    private final void d() {
        BiddingNativeManager biddingNativeManager = this.adManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        this.adManager = null;
    }

    private final void e() {
        int statusBarHeight = ImmersionBar.getStatusBarHeight(getContext());
        ViewGroup viewGroup = this.mGeminiViewGroup;
        ViewGroup.LayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = statusBarHeight;
            ViewGroup viewGroup2 = this.mGeminiViewGroup;
            if (viewGroup2 != null) {
                viewGroup2.setLayoutParams(marginLayoutParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        int iE = (y.e() * 3) / 10;
        setLayoutParams(new FrameLayout.LayoutParams(-1, iE));
        jg.c.k(this.nativeWrapperAdView);
        ViewGroup viewGroup = this.mGeminiViewGroup;
        ViewGroup.LayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = iE;
            ViewGroup viewGroup2 = this.mGeminiViewGroup;
            if (viewGroup2 != null) {
                viewGroup2.setLayoutParams(marginLayoutParams);
            }
        }
    }

    public final void destroy() {
        d();
        this.mMaxEcpmObject = null;
        removeAllViews();
        e();
    }

    public final void loadAd() {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        if (this.mMaxEcpmObject != null) {
            return;
        }
        if (this.adManager == null) {
            BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
            this.adManager = biddingNativeManager;
            biddingNativeManager.O0("TabDownloadTopIrregularScene");
            BiddingNativeManager biddingNativeManager2 = this.adManager;
            if (biddingNativeManager2 != null) {
                biddingNativeManager2.N0(this.adListener);
            }
            b();
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new AnonymousClass1(null), 3, null);
    }

    public final void onScroll(float deltaX, float deltaY, ScrollDetectFrameLayout.ScrollDirection direction) {
        Intrinsics.h(direction, "direction");
        if (this.mMaxEcpmObject == null || this.currentDirection == direction) {
            return;
        }
        this.currentDirection = direction;
        t1 t1Var = this.job;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        ViewGroup viewGroup = this.mGeminiViewGroup;
        ViewGroup.LayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams == null) {
            return;
        }
        int statusBarHeight = ImmersionBar.getStatusBarHeight(getContext());
        int height = getHeight();
        int i11 = marginLayoutParams.topMargin;
        if (i11 <= 0) {
            return;
        }
        if (direction == ScrollDetectFrameLayout.ScrollDirection.UP) {
            LifecycleCoroutineScope lifecycleCoroutineScope = this.mLifecycleScope;
            this.job = lifecycleCoroutineScope != null ? kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new C10751(i11, statusBarHeight, this, marginLayoutParams, null), 3, null) : null;
        } else {
            LifecycleCoroutineScope lifecycleCoroutineScope2 = this.mLifecycleScope;
            this.job = lifecycleCoroutineScope2 != null ? kotlinx.coroutines.k.d(lifecycleCoroutineScope2, null, null, new AnonymousClass2(height, i11, marginLayoutParams, null), 3, null) : null;
        }
    }

    public final void setViewGroup(ViewGroup geminiViewGroup, LifecycleCoroutineScope lifecycleScope) {
        Intrinsics.h(lifecycleScope, "lifecycleScope");
        this.mGeminiViewGroup = geminiViewGroup;
        this.mLifecycleScope = lifecycleScope;
        e();
    }

    public final void showAd() {
        if (this.nativeViewBinder == null) {
            cy.b bVar = cy.b.f60940a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.nativeViewBinder = bVar.a(context, "TabDownloadTopIrregularScene");
        }
        this.nativeWrapperAdView.bindNativeView(this.adManager, this.nativeViewBinder, this.mMaxEcpmObject);
    }
}
