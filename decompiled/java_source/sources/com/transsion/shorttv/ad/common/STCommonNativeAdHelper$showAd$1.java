package com.transsion.shorttv.ad.common;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewGroupKt;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.hisavana.mediation.ad.TAdNativeView;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.R$id;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ad.common.STCommonNativeAdHelper$showAd$1", f = "STCommonNativeAdHelper.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class STCommonNativeAdHelper$showAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ r $layoutProvider;
    final /* synthetic */ NativeWrapperAdView $nativeAdView;
    final /* synthetic */ Function1<Boolean, Unit> $showCallback;
    int label;
    final /* synthetic */ STCommonNativeAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    STCommonNativeAdHelper$showAd$1(STCommonNativeAdHelper sTCommonNativeAdHelper, Function1<? super Boolean, Unit> function1, NativeWrapperAdView nativeWrapperAdView, r rVar, Continuation<? super STCommonNativeAdHelper$showAd$1> continuation) {
        super(2, continuation);
        this.this$0 = sTCommonNativeAdHelper;
        this.$showCallback = function1;
        this.$nativeAdView = nativeWrapperAdView;
        this.$layoutProvider = rVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(NativeWrapperAdView nativeWrapperAdView) {
        Object next;
        View view;
        Sequence<View> children;
        Object next2;
        try {
            Result.Companion companion = Result.INSTANCE;
            ImageView imageView = (ImageView) nativeWrapperAdView.findViewById(R$id.ad_blur_view);
            if (imageView != null) {
                imageView.setBackgroundColor(Color.parseColor("#E6000000"));
            }
            Iterator f67431a = ViewGroupKt.getChildren(nativeWrapperAdView).getF67431a();
            do {
                if (!f67431a.hasNext()) {
                    next = null;
                    break;
                }
                next = f67431a.next();
            } while (!(((View) next) instanceof TAdNativeView));
            RelativeLayout relativeLayout = next instanceof RelativeLayout ? (RelativeLayout) next : null;
            if (relativeLayout == null || (children = ViewGroupKt.getChildren(relativeLayout)) == null) {
                view = null;
            } else {
                Iterator f67431a2 = children.getF67431a();
                do {
                    if (!f67431a2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = f67431a2.next();
                } while (!(((View) next2) instanceof TNativeView));
                view = (View) next2;
            }
            FrameLayout frameLayout = view instanceof FrameLayout ? (FrameLayout) view : null;
            if (relativeLayout != null && frameLayout != null) {
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                RelativeLayout.LayoutParams layoutParams2 = layoutParams instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams : null;
                if (layoutParams2 == null) {
                    return;
                }
                layoutParams2.width = -1;
                layoutParams2.height = -1;
                frameLayout.setLayoutParams(layoutParams2);
                frameLayout.requestLayout();
                Result.m454constructorimpl(Unit.f67061a);
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new STCommonNativeAdHelper$showAd$1(this.this$0, this.$showCallback, this.$nativeAdView, this.$layoutProvider, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((STCommonNativeAdHelper$showAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        STCommonNativeAdHelper sTCommonNativeAdHelper = this.this$0;
        Function1<Boolean, Unit> function1 = this.$showCallback;
        final NativeWrapperAdView nativeWrapperAdView = this.$nativeAdView;
        r rVar = this.$layoutProvider;
        try {
            Result.Companion companion = Result.INSTANCE;
            ur.a aVar = ur.a.f76889a;
            String strO = sTCommonNativeAdHelper.o();
            BiddingNativeManager biddingNativeManager = sTCommonNativeAdHelper.f52690c;
            aVar.b(strO, "trigger show ad", biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
            sTCommonNativeAdHelper.f52693f = function1;
            sTCommonNativeAdHelper.f52694g = new WeakReference(nativeWrapperAdView);
            nativeWrapperAdView.bindNativeView(sTCommonNativeAdHelper.f52690c, rVar, sTCommonNativeAdHelper.f52691d);
            objM454constructorimpl = Result.m454constructorimpl(Boxing.a(nativeWrapperAdView.post(new Runnable() { // from class: com.transsion.shorttv.ad.common.a
                @Override // java.lang.Runnable
                public final void run() {
                    STCommonNativeAdHelper$showAd$1.d(nativeWrapperAdView);
                }
            })));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Function1<Boolean, Unit> function2 = this.$showCallback;
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null && function2 != null) {
            function2.invoke(Boxing.a(false));
        }
        return Unit.f67061a;
    }
}
