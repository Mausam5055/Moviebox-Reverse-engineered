package com.cloud.hisavana.net.disklrucache.impl;

/* JADX INFO: loaded from: classes3.dex */
public class DiskCacheProvider implements IDiskCache.Provider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile IDiskCache f21403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile IDiskCache f21404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile IDiskCache f21405c;

    private IDiskCache a(long j11) {
        if (this.f21405c == null) {
            synchronized (this) {
                try {
                    if (this.f21405c == null) {
                        this.f21405c = new DiskLruCacheFactory(j11, 4).a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f21405c;
    }

    private IDiskCache c(long j11) {
        if (this.f21403a == null) {
            synchronized (this) {
                try {
                    if (this.f21403a == null) {
                        this.f21403a = new DiskLruCacheFactory(j11, 1).a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f21403a;
    }

    private IDiskCache d(long j11) {
        if (this.f21404b == null) {
            synchronized (this) {
                try {
                    if (this.f21404b == null) {
                        this.f21404b = new DiskLruCacheFactory(j11, 3).a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f21404b;
    }

    public IDiskCache b(long j11, int i11) {
        if (i11 != 3) {
            return i11 != 4 ? c(j11) : a(j11);
        }
        return d(j11);
    }
}
