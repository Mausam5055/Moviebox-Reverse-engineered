package com.hisavana.vungle.holder;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.vungle.check.ExistsCheck;
import com.hisavana.vungle.util.VungleUtil;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.ui.view.MediaView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\r\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0003R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/hisavana/vungle/holder/NativeAdViewHolder;", "Lcom/hisavana/common/base/BaseNativeViewHolder;", "<init>", "()V", "Landroid/content/Context;", "ctx", "Landroid/view/View;", "createIconView", "(Landroid/content/Context;)Landroid/view/View;", "Lcom/hisavana/common/bean/TAdNativeInfo;", "nativeInfo", "Landroid/view/ViewGroup;", "viewGroup", "createMediaView", "(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;", "", PushConstants.PROVIDER_FIELD_DESTROY, "Lcom/vungle/ads/internal/ui/view/MediaView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/vungle/ads/internal/ui/view/MediaView;", "vungleMediaView", "liftoff_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeAdViewHolder extends BaseNativeViewHolder {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private MediaView vungleMediaView;

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    protected View createIconView(Context ctx) {
        ImageView imageView = new ImageView(ctx);
        imageView.setTag(VungleUtil.TAG_ICON_VIEW);
        return imageView;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    protected View createMediaView(Context ctx, TAdNativeInfo nativeInfo, ViewGroup viewGroup) {
        if (ctx == null) {
            ctx = e.a();
        }
        Intrinsics.e(ctx);
        MediaView mediaView = new MediaView(ctx);
        this.vungleMediaView = mediaView;
        mediaView.setTag(VungleUtil.TAG_MEDIA_VIEW);
        MediaView mediaView2 = this.vungleMediaView;
        Intrinsics.f(mediaView2, "null cannot be cast to non-null type com.vungle.ads.internal.ui.view.MediaView");
        return mediaView2;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    public void destroy() {
        super.destroy();
        MediaView mediaView = this.vungleMediaView;
        if (mediaView != null) {
            mediaView.destroy();
        }
        AdLogUtil.Log().d(ExistsCheck.TAG, "Vungle Native holder destroy");
    }
}
