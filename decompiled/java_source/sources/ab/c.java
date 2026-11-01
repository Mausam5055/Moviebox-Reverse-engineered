package ab;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f469a;

    public c(float f11) {
        this.f469a = f11;
    }

    public static c b(a aVar) {
        return new c(aVar.b());
    }

    private static float c(RectF rectF) {
        return Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f);
    }

    @Override // ab.d
    public float a(RectF rectF) {
        return Math.min(this.f469a, c(rectF));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f469a == ((c) obj).f469a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f469a)});
    }
}
