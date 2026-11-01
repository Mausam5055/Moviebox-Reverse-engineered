package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public interface BitmapPool {
    void clearMemory();

    @NonNull
    Bitmap get(int i11, int i12, Bitmap.Config config);

    @NonNull
    Bitmap getDirty(int i11, int i12, Bitmap.Config config);

    long getMaxSize();

    void put(Bitmap bitmap);

    void setSizeMultiplier(float f11);

    void trimMemory(int i11);
}
