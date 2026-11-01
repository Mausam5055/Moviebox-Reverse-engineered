package com.google.android.exoplayer2.drm;

import android.media.MediaDrmException;
import e9.u1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class z implements c0 {
    @Override // com.google.android.exoplayer2.drm.c0
    public int a() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public com.google.android.exoplayer2.decoder.b b(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public boolean c(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void closeSession(byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public c0.a d(byte[] bArr, List list, int i11, HashMap map) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void e(c0.b bVar) {
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public /* synthetic */ void f(byte[] bArr, u1 u1Var) {
        b0.a(this, bArr, u1Var);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public c0.d getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public Map queryKeyStatus(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void release() {
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }
}
