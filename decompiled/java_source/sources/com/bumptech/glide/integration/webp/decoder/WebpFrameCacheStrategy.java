package com.bumptech.glide.integration.webp.decoder;

/* JADX INFO: loaded from: classes.dex */
public final class WebpFrameCacheStrategy {
    private int mCacheSize;
    private CacheControl mCacheStrategy;
    public static final WebpFrameCacheStrategy NONE = new Builder().noCache().build();
    public static final WebpFrameCacheStrategy AUTO = new Builder().cacheAuto().build();
    public static final WebpFrameCacheStrategy ALL = new Builder().cacheAll().build();

    /* JADX INFO: loaded from: classes2.dex */
    public static final class Builder {
        private CacheControl cacheControl;
        private int cacheSize;

        public WebpFrameCacheStrategy build() {
            return new WebpFrameCacheStrategy(this);
        }

        public Builder cacheAll() {
            this.cacheControl = CacheControl.CACHE_ALL;
            return this;
        }

        public Builder cacheAuto() {
            this.cacheControl = CacheControl.CACHE_AUTO;
            return this;
        }

        public Builder cacheControl(CacheControl cacheControl) {
            this.cacheControl = cacheControl;
            return this;
        }

        public Builder cacheLimited() {
            this.cacheControl = CacheControl.CACHE_LIMITED;
            return this;
        }

        public Builder cacheSize(int i11) {
            this.cacheSize = i11;
            if (i11 == 0) {
                this.cacheControl = CacheControl.CACHE_NONE;
            } else if (i11 == Integer.MAX_VALUE) {
                this.cacheControl = CacheControl.CACHE_ALL;
            } else {
                this.cacheControl = CacheControl.CACHE_LIMITED;
            }
            return this;
        }

        public Builder noCache() {
            this.cacheControl = CacheControl.CACHE_NONE;
            return this;
        }
    }

    public enum CacheControl {
        CACHE_NONE,
        CACHE_LIMITED,
        CACHE_AUTO,
        CACHE_ALL
    }

    private WebpFrameCacheStrategy(Builder builder) {
        this.mCacheStrategy = builder.cacheControl;
        this.mCacheSize = builder.cacheSize;
    }

    public boolean cacheAll() {
        return this.mCacheStrategy == CacheControl.CACHE_ALL;
    }

    public boolean cacheAuto() {
        return this.mCacheStrategy == CacheControl.CACHE_AUTO;
    }

    public CacheControl getCacheControl() {
        return this.mCacheStrategy;
    }

    public int getCacheSize() {
        return this.mCacheSize;
    }

    public boolean noCache() {
        return this.mCacheStrategy == CacheControl.CACHE_NONE;
    }
}
