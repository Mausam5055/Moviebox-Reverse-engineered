package com.google.android.datatransport.runtime;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r8.c f24409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f24410b;

    public h(r8.c cVar, byte[] bArr) {
        if (cVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f24409a = cVar;
        this.f24410b = bArr;
    }

    public byte[] a() {
        return this.f24410b;
    }

    public r8.c b() {
        return this.f24409a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f24409a.equals(hVar.f24409a)) {
            return Arrays.equals(this.f24410b, hVar.f24410b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f24409a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f24410b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f24409a + ", bytes=[...]}";
    }
}
