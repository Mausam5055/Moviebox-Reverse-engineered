package com.transsion.ad.bidding.banner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.bidding.base.AbsBiddingBuyOutView;
import com.transsion.ad.strategy.i;
import com.transsion.ad.view.AdTagView;
import com.transsion.player.orplayer.g;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\nR\u0016\u0010\u001c\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;", "Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "l", "()V", "Landroid/view/View;", "nonBannerRoot", "setMute", "(Landroid/view/View;)V", "setClick", "Landroid/widget/FrameLayout;", "getMediaContainer", "()Landroid/widget/FrameLayout;", "", "isShowVolumeIcon", "()Z", "", "getLogTag", "()Ljava/lang/String;", "showAd", TtmlNode.TAG_P, "Z", "isMute", CampaignEx.JSON_KEY_AD_Q, "Landroid/widget/FrameLayout;", "mediaContainer", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutBannerView extends AbsBiddingBuyOutView {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isMute;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private FrameLayout mediaContainer;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public BiddingBuyOutBannerView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BiddingBuyOutBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
    }

    public /* synthetic */ BiddingBuyOutBannerView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    private final void l() {
        if (getMAdPlans() == null) {
            di.a mListener = getMListener();
            if (mListener != null) {
                mListener.h(new TAdErrorCode(1103, "adPlans is null"), getMaxEcpmObject());
                return;
            }
            return;
        }
        View viewInflate = LayoutInflater.from(Utils.a()).inflate(R$layout.bidding_buy_out_banner_view, (ViewGroup) this, false);
        this.mediaContainer = (FrameLayout) viewInflate.findViewById(R$id.flAdContainer);
        setClick(viewInflate);
        setMute(viewInflate);
        AdTagView adTagView = (AdTagView) viewInflate.findViewById(R$id.adIcon);
        if (adTagView != null) {
            i.f42235a.a(adTagView);
        }
        showMedia();
        addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(BiddingBuyOutBannerView biddingBuyOutBannerView, View it) {
        Intrinsics.h(it, "it");
        biddingBuyOutBannerView.onAdClick();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(BiddingBuyOutBannerView biddingBuyOutBannerView, AppCompatImageView appCompatImageView, View view) {
        g mOrPlayer = biddingBuyOutBannerView.getMOrPlayer();
        if (mOrPlayer == null || !mOrPlayer.isMute()) {
            g mOrPlayer2 = biddingBuyOutBannerView.getMOrPlayer();
            if (mOrPlayer2 != null) {
                mOrPlayer2.setMute(true);
            }
            appCompatImageView.setImageResource(R$mipmap.ad_volumeoff);
            return;
        }
        g mOrPlayer3 = biddingBuyOutBannerView.getMOrPlayer();
        if (mOrPlayer3 != null) {
            mOrPlayer3.setMute(false);
        }
        appCompatImageView.setImageResource(R$mipmap.ad_volumeon);
    }

    private final void setClick(View nonBannerRoot) {
        if (nonBannerRoot != null) {
            nonBannerRoot.setOnClickListener(new ti.g(0L, new Function1() { // from class: com.transsion.ad.bidding.banner.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BiddingBuyOutBannerView.m(this.f41793a, (View) obj);
                }
            }, 1, null));
        }
    }

    private final void setMute(View nonBannerRoot) {
        final AppCompatImageView appCompatImageView;
        if (nonBannerRoot == null || (appCompatImageView = (AppCompatImageView) nonBannerRoot.findViewById(R$id.mute)) == null) {
            return;
        }
        appCompatImageView.setVisibility(this.isMute ? 0 : 8);
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.banner.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BiddingBuyOutBannerView.n(this.f41794a, appCompatImageView, view);
            }
        });
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView, oi.b
    public String getLogTag() {
        return "ad_b";
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView
    public FrameLayout getMediaContainer() {
        return this.mediaContainer;
    }

    @Override // com.transsion.ad.bidding.base.AbsBiddingBuyOutView
    /* JADX INFO: renamed from: isShowVolumeIcon */
    public boolean getMIsShowVolumeIcon() {
        return true;
    }

    public final void showAd() {
        l();
    }
}
