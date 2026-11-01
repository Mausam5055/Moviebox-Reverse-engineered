package com.google.android.exoplayer2;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public final class n2 implements k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final n2 f25473d = new n2(1.0f);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final k.a f25474e = new k.a() { // from class: com.google.android.exoplayer2.m2
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return n2.d(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f25475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f25476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f25477c;

    public n2(float f11) {
        this(f11, 1.0f);
    }

    public n2(float f11, float f12) {
        com.google.android.exoplayer2.util.a.a(f11 > 0.0f);
        com.google.android.exoplayer2.util.a.a(f12 > 0.0f);
        this.f25475a = f11;
        this.f25476b = f12;
        this.f25477c = Math.round(f11 * 1000.0f);
    }

    private static String c(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ n2 d(Bundle bundle) {
        return new n2(bundle.getFloat(c(0), 1.0f), bundle.getFloat(c(1), 1.0f));
    }

    public long b(long j11) {
        return j11 * ((long) this.f25477c);
    }

    public n2 e(float f11) {
        return new n2(f11, this.f25476b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n2.class != obj.getClass()) {
            return false;
        }
        n2 n2Var = (n2) obj;
        return this.f25475a == n2Var.f25475a && this.f25476b == n2Var.f25476b;
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.f25475a)) * 31) + Float.floatToRawIntBits(this.f25476b);
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putFloat(c(0), this.f25475a);
        bundle.putFloat(c(1), this.f25476b);
        return bundle;
    }

    public String toString() {
        return com.google.android.exoplayer2.util.p0.C("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f25475a), Float.valueOf(this.f25476b));
    }
}
