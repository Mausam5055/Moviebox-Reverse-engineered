package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.view.TextureView;
import android.view.View;
import com.cloud.hisavana.sdk.e4;

/* JADX INFO: loaded from: classes3.dex */
public class MediaTextureView extends TextureView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f22280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f22281b;

    public MediaTextureView(Context context) {
        super(context);
    }

    public void adaptVideoSize(int i11, int i12) {
        e4.b().d("MediaTextureView", "videoWidth --->" + i11);
        e4.b().d("MediaTextureView", "videoHeight --->" + i12);
        e4.b().d("MediaTextureView", "this.videoWidth --->" + this.f22281b);
        e4.b().d("MediaTextureView", "this.videoHeight --->" + this.f22280a);
        if (this.f22281b == i11 || this.f22280a == i12) {
            return;
        }
        this.f22281b = i11;
        this.f22280a = i12;
        requestLayout();
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        float rotation = getRotation();
        if (rotation == 90.0f || rotation == 270.0f) {
            i12 = i11;
            i11 = i12;
        }
        int defaultSize = View.getDefaultSize(this.f22281b, i11);
        int defaultSize2 = View.getDefaultSize(this.f22280a, i12);
        if (this.f22281b > 0 && this.f22280a > 0) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i12);
            int size2 = View.MeasureSpec.getSize(i12);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i13 = this.f22281b;
                int i14 = i13 * size2;
                int i15 = this.f22280a;
                int i16 = size * i15;
                if (i14 < i16) {
                    defaultSize = i14 / i15;
                } else {
                    if (i14 > i16) {
                        defaultSize2 = i16 / i13;
                        defaultSize = size;
                    }
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else if (mode == 1073741824) {
                int i17 = this.f22280a;
                int i18 = this.f22281b;
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
                    int i20 = this.f22281b;
                    int i21 = this.f22280a;
                    int i22 = (size2 * i20) / i21;
                    if (mode != Integer.MIN_VALUE || i22 <= size) {
                        defaultSize2 = size2;
                        defaultSize = i22;
                    } else {
                        defaultSize2 = (i21 * size) / i20;
                    }
                } else {
                    if (size > 0 || size2 > 0) {
                        int i23 = this.f22281b;
                        int i24 = size / i23;
                        int i25 = this.f22280a;
                        if (i24 >= size2 / i25) {
                            defaultSize = (i23 * size2) / i25;
                        } else {
                            defaultSize2 = (i25 * size) / i23;
                        }
                    } else {
                        defaultSize = size;
                    }
                    defaultSize2 = size2;
                }
                defaultSize = size;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override // android.view.View
    public void setRotation(float f11) {
        if (f11 != getRotation()) {
            super.setRotation(f11);
            requestLayout();
        }
    }
}
