package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.hisavana.sdk.e4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000e\u0010\u000bR\u0016\u0010\b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "videoWidth", "videoHeight", "", "setSize", "(II)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "e", "", "f", "Ljava/lang/String;", "TAG", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ScaleImageView extends AppCompatImageView {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int videoHeight;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int videoWidth;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScaleImageView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.TAG = "ScaleImageView";
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i11;
        float rotation = getRotation();
        if (rotation == 90.0f || rotation == 270.0f) {
            heightMeasureSpec = widthMeasureSpec;
            widthMeasureSpec = heightMeasureSpec;
        }
        int defaultSize = View.getDefaultSize(this.videoWidth, widthMeasureSpec);
        int defaultSize2 = View.getDefaultSize(this.videoHeight, heightMeasureSpec);
        if (this.videoWidth > 0 && this.videoHeight > 0) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            int size = View.MeasureSpec.getSize(widthMeasureSpec);
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
            e4.b().d(this.TAG, "widthSpecMode --->" + mode);
            e4.b().d(this.TAG, "heightSpecMode --->" + mode2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                e4.b().d(this.TAG, "onMeasure --->1");
                e4.b().d(this.TAG, "widthSpecSize --->" + size + " heightSpecSize--->" + size2);
                int i12 = this.videoWidth;
                int i13 = i12 * size2;
                int i14 = this.videoHeight;
                int i15 = size * i14;
                if (i13 < i15) {
                    defaultSize = i13 / i14;
                } else {
                    if (i13 > i15) {
                        int i16 = i15 / i12;
                        defaultSize = size;
                        defaultSize2 = i16;
                    } else {
                        defaultSize = size;
                    }
                    e4.b().d(this.TAG, "width --->" + defaultSize + " height--->" + defaultSize2);
                }
                defaultSize2 = size2;
                e4.b().d(this.TAG, "width --->" + defaultSize + " height--->" + defaultSize2);
            } else if (mode == 1073741824) {
                e4.b().d(this.TAG, "onMeasure --->2");
                int i17 = this.videoHeight;
                int i18 = this.videoWidth;
                int i19 = (size * i17) / i18;
                if (mode2 != Integer.MIN_VALUE || i19 <= size2) {
                    defaultSize = size;
                    defaultSize2 = i19;
                } else {
                    defaultSize = (i18 * size2) / i17;
                    defaultSize2 = size2;
                }
            } else {
                if (mode2 == 1073741824) {
                    e4.b().d(this.TAG, "onMeasure --->3");
                    int i20 = this.videoWidth;
                    int i21 = this.videoHeight;
                    int i22 = (size2 * i20) / i21;
                    if (mode != Integer.MIN_VALUE || i22 <= size) {
                        defaultSize2 = size2;
                        defaultSize = i22;
                    } else {
                        defaultSize2 = (i21 * size) / i20;
                    }
                } else {
                    int i23 = this.videoWidth;
                    int i24 = this.videoHeight;
                    if (mode2 != Integer.MIN_VALUE || i24 <= size2) {
                        i11 = i23;
                        size2 = i24;
                    } else {
                        i11 = (size2 * i23) / i24;
                    }
                    if (mode != Integer.MIN_VALUE || i11 <= size) {
                        defaultSize = i11;
                        defaultSize2 = size2;
                    } else {
                        defaultSize2 = (i24 * size) / i23;
                    }
                }
                defaultSize = size;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public final void setSize(int videoWidth, int videoHeight) {
        e4.b().d(this.TAG, "videoWidth = " + videoWidth + "    videoHeight=" + videoHeight);
        if (this.videoWidth == videoWidth || this.videoHeight == videoHeight) {
            return;
        }
        this.videoWidth = videoWidth;
        this.videoHeight = videoHeight;
        requestLayout();
    }
}
