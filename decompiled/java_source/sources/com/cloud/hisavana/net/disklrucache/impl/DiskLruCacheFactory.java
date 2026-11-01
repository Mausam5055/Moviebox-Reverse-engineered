package com.cloud.hisavana.net.disklrucache.impl;

/* JADX INFO: loaded from: classes3.dex */
public class DiskLruCacheFactory implements IDiskCache.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f21406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f21407b;

    public DiskLruCacheFactory(long j11, int i11) {
        this.f21406a = j11;
        this.f21407b = i11;
    }

    public IDiskCache a() {
        return new DiskCacheImpl(null, this.f21406a, this.f21407b);
    }
}
