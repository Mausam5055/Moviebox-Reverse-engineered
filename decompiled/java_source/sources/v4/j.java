package v4;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f77043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f77044b;

    public void a(float f11) {
        float f12 = this.f77043a + f11;
        this.f77043a = f12;
        int i11 = this.f77044b + 1;
        this.f77044b = i11;
        if (i11 == Integer.MAX_VALUE) {
            this.f77043a = f12 / 2.0f;
            this.f77044b = i11 / 2;
        }
    }
}
