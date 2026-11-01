package com.bytedance.sdk.openadsdk.uA;

import android.graphics.Bitmap;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class TKC implements uvD<Bitmap> {
    private final WeakReference<ImageView> Sj;
    private uvD<Bitmap> TKC;
    private final String sP = "ImageLoaderToViewWrapper";

    private TKC(ImageView imageView) {
        this.Sj = new WeakReference<>(imageView);
    }

    private TKC(ImageView imageView, uvD<Bitmap> uvd) {
        this.Sj = new WeakReference<>(imageView);
        this.TKC = uvd;
    }

    public static uvD Sj(sU sUVar, String str, ImageView imageView) {
        return new sP(sUVar, str, new TKC(imageView));
    }

    public static uvD Sj(sU sUVar, String str, ImageView imageView, uvD<Bitmap> uvd) {
        return new sP(sUVar, str, new TKC(imageView, uvd));
    }

    @Override // com.bytedance.sdk.component.HiB.uvD
    public void Sj(int i11, String str, @Nullable Throwable th2) {
        uvD<Bitmap> uvd = this.TKC;
        if (uvd != null) {
            uvd.Sj(i11, str, th2);
        }
    }

    @Override // com.bytedance.sdk.component.HiB.uvD
    public void Sj(Ym<Bitmap> ym2) {
        final ImageView imageView = this.Sj.get();
        if (imageView == null || !(ym2.sP() instanceof Bitmap)) {
            return;
        }
        final Bitmap bitmapSP = ym2.sP();
        if (JcM.vS()) {
            imageView.setImageBitmap(bitmapSP);
        } else {
            sef.TKC().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.uA.TKC.1
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageBitmap(bitmapSP);
                }
            });
        }
        uvD<Bitmap> uvd = this.TKC;
        if (uvd != null) {
            uvd.Sj(ym2);
        }
    }
}
