package com.android.volley;

import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

/* JADX INFO: loaded from: classes2.dex */
public class d implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f19228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f19229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f19230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f19231d;

    public d() {
        this(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 1, 1.0f);
    }

    public d(int i11, int i12, float f11) {
        this.f19228a = i11;
        this.f19230c = i12;
        this.f19231d = f11;
    }

    @Override // com.android.volley.k
    public int a() {
        return this.f19229b;
    }

    @Override // com.android.volley.k
    public void b(VolleyError volleyError) throws VolleyError {
        this.f19229b++;
        int i11 = this.f19228a;
        this.f19228a = i11 + ((int) (i11 * this.f19231d));
        if (!d()) {
            throw volleyError;
        }
    }

    @Override // com.android.volley.k
    public int c() {
        return this.f19228a;
    }

    protected boolean d() {
        return this.f19229b <= this.f19230c;
    }
}
