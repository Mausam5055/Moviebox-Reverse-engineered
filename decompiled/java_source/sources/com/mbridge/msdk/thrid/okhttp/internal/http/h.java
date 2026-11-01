package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.z;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f38004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f38005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okio.e f38006c;

    public h(String str, long j11, com.mbridge.msdk.thrid.okio.e eVar) {
        this.f38004a = str;
        this.f38005b = j11;
        this.f38006c = eVar;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.z
    public long h() {
        return this.f38005b;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.z
    public com.mbridge.msdk.thrid.okio.e k() {
        return this.f38006c;
    }
}
