package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.f4;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J/\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\u000eJ\u0015\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010!\u001a\u00020 ¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\f¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\f¢\u0006\u0004\b%\u0010$J\u0015\u0010'\u001a\u00020\f2\u0006\u0010&\u001a\u00020 ¢\u0006\u0004\b'\u0010(J\r\u0010)\u001a\u00020 ¢\u0006\u0004\b)\u0010\"J\r\u0010*\u001a\u00020\f¢\u0006\u0004\b*\u0010$R\u0014\u0010-\u001a\u00020\u00138\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", PushConstants.PUSH_SERVICE_TYPE_SHOW, "", "showRepeatButton", "(Z)V", "Lcom/cloud/hisavana/sdk/f4;", "adMediaPlayerListener", "setAdMediaPlayerListener", "(Lcom/cloud/hisavana/sdk/f4;)V", "", "path", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTO", CampaignEx.JSON_NATIVE_VIDEO_MUTE, "enableDiskCache", "setMediaData", "(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZ)V", "playWhenReady", "setPlayWhenReady", "url", "setCompanionUrl", "(Ljava/lang/String;)V", "", "pause", "()J", CampaignEx.JSON_NATIVE_VIDEO_RESUME, "()V", "toggleVolume", "duration", "seekTo", "(J)V", "getDuration", "release", "a", "Ljava/lang/String;", "tag", "Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;", "videoView", "Landroid/widget/ProgressBar;", "c", "Landroid/widget/ProgressBar;", "progressBar", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/ImageView;", "repeatButton", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RewardedVideoView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String tag;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private AdVideoView videoView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ProgressBar progressBar;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final ImageView repeatButton;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RewardedVideoView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RewardedVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RewardedVideoView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.tag = "Rewarded";
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_interstitial_ad_video_view, this);
        this.videoView = (AdVideoView) viewInflate.findViewById(R$id.ad_video);
        this.progressBar = (ProgressBar) viewInflate.findViewById(R$id.ad_progress);
        View viewFindViewById = viewInflate.findViewById(R$id.repeat_btn);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById;
        this.repeatButton = imageView;
        imageView.setVisibility(8);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.widget.video.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RewardedVideoView.b(this.f22317a, view);
            }
        });
    }

    public /* synthetic */ RewardedVideoView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(RewardedVideoView this$0, View view) {
        AdVideoView adVideoView;
        Intrinsics.h(this$0, "this$0");
        if (!NetStateManager.checkNetworkState(false) || (adVideoView = this$0.videoView) == null) {
            return;
        }
        adVideoView.repeat();
    }

    public final long getDuration() {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            return adVideoView.getDuration();
        }
        return 0L;
    }

    public final long pause() {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.dispatchPause();
        }
        AdVideoView adVideoView2 = this.videoView;
        if (adVideoView2 != null) {
            return adVideoView2.getCurrentPosition();
        }
        return 0L;
    }

    public final void release() {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
        }
        AdVideoView adVideoView2 = this.videoView;
        if (adVideoView2 != null) {
            adVideoView2.release();
        }
        AdVideoView adVideoView3 = this.videoView;
        if (adVideoView3 != null) {
            adVideoView3.removeAllViews();
        }
        removeView(this.videoView);
        this.videoView = null;
    }

    public final void resume() {
        AdVideoView adVideoView;
        if (!NetStateManager.checkNetworkState(false) || (adVideoView = this.videoView) == null) {
            return;
        }
        adVideoView.dispatchPlay();
    }

    public final void seekTo(long duration) {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.seekTo(duration);
        }
    }

    public final void setAdMediaPlayerListener(f4 adMediaPlayerListener) {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(adMediaPlayerListener);
        }
    }

    public final void setCompanionUrl(String url) {
        Intrinsics.h(url, "url");
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(url);
        }
    }

    public final void setMediaData(String path, AdsDTO adsDTO, boolean mute, boolean enableDiskCache) {
        Intrinsics.h(path, "path");
        e4.b().i(this.tag, "setMediaData -------------> path = " + path);
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.setMeasureAble(false);
        }
        AdVideoView adVideoView2 = this.videoView;
        if (adVideoView2 != null) {
            adVideoView2.setMediaData(adsDTO, path, mute, enableDiskCache);
        }
    }

    public final void setPlayWhenReady(boolean playWhenReady) {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView == null) {
            return;
        }
        adVideoView.setPlayWhenReady(playWhenReady);
    }

    public final void showRepeatButton(boolean show) {
        if (show) {
            this.repeatButton.setVisibility(getVisibility());
        } else {
            this.repeatButton.setVisibility(8);
        }
    }

    public final void toggleVolume() {
        AdVideoView adVideoView = this.videoView;
        if (adVideoView != null) {
            adVideoView.openOrCloseVolume();
        }
    }
}
