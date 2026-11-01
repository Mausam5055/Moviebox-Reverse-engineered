package com.hisavana.mediation.ad;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class TMediaView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ImageView.ScaleType[] f33182b = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ImageView.ScaleType f33183a;

    public TMediaView(@NonNull Context context) {
        this(context, null);
    }

    public TMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f33183a = ImageView.ScaleType.FIT_CENTER;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TMediaView, i11, 0);
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.TMediaView_sspScaleType, 3);
        if (i12 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f33182b;
            if (i12 < scaleTypeArr.length) {
                this.f33183a = scaleTypeArr[i12];
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void attachLayout(@NonNull BaseNativeViewHolder baseNativeViewHolder, TAdNativeInfo tAdNativeInfo) {
        if (baseNativeViewHolder == null) {
            return;
        }
        removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        View mediaView = baseNativeViewHolder.getMediaView(getContext(), tAdNativeInfo, this);
        layoutParams.gravity = 17;
        if (mediaView != null) {
            addView(mediaView, layoutParams);
        }
    }

    public View getMediaView() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    public ImageView.ScaleType getScaleType() {
        return this.f33183a;
    }

    public void setMediaView(AdImage adImage) {
        View mediaView = getMediaView();
        if (mediaView == null) {
            AdLogUtil.Log().w("TMediaView", "childView is null");
        } else if (mediaView instanceof MediaView) {
            ((MediaView) mediaView).setMediaView(adImage, this.f33183a, false);
        }
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        this.f33183a = scaleType;
    }
}
