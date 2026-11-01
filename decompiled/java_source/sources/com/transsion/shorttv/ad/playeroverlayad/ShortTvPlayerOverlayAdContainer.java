package com.transsion.shorttv.ad.playeroverlayad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ti.q;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\n¢\u0006\u0004\b\r\u0010\fR\u0014\u0010\u0010\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR$\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "addAdView", "()V", "removeAdView", "a", "Landroid/widget/FrameLayout;", "rootView", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "getNativeAdView", "()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "setNativeAdView", "(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V", "nativeAdView", "Landroid/widget/TextView;", "c", "Landroid/widget/TextView;", "getCountdownView", "()Landroid/widget/TextView;", "setCountdownView", "(Landroid/widget/TextView;)V", "countdownView", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/ImageView;", "getCloseView", "()Landroid/widget/ImageView;", "setCloseView", "(Landroid/widget/ImageView;)V", "closeView", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvPlayerOverlayAdContainer extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final FrameLayout rootView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private NativeWrapperAdView nativeAdView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TextView countdownView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ImageView closeView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ShortTvPlayerOverlayAdContainer(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ShortTvPlayerOverlayAdContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ShortTvPlayerOverlayAdContainer(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        LayoutInflater.from(context).inflate(R$layout.shortv_player_ad_overlay_container_layout, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R$id.root_view);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.rootView = (FrameLayout) viewFindViewById;
        this.nativeAdView = (NativeWrapperAdView) findViewById(R$id.native_ad_view);
        this.countdownView = (TextView) findViewById(R$id.count_down_view);
        this.closeView = (ImageView) findViewById(R$id.close_view);
    }

    public /* synthetic */ ShortTvPlayerOverlayAdContainer(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addAdView() {
        removeAdView();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        NativeWrapperAdView nativeWrapperAdView = new NativeWrapperAdView(context, null, 2, 0 == true ? 1 : 0);
        this.nativeAdView = nativeWrapperAdView;
        this.rootView.addView(nativeWrapperAdView, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    public final ImageView getCloseView() {
        return this.closeView;
    }

    public final TextView getCountdownView() {
        return this.countdownView;
    }

    public final NativeWrapperAdView getNativeAdView() {
        return this.nativeAdView;
    }

    public final void removeAdView() {
        q.f76267a.a(this.nativeAdView);
        this.nativeAdView = null;
    }

    public final void setCloseView(ImageView imageView) {
        this.closeView = imageView;
    }

    public final void setCountdownView(TextView textView) {
        this.countdownView = textView;
    }

    public final void setNativeAdView(NativeWrapperAdView nativeWrapperAdView) {
        this.nativeAdView = nativeWrapperAdView;
    }
}
