package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BitmapTransformation implements Transformation<Bitmap> {
    protected abstract Bitmap transform(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i11, int i12);

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public final Resource<Bitmap> transform(@NonNull Context context, @NonNull Resource<Bitmap> resource, int i11, int i12) {
        if (!Util.isValidDimensions(i11, i12)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i11 + " or height: " + i12 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        BitmapPool bitmapPool = Glide.get(context).getBitmapPool();
        Bitmap bitmap = resource.get();
        if (i11 == Integer.MIN_VALUE) {
            i11 = bitmap.getWidth();
        }
        if (i12 == Integer.MIN_VALUE) {
            i12 = bitmap.getHeight();
        }
        Bitmap bitmapTransform = transform(bitmapPool, bitmap, i11, i12);
        return bitmap.equals(bitmapTransform) ? resource : BitmapResource.obtain(bitmapTransform, bitmapPool);
    }
}
