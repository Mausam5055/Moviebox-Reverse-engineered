package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f6840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f6841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f6842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f6843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f6844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f6845f;

    public void a(float f11, float f12, int i11, int i12, float[] fArr) {
        float f13 = fArr[0];
        float f14 = fArr[1];
        float f15 = (f11 - 0.5f) * 2.0f;
        float f16 = (f12 - 0.5f) * 2.0f;
        float f17 = f13 + this.f6842c;
        float f18 = f14 + this.f6843d;
        float f19 = f17 + (this.f6840a * f15);
        float f20 = f18 + (this.f6841b * f16);
        float radians = (float) Math.toRadians(this.f6845f);
        float radians2 = (float) Math.toRadians(this.f6844e);
        double d11 = radians;
        double d12 = i12 * f16;
        float fSin = f19 + (((float) ((((double) ((-i11) * f15)) * Math.sin(d11)) - (Math.cos(d11) * d12))) * radians2);
        float fCos = f20 + (radians2 * ((float) ((((double) (i11 * f15)) * Math.cos(d11)) - (d12 * Math.sin(d11)))));
        fArr[0] = fSin;
        fArr[1] = fCos;
    }

    public void b() {
        this.f6844e = 0.0f;
        this.f6843d = 0.0f;
        this.f6842c = 0.0f;
        this.f6841b = 0.0f;
        this.f6840a = 0.0f;
    }

    public void c(KeyCycleOscillator keyCycleOscillator, float f11) {
        if (keyCycleOscillator != null) {
            this.f6844e = keyCycleOscillator.b(f11);
        }
    }

    public void d(i iVar, float f11) {
        if (iVar != null) {
            this.f6844e = iVar.b(f11);
            this.f6845f = iVar.a(f11);
        }
    }

    public void e(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f11) {
        if (keyCycleOscillator != null) {
            this.f6840a = keyCycleOscillator.b(f11);
        }
        if (keyCycleOscillator2 != null) {
            this.f6841b = keyCycleOscillator2.b(f11);
        }
    }

    public void f(i iVar, i iVar2, float f11) {
        if (iVar != null) {
            this.f6840a = iVar.b(f11);
        }
        if (iVar2 != null) {
            this.f6841b = iVar2.b(f11);
        }
    }

    public void g(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f11) {
        if (keyCycleOscillator != null) {
            this.f6842c = keyCycleOscillator.b(f11);
        }
        if (keyCycleOscillator2 != null) {
            this.f6843d = keyCycleOscillator2.b(f11);
        }
    }

    public void h(i iVar, i iVar2, float f11) {
        if (iVar != null) {
            this.f6842c = iVar.b(f11);
        }
        if (iVar2 != null) {
            this.f6843d = iVar2.b(f11);
        }
    }
}
