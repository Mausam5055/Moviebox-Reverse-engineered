package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class MemorySizeCalculator {
    static final int BYTES_PER_ARGB_8888_PIXEL = 4;
    private static final int LOW_MEMORY_BYTE_ARRAY_POOL_DIVISOR = 2;
    private static final String TAG = "MemorySizeCalculator";
    private final int arrayPoolSize;
    private final int bitmapPoolSize;
    private final Context context;
    private final int memoryCacheSize;

    public static final class Builder {
        static final int ARRAY_POOL_SIZE_BYTES = 4194304;
        static final int BITMAP_POOL_TARGET_SCREENS;
        static final float LOW_MEMORY_MAX_SIZE_MULTIPLIER = 0.33f;
        static final float MAX_SIZE_MULTIPLIER = 0.4f;
        static final int MEMORY_CACHE_TARGET_SCREENS = 2;
        ActivityManager activityManager;
        float bitmapPoolScreens;
        final Context context;
        ScreenDimensions screenDimensions;
        float memoryCacheScreens = 2.0f;
        float maxSizeMultiplier = MAX_SIZE_MULTIPLIER;
        float lowMemoryMaxSizeMultiplier = LOW_MEMORY_MAX_SIZE_MULTIPLIER;
        int arrayPoolSizeBytes = 4194304;

        static {
            BITMAP_POOL_TARGET_SCREENS = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public Builder(Context context) {
            this.bitmapPoolScreens = BITMAP_POOL_TARGET_SCREENS;
            this.context = context;
            this.activityManager = (ActivityManager) context.getSystemService("activity");
            this.screenDimensions = new DisplayMetricsScreenDimensions(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !MemorySizeCalculator.isLowMemoryDevice(this.activityManager)) {
                return;
            }
            this.bitmapPoolScreens = 0.0f;
        }

        public MemorySizeCalculator build() {
            return new MemorySizeCalculator(this);
        }

        Builder setActivityManager(ActivityManager activityManager) {
            this.activityManager = activityManager;
            return this;
        }

        public Builder setArrayPoolSize(int i11) {
            this.arrayPoolSizeBytes = i11;
            return this;
        }

        public Builder setBitmapPoolScreens(float f11) {
            Preconditions.checkArgument(f11 >= 0.0f, "Bitmap pool screens must be greater than or equal to 0");
            this.bitmapPoolScreens = f11;
            return this;
        }

        public Builder setLowMemoryMaxSizeMultiplier(float f11) {
            Preconditions.checkArgument(f11 >= 0.0f && f11 <= 1.0f, "Low memory max size multiplier must be between 0 and 1");
            this.lowMemoryMaxSizeMultiplier = f11;
            return this;
        }

        public Builder setMaxSizeMultiplier(float f11) {
            Preconditions.checkArgument(f11 >= 0.0f && f11 <= 1.0f, "Size multiplier must be between 0 and 1");
            this.maxSizeMultiplier = f11;
            return this;
        }

        public Builder setMemoryCacheScreens(float f11) {
            Preconditions.checkArgument(f11 >= 0.0f, "Memory cache screens must be greater than or equal to 0");
            this.memoryCacheScreens = f11;
            return this;
        }

        Builder setScreenDimensions(ScreenDimensions screenDimensions) {
            this.screenDimensions = screenDimensions;
            return this;
        }
    }

    private static final class DisplayMetricsScreenDimensions implements ScreenDimensions {
        private final DisplayMetrics displayMetrics;

        DisplayMetricsScreenDimensions(DisplayMetrics displayMetrics) {
            this.displayMetrics = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.ScreenDimensions
        public int getHeightPixels() {
            return this.displayMetrics.heightPixels;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.ScreenDimensions
        public int getWidthPixels() {
            return this.displayMetrics.widthPixels;
        }
    }

    interface ScreenDimensions {
        int getHeightPixels();

        int getWidthPixels();
    }

    MemorySizeCalculator(Builder builder) {
        this.context = builder.context;
        int i11 = isLowMemoryDevice(builder.activityManager) ? builder.arrayPoolSizeBytes / 2 : builder.arrayPoolSizeBytes;
        this.arrayPoolSize = i11;
        int maxSize = getMaxSize(builder.activityManager, builder.maxSizeMultiplier, builder.lowMemoryMaxSizeMultiplier);
        float widthPixels = builder.screenDimensions.getWidthPixels() * builder.screenDimensions.getHeightPixels() * 4;
        int iRound = Math.round(builder.bitmapPoolScreens * widthPixels);
        int iRound2 = Math.round(widthPixels * builder.memoryCacheScreens);
        int i12 = maxSize - i11;
        int i13 = iRound2 + iRound;
        if (i13 <= i12) {
            this.memoryCacheSize = iRound2;
            this.bitmapPoolSize = iRound;
        } else {
            float f11 = i12;
            float f12 = builder.bitmapPoolScreens;
            float f13 = builder.memoryCacheScreens;
            float f14 = f11 / (f12 + f13);
            this.memoryCacheSize = Math.round(f13 * f14);
            this.bitmapPoolSize = Math.round(f14 * builder.bitmapPoolScreens);
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calculation complete, Calculated memory cache size: ");
            sb2.append(toMb(this.memoryCacheSize));
            sb2.append(", pool size: ");
            sb2.append(toMb(this.bitmapPoolSize));
            sb2.append(", byte array size: ");
            sb2.append(toMb(i11));
            sb2.append(", memory class limited? ");
            sb2.append(i13 > maxSize);
            sb2.append(", max size: ");
            sb2.append(toMb(maxSize));
            sb2.append(", memoryClass: ");
            sb2.append(builder.activityManager.getMemoryClass());
            sb2.append(", isLowMemoryDevice: ");
            sb2.append(isLowMemoryDevice(builder.activityManager));
        }
    }

    private static int getMaxSize(ActivityManager activityManager, float f11, float f12) {
        float memoryClass = activityManager.getMemoryClass() * 1048576;
        if (isLowMemoryDevice(activityManager)) {
            f11 = f12;
        }
        return Math.round(memoryClass * f11);
    }

    @TargetApi(19)
    static boolean isLowMemoryDevice(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }

    private String toMb(int i11) {
        return Formatter.formatFileSize(this.context, i11);
    }

    public int getArrayPoolSizeInBytes() {
        return this.arrayPoolSize;
    }

    public int getBitmapPoolSize() {
        return this.bitmapPoolSize;
    }

    public int getMemoryCacheSize() {
        return this.memoryCacheSize;
    }
}
