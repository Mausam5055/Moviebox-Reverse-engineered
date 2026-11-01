package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.android.volley.ParseError;
import com.android.volley.Request;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i extends Request {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;
    private static final Object sDecodeLock = new Object();
    private final Bitmap.Config mDecodeConfig;

    @Nullable
    private com.android.volley.i.b mListener;
    private final Object mLock;
    private final int mMaxHeight;
    private final int mMaxWidth;
    private final ImageView.ScaleType mScaleType;

    public i(String str, com.android.volley.i.b bVar, int i11, int i12, ImageView.ScaleType scaleType, Bitmap.Config config, com.android.volley.i.a aVar) {
        super(0, str, aVar);
        this.mLock = new Object();
        setRetryPolicy(new com.android.volley.d(1000, 2, 2.0f));
        this.mListener = bVar;
        this.mDecodeConfig = config;
        this.mMaxWidth = i11;
        this.mMaxHeight = i12;
        this.mScaleType = scaleType;
    }

    private com.android.volley.i d(com.android.volley.g gVar) {
        Bitmap bitmapDecodeByteArray;
        byte[] bArr = gVar.f19235b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.mMaxWidth == 0 && this.mMaxHeight == 0) {
            options.inPreferredConfig = this.mDecodeConfig;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i11 = options.outWidth;
            int i12 = options.outHeight;
            int iE = e(this.mMaxWidth, this.mMaxHeight, i11, i12, this.mScaleType);
            int iE2 = e(this.mMaxHeight, this.mMaxWidth, i12, i11, this.mScaleType);
            options.inJustDecodeBounds = false;
            options.inSampleSize = findBestSampleSize(i11, i12, iE, iE2);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iE || bitmapDecodeByteArray.getHeight() > iE2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iE, iE2, true);
                bitmapDecodeByteArray.recycle();
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        return bitmapDecodeByteArray == null ? com.android.volley.i.a(new ParseError(gVar)) : com.android.volley.i.c(bitmapDecodeByteArray, d.e(gVar));
    }

    private static int e(int i11, int i12, int i13, int i14, ImageView.ScaleType scaleType) {
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

    static int findBestSampleSize(int i11, int i12, int i13, int i14) {
        double dMin = Math.min(((double) i11) / ((double) i13), ((double) i12) / ((double) i14));
        float f11 = 1.0f;
        while (true) {
            float f12 = 2.0f * f11;
            if (f12 > dMin) {
                return (int) f11;
            }
            f11 = f12;
        }
    }

    @Override // com.android.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.Request
    public void deliverResponse(Bitmap bitmap) {
        com.android.volley.i.b bVar;
        synchronized (this.mLock) {
            bVar = this.mListener;
        }
        if (bVar != null) {
            bVar.onResponse(bitmap);
        }
    }

    @Override // com.android.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    @Override // com.android.volley.Request
    protected com.android.volley.i parseNetworkResponse(com.android.volley.g gVar) {
        com.android.volley.i iVarD;
        synchronized (sDecodeLock) {
            try {
                try {
                    iVarD = d(gVar);
                } catch (OutOfMemoryError e11) {
                    com.android.volley.l.c("Caught OOM for %d byte image, url=%s", Integer.valueOf(gVar.f19235b.length), getUrl());
                    return com.android.volley.i.a(new ParseError(e11));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVarD;
    }
}
