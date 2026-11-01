package ab;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f466a;

    public a(float f11) {
        this.f466a = f11;
    }

    @Override // ab.d
    public float a(RectF rectF) {
        return this.f466a;
    }

    public float b() {
        return this.f466a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f466a == ((a) obj).f466a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f466a)});
    }
}
