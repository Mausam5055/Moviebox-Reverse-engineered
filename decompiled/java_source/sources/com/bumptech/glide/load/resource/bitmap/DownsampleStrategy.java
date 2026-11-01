package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.Option;

/* JADX INFO: loaded from: classes.dex */
public abstract class DownsampleStrategy {
    public static final DownsampleStrategy CENTER_OUTSIDE;
    public static final DownsampleStrategy DEFAULT;
    static final boolean IS_BITMAP_FACTORY_SCALING_SUPPORTED;
    public static final DownsampleStrategy NONE;
    public static final Option<DownsampleStrategy> OPTION;
    public static final DownsampleStrategy AT_LEAST = new AtLeast();
    public static final DownsampleStrategy AT_MOST = new AtMost();
    public static final DownsampleStrategy FIT_CENTER = new FitCenter();
    public static final DownsampleStrategy CENTER_INSIDE = new CenterInside();

    /* JADX INFO: loaded from: classes2.dex */
    private static class AtLeast extends DownsampleStrategy {
        AtLeast() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding getSampleSizeRounding(int i11, int i12, int i13, int i14) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float getScaleFactor(int i11, int i12, int i13, int i14) {
            int iMin = Math.min(i12 / i14, i11 / i13);
            if (iMin == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMin);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static class AtMost extends DownsampleStrategy {
        AtMost() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding getSampleSizeRounding(int i11, int i12, int i13, int i14) {
            return SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float getScaleFactor(int i11, int i12, int i13, int i14) {
            int iCeil = (int) Math.ceil(Math.max(i12 / i14, i11 / i13));
            int iMax = Math.max(1, Integer.highestOneBit(iCeil));
            return 1.0f / (iMax << (iMax >= iCeil ? 0 : 1));
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static class CenterInside extends DownsampleStrategy {
        CenterInside() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding getSampleSizeRounding(int i11, int i12, int i13, int i14) {
            return getScaleFactor(i11, i12, i13, i14) == 1.0f ? SampleSizeRounding.QUALITY : DownsampleStrategy.FIT_CENTER.getSampleSizeRounding(i11, i12, i13, i14);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float getScaleFactor(int i11, int i12, int i13, int i14) {
            return Math.min(1.0f, DownsampleStrategy.FIT_CENTER.getScaleFactor(i11, i12, i13, i14));
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static class CenterOutside extends DownsampleStrategy {
        CenterOutside() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding getSampleSizeRounding(int i11, int i12, int i13, int i14) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float getScaleFactor(int i11, int i12, int i13, int i14) {
            return Math.max(i13 / i11, i14 / i12);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static class FitCenter extends DownsampleStrategy {
        FitCenter() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding getSampleSizeRounding(int i11, int i12, int i13, int i14) {
            return DownsampleStrategy.IS_BITMAP_FACTORY_SCALING_SUPPORTED ? SampleSizeRounding.QUALITY : SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float getScaleFactor(int i11, int i12, int i13, int i14) {
            if (DownsampleStrategy.IS_BITMAP_FACTORY_SCALING_SUPPORTED) {
                return Math.min(i13 / i11, i14 / i12);
            }
            int iMax = Math.max(i12 / i14, i11 / i13);
            if (iMax == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMax);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static class None extends DownsampleStrategy {
        None() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding getSampleSizeRounding(int i11, int i12, int i13, int i14) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float getScaleFactor(int i11, int i12, int i13, int i14) {
            return 1.0f;
        }
    }

    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    static {
        CenterOutside centerOutside = new CenterOutside();
        CENTER_OUTSIDE = centerOutside;
        NONE = new None();
        DEFAULT = centerOutside;
        OPTION = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", centerOutside);
        IS_BITMAP_FACTORY_SCALING_SUPPORTED = true;
    }

    public abstract SampleSizeRounding getSampleSizeRounding(int i11, int i12, int i13, int i14);

    public abstract float getScaleFactor(int i11, int i12, int i13, int i14);
}
