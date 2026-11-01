package ab;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f468b;

    public b(float f11, d dVar) {
        while (dVar instanceof b) {
            dVar = ((b) dVar).f467a;
            f11 += ((b) dVar).f468b;
        }
        this.f467a = dVar;
        this.f468b = f11;
    }

    @Override // ab.d
    public float a(RectF rectF) {
        return Math.max(0.0f, this.f467a.a(rectF) + this.f468b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f467a.equals(bVar.f467a) && this.f468b == bVar.f468b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f467a, Float.valueOf(this.f468b)});
    }
}
