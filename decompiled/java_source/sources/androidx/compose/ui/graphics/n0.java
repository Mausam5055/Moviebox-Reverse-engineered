package androidx.compose.ui.graphics;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public final class n0 implements e4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap f4606b;

    public n0(Bitmap bitmap) {
        this.f4606b = bitmap;
    }

    @Override // androidx.compose.ui.graphics.e4
    public void a() {
        this.f4606b.prepareToDraw();
    }

    @Override // androidx.compose.ui.graphics.e4
    public int b() {
        return q0.e(this.f4606b.getConfig());
    }

    public final Bitmap c() {
        return this.f4606b;
    }

    @Override // androidx.compose.ui.graphics.e4
    public int getHeight() {
        return this.f4606b.getHeight();
    }

    @Override // androidx.compose.ui.graphics.e4
    public int getWidth() {
        return this.f4606b.getWidth();
    }
}
