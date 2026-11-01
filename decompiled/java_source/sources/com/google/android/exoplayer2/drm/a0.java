package com.google.android.exoplayer2.drm;

import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class a0 implements DrmSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DrmSession.DrmSessionException f24967a;

    public a0(DrmSession.DrmSessionException drmSessionException) {
        this.f24967a = (DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(drmSessionException);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID a() {
        return com.google.android.exoplayer2.l.f25186a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean b() {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public com.google.android.exoplayer2.decoder.b c() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean d(String str) {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void e(s.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void f(s.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public DrmSession.DrmSessionException getError() {
        return this.f24967a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public Map queryKeyStatus() {
        return null;
    }
}
