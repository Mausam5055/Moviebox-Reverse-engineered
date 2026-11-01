package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;

/* JADX INFO: loaded from: classes.dex */
final class u extends EdgeEffect {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f3345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f3346b;

    public u(Context context) {
        super(context);
        this.f3345a = o0.a.a(context).E0(o0.i.g(1));
    }

    public final void a(float f11) {
        float f12 = this.f3346b + f11;
        this.f3346b = f12;
        if (Math.abs(f12) > this.f3345a) {
            onRelease();
        }
    }

    @Override // android.widget.EdgeEffect
    public void onAbsorb(int i11) {
        this.f3346b = 0.0f;
        super.onAbsorb(i11);
    }

    @Override // android.widget.EdgeEffect
    public void onPull(float f11) {
        this.f3346b = 0.0f;
        super.onPull(f11);
    }

    @Override // android.widget.EdgeEffect
    public void onPull(float f11, float f12) {
        this.f3346b = 0.0f;
        super.onPull(f11, f12);
    }

    @Override // android.widget.EdgeEffect
    public void onRelease() {
        this.f3346b = 0.0f;
        super.onRelease();
    }
}
