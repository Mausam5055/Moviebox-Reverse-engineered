package androidx.compose.ui.graphics;

import android.graphics.PathMeasure;

/* JADX INFO: loaded from: classes.dex */
public final class v0 implements r4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PathMeasure f4674a;

    public v0(PathMeasure pathMeasure) {
        this.f4674a = pathMeasure;
    }

    @Override // androidx.compose.ui.graphics.r4
    public boolean a(float f11, float f12, Path path, boolean z10) {
        PathMeasure pathMeasure = this.f4674a;
        if (path instanceof u0) {
            return pathMeasure.getSegment(f11, f12, ((u0) path).p(), z10);
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.r4
    public void b(Path path, boolean z10) {
        android.graphics.Path pathP;
        PathMeasure pathMeasure = this.f4674a;
        if (path == null) {
            pathP = null;
        } else {
            if (!(path instanceof u0)) {
                throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
            }
            pathP = ((u0) path).p();
        }
        pathMeasure.setPath(pathP, z10);
    }

    @Override // androidx.compose.ui.graphics.r4
    public float getLength() {
        return this.f4674a.getLength();
    }
}
