package com.bytedance.sdk.openadsdk.api.nativeAd;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class PAGMediaView extends FrameLayout {
    protected Integer Sj;

    public PAGMediaView(@NonNull Context context) {
        super(context);
    }

    public PAGMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PAGMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    public PAGMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
    }

    public void close() {
    }

    public void setMrcTrackerKey(Integer num) {
        this.Sj = num;
    }

    public void setVideoAdListener(PAGVideoAdListener pAGVideoAdListener) {
    }
}
