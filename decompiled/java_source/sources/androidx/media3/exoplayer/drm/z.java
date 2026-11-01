package androidx.media3.exoplayer.drm;

import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class z implements DrmSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DrmSession.DrmSessionException f11614a;

    public z(DrmSession.DrmSessionException drmSessionException) {
        this.f11614a = (DrmSession.DrmSessionException) androidx.media3.common.util.a.e(drmSessionException);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final UUID a() {
        return androidx.media3.common.h.f9981a;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean b() {
        return false;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public androidx.media3.decoder.b c() {
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean d(String str) {
        return false;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void e(r.a aVar) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void f(r.a aVar) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public DrmSession.DrmSessionException getError() {
        return this.f11614a;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public Map queryKeyStatus() {
        return null;
    }
}
