package ab;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f524a;

    public l(float f11) {
        this.f524a = f11;
    }

    private static float b(RectF rectF) {
        return Math.min(rectF.width(), rectF.height());
    }

    @Override // ab.d
    public float a(RectF rectF) {
        return this.f524a * b(rectF);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l) && this.f524a == ((l) obj).f524a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f524a)});
    }
}
