package com.google.android.exoplayer2.drm;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class k {
    public static void a(DrmSession drmSession, DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.e(null);
        }
        if (drmSession != null) {
            drmSession.f(null);
        }
    }
}
