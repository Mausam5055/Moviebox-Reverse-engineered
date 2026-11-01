package com.bytedance.sdk.component.HiB.TKC.sP;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static final ImageView.ScaleType Sj = ImageView.ScaleType.CENTER_INSIDE;
    public static final Bitmap.Config sP = Bitmap.Config.ARGB_4444;
    private final ImageView.ScaleType Dq;
    private int EjP;
    private int HiB;
    private final int Jcg;
    private final Bitmap.Config TKC;
    private final int vS;
    private final int uA = 3840;
    private final int TEQ = 104857600;

    public Sj(int i11, int i12, ImageView.ScaleType scaleType, Bitmap.Config config, int i13, int i14) {
        this.TKC = config;
        this.EjP = i11;
        this.HiB = i12;
        this.Dq = scaleType;
        this.vS = i13;
        this.Jcg = i14;
        Sj(i11, i12);
    }

    static int Sj(int i11, int i12, int i13, int i14, int i15, int i16) {
        double dMin = Math.min(((double) i11) / ((double) i13), ((double) i12) / ((double) i14));
        if (i15 > 0 && i16 > 0) {
            dMin = Math.max(dMin, Math.min(((double) Math.max(i11, i12)) / ((double) Math.max(i15, i16)), ((double) Math.min(i11, i12)) / ((double) Math.min(i15, i16))));
        }
        float f11 = 1.0f;
        while (true) {
            float f12 = 2.0f * f11;
            if (f12 > dMin) {
                return (int) f11;
            }
            f11 = f12;
        }
    }

    private static int Sj(int i11, int i12, int i13, int i14, ImageView.ScaleType scaleType) {
        if (i11 == 0 && i12 == 0) {
            return i13;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i11 == 0 ? i13 : i11;
        }
        if (i11 == 0) {
            return (int) (((double) i13) * (((double) i12) / ((double) i14)));
        }
        if (i12 == 0) {
            return i11;
        }
        double d11 = ((double) i14) / ((double) i13);
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d12 = i12;
            return ((double) i11) * d11 < d12 ? (int) (d12 / d11) : i11;
        }
        double d13 = i12;
        return ((double) i11) * d11 > d13 ? (int) (d13 / d11) : i11;
    }

    private void Sj(int i11, int i12) {
        if (i11 > 3840 && i12 > 3840) {
            if (i11 > i12) {
                this.EjP = 3840;
                this.HiB = (i12 * 3840) / i11;
                return;
            } else {
                this.EjP = (i11 * 3840) / i12;
                this.HiB = 3840;
                return;
            }
        }
        if (i11 > 3840) {
            this.EjP = 3840;
            this.HiB = (i12 * 3840) / i11;
        } else if (i12 > 3840) {
            this.EjP = (i11 * 3840) / i12;
            this.HiB = 3840;
        }
    }

    public Bitmap Sj(byte[] bArr) {
        Bitmap bitmapDecodeByteArray;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.EjP == 0 && this.HiB == 0) {
            options.inPreferredConfig = this.TKC;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i11 = options.outWidth;
            int i12 = options.outHeight;
            int iSj = Sj(this.EjP, this.HiB, i11, i12, this.Dq);
            int iSj2 = Sj(this.HiB, this.EjP, i12, i11, this.Dq);
            options.inJustDecodeBounds = false;
            options.inSampleSize = Sj(i11, i12, iSj, iSj2, this.vS, this.Jcg);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iSj || bitmapDecodeByteArray.getHeight() > iSj2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iSj, iSj2, true);
                if (bitmapCreateScaledBitmap != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        if (bitmapDecodeByteArray != null && bitmapDecodeByteArray.getByteCount() > 104857600) {
            int width = bitmapDecodeByteArray.getWidth() / 2;
            int height = bitmapDecodeByteArray.getHeight() / 2;
            if (width > 0 && height > 0) {
                Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapDecodeByteArray, width, height, true);
                if (bitmapCreateScaledBitmap2 != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                return bitmapCreateScaledBitmap2;
            }
        }
        return bitmapDecodeByteArray;
    }
}
