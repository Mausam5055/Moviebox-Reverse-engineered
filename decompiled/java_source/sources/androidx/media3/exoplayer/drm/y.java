package androidx.media3.exoplayer.drm;

import android.media.MediaDrmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public final class y implements b0 {
    @Override // androidx.media3.exoplayer.drm.b0
    public int a() {
        return 1;
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public androidx.media3.decoder.b b(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public boolean c(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public void closeSession(byte[] bArr) {
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public b0.a d(byte[] bArr, List list, int i11, HashMap map) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public /* synthetic */ void e(byte[] bArr, f4 f4Var) {
        a0.a(this, bArr, f4Var);
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public void f(b0.b bVar) {
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public b0.d getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public Map queryKeyStatus(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public void release() {
    }

    @Override // androidx.media3.exoplayer.drm.b0
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }
}
