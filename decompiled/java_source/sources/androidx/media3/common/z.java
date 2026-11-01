package androidx.media3.common;

import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
public final class z {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final z f10563d = new z(1.0f);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f10564e = a1.C0(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f10565f = a1.C0(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f10566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f10568c;

    public z(float f11) {
        this(f11, 1.0f);
    }

    public z(float f11, float f12) {
        androidx.media3.common.util.a.a(f11 > 0.0f);
        androidx.media3.common.util.a.a(f12 > 0.0f);
        this.f10566a = f11;
        this.f10567b = f12;
        this.f10568c = Math.round(f11 * 1000.0f);
    }

    public long a(long j11) {
        return j11 * ((long) this.f10568c);
    }

    public z b(float f11) {
        return new z(f11, this.f10567b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z.class != obj.getClass()) {
            return false;
        }
        z zVar = (z) obj;
        return this.f10566a == zVar.f10566a && this.f10567b == zVar.f10567b;
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.f10566a)) * 31) + Float.floatToRawIntBits(this.f10567b);
    }

    public String toString() {
        return a1.G("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f10566a), Float.valueOf(this.f10567b));
    }
}
