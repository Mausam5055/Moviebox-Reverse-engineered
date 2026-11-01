package com.google.android.exoplayer2.audio;

/* JADX INFO: loaded from: classes3.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f24775b;

    public u(int i11, float f11) {
        this.f24774a = i11;
        this.f24775b = f11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u.class != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        return this.f24774a == uVar.f24774a && Float.compare(uVar.f24775b, this.f24775b) == 0;
    }

    public int hashCode() {
        return ((527 + this.f24774a) * 31) + Float.floatToIntBits(this.f24775b);
    }
}
