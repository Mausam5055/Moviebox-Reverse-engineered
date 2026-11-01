package com.google.android.exoplayer2;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public final class j2 extends v2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k.a f25146c = new k.a() { // from class: com.google.android.exoplayer2.i2
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return j2.e(bundle);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f25147b;

    public j2() {
        this.f25147b = -1.0f;
    }

    public j2(float f11) {
        com.google.android.exoplayer2.util.a.b(f11 >= 0.0f && f11 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f25147b = f11;
    }

    private static String c(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j2 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 1);
        float f11 = bundle.getFloat(c(1), -1.0f);
        return f11 == -1.0f ? new j2() : new j2(f11);
    }

    public boolean equals(Object obj) {
        return (obj instanceof j2) && this.f25147b == ((j2) obj).f25147b;
    }

    public int hashCode() {
        return com.google.common.base.j.b(Float.valueOf(this.f25147b));
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 1);
        bundle.putFloat(c(1), this.f25147b);
        return bundle;
    }
}
