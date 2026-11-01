package f0;

import androidx.collection.s;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f62122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f62123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f62124c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f62125d;

    public b(float f11, float f12, long j11, int i11) {
        this.f62122a = f11;
        this.f62123b = f12;
        this.f62124c = j11;
        this.f62125d = i11;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (bVar.f62122a == this.f62122a && bVar.f62123b == this.f62123b && bVar.f62124c == this.f62124c && bVar.f62125d == this.f62125d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f62122a) * 31) + Float.floatToIntBits(this.f62123b)) * 31) + s.a(this.f62124c)) * 31) + this.f62125d;
    }

    public String toString() {
        return "RotaryScrollEvent(verticalScrollPixels=" + this.f62122a + ",horizontalScrollPixels=" + this.f62123b + ",uptimeMillis=" + this.f62124c + ",deviceId=" + this.f62125d + ')';
    }
}
