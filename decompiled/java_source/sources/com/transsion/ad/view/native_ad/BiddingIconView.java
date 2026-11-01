package com.transsion.ad.view.native_ad;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.i;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.base.AbsBiddingBuyOutView;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.base.w;
import com.transsion.ad.ps.model.ItemDetail;
import com.transsion.ad.ps.model.RecommendInfo;
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
import kotlinx.coroutines.j;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/transsion/ad/view/native_ad/BiddingIconView;", "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/widget/FrameLayout;", "getMediaContainer", "()Landroid/widget/FrameLayout;", "", "isShowVolumeIcon", "()Z", "", "getLogTag", "()Ljava/lang/String;", "", "iconPerformClick", "()V", "Lcom/transsion/ad/bidding/base/r;", "adLayoutProvider", "bindIconView", "(Lcom/transsion/ad/bidding/base/r;)V", "Lcom/transsion/ad/bidding/base/w;", TtmlNode.TAG_P, "Lcom/transsion/ad/bidding/base/w;", "adProviderBean", CampaignEx.JSON_KEY_AD_Q, "Z", "mIsShowVolumeIcon", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingIconView extends AbsBiddingBuyOutView {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private w adProviderBean;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean mIsShowVolumeIcon;

    public static final class a implements RequestListener {
        a() {
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            if (resource instanceof GifDrawable) {
                ((GifDrawable) resource).start();
            }
            BiddingIconView.this.setAdMaterialShow(true);
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            BiddingIconView.this.f("图片加载失败 --> " + (glideException != null ? glideException.getMessage() : null));
            return false;
        }
    }

    /* JADX INFO: renamed from: com.transsion.ad.view.native_ad.BiddingIconView$bindIconView$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroid/widget/TextView;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroid/widget/TextView;"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.view.native_ad.BiddingIconView$bindIconView$4", f = "BiddingIconView.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass4 extends SuspendLambda implements Function2<n0, Continuation<? super TextView>, Object> {
        final /* synthetic */ w $adProviderBean;
        int label;
        final /* synthetic */ BiddingIconView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(w wVar, BiddingIconView biddingIconView, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$adProviderBean = wVar;
            this.this$0 = biddingIconView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$adProviderBean, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super TextView> continuation) {
            return ((AnonymousClass4) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ItemDetail detail;
            String sourceSize;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            Integer numD = this.$adProviderBean.d();
            if (numD == null) {
                return null;
            }
            w wVar = this.$adProviderBean;
            BiddingIconView biddingIconView = this.this$0;
            TextView textView = (TextView) wVar.i().findViewById(numD.intValue());
            if (textView == null) {
                return null;
            }
            RecommendInfo mRecommendInfo = biddingIconView.getMRecommendInfo();
            textView.setText(i.b((mRecommendInfo == null || (detail = mRecommendInfo.getDetail()) == null || (sourceSize = detail.getSourceSize()) == null) ? 0L : Long.parseLong(sourceSize), 1));
            return textView;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public BiddingIconView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BiddingIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.mIsShowVolumeIcon = true;
    }

    public /* synthetic */ BiddingIconView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    public final void bindIconView(r adLayoutProvider) {
        ItemDetail detail;
        ItemDetail detail2;
        ItemDetail detail3;
        if (getMRecommendInfo() == null || adLayoutProvider == null) {
            return;
        }
        Context context = getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null && activity.isDestroyed()) {
            oi.b.a.c(this, 5, "当前Activity销毁，广告就不需要展示了", null, false, 4, null);
            return;
        }
        w wVarG = adLayoutProvider.g();
        this.adProviderBean = wVarG;
        this.mIsShowVolumeIcon = adLayoutProvider.B();
        Integer numL = wVarG.l();
        if (numL != null) {
            TextView textView = (TextView) wVarG.i().findViewById(numL.intValue());
            if (textView != null) {
                RecommendInfo mRecommendInfo = getMRecommendInfo();
                textView.setText((mRecommendInfo == null || (detail3 = mRecommendInfo.getDetail()) == null) ? null : detail3.getName());
            }
        }
        Integer numG = wVarG.g();
        if (numG != null) {
            TextView textView2 = (TextView) wVarG.i().findViewById(numG.intValue());
            if (textView2 != null) {
                RecommendInfo mRecommendInfo2 = getMRecommendInfo();
                textView2.setText((mRecommendInfo2 == null || (detail2 = mRecommendInfo2.getDetail()) == null) ? null : detail2.getSimpleDescription());
            }
        }
        Integer numF = wVarG.f();
        if (numF != null) {
            TextView textView3 = (TextView) wVarG.i().findViewById(numF.intValue());
            if (textView3 != null) {
                RecommendInfo mRecommendInfo3 = getMRecommendInfo();
                textView3.setText(mRecommendInfo3 != null ? mRecommendInfo3.getButtonText() : null);
                RecommendInfo mRecommendInfo4 = getMRecommendInfo();
                if (TextUtils.isEmpty(mRecommendInfo4 != null ? mRecommendInfo4.getButtonText() : null)) {
                    textView3.setVisibility(8);
                }
            }
        }
        j.b(null, new AnonymousClass4(wVarG, this, null), 1, null);
        Integer numK = wVarG.k();
        if (numK != null) {
            TextView textView4 = (TextView) wVarG.i().findViewById(numK.intValue());
            if (textView4 != null) {
                RecommendInfo mRecommendInfo5 = getMRecommendInfo();
                textView4.setText((mRecommendInfo5 == null || (detail = mRecommendInfo5.getDetail()) == null) ? null : detail.getStar());
            }
        }
        Integer numH = wVarG.h();
        if (numH != null) {
            FrameLayout frameLayout = (FrameLayout) wVarG.i().findViewById(numH.intValue());
            if (frameLayout != null) {
                frameLayout.removeAllViews();
                ImageView imageView = new ImageView(frameLayout.getContext());
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                RequestManager requestManagerWith = Glide.with(frameLayout.getContext());
                RecommendInfo mRecommendInfo6 = getMRecommendInfo();
                requestManagerWith.load2(mRecommendInfo6 != null ? mRecommendInfo6.getIconUrl() : null).listener(new a()).into(imageView);
                frameLayout.addView(imageView);
            }
        }
        Integer numE = wVarG.e();
        if (numE != null) {
            ImageView imageView2 = (ImageView) wVarG.i().findViewById(numE.intValue());
            imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
            RequestManager requestManagerWith2 = Glide.with(getContext());
            RecommendInfo mRecommendInfo7 = getMRecommendInfo();
            requestManagerWith2.load2(mRecommendInfo7 != null ? mRecommendInfo7.getIconUrl() : null).transform(new wi.a(25)).into(imageView2);
        }
        addSession();
        removeAllViews();
        addView(wVarG.i(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView, oi.b
    public String getLogTag() {
        return "ad_ic";
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView
    public FrameLayout getMediaContainer() {
        Integer numH;
        View viewI;
        Integer numJ;
        View viewI2;
        w wVar = this.adProviderBean;
        if (wVar != null && (numJ = wVar.j()) != null) {
            int iIntValue = numJ.intValue();
            w wVar2 = this.adProviderBean;
            if (wVar2 == null || (viewI2 = wVar2.i()) == null) {
                return null;
            }
            return (FrameLayout) viewI2.findViewById(iIntValue);
        }
        w wVar3 = this.adProviderBean;
        if (wVar3 == null || (numH = wVar3.h()) == null) {
            return null;
        }
        int iIntValue2 = numH.intValue();
        w wVar4 = this.adProviderBean;
        if (wVar4 == null || (viewI = wVar4.i()) == null) {
            return null;
        }
        return (FrameLayout) viewI.findViewById(iIntValue2);
    }

    public final void iconPerformClick() {
        onAdClick();
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView
    /* JADX INFO: renamed from: isShowVolumeIcon, reason: from getter */
    public boolean getMIsShowVolumeIcon() {
        return this.mIsShowVolumeIcon;
    }
}
