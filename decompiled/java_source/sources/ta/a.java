package ta;

import android.content.Context;
import android.graphics.Color;
import com.google.android.material.R$attr;
import xa.b;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f76168f = (int) Math.round(5.1000000000000005d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f76169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f76170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f76171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f76172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f76173e;

    public a(Context context) {
        this(b.b(context, R$attr.elevationOverlayEnabled, false), com.google.android.material.color.b.b(context, R$attr.elevationOverlayColor, 0), com.google.android.material.color.b.b(context, R$attr.elevationOverlayAccentColor, 0), com.google.android.material.color.b.b(context, R$attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    public a(boolean z10, int i11, int i12, int i13, float f11) {
        this.f76169a = z10;
        this.f76170b = i11;
        this.f76171c = i12;
        this.f76172d = i13;
        this.f76173e = f11;
    }

    private boolean f(int i11) {
        return z0.b.p(i11, 255) == this.f76172d;
    }

    public float a(float f11) {
        float f12 = this.f76173e;
        if (f12 <= 0.0f || f11 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f11 / f12)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    public int b(int i11, float f11) {
        int i12;
        float fA = a(f11);
        int iAlpha = Color.alpha(i11);
        int iJ = com.google.android.material.color.b.j(z0.b.p(i11, 255), this.f76170b, fA);
        if (fA > 0.0f && (i12 = this.f76171c) != 0) {
            iJ = com.google.android.material.color.b.i(iJ, z0.b.p(i12, f76168f));
        }
        return z0.b.p(iJ, iAlpha);
    }

    public int c(int i11, float f11) {
        return (this.f76169a && f(i11)) ? b(i11, f11) : i11;
    }

    public int d(float f11) {
        return c(this.f76172d, f11);
    }

    public boolean e() {
        return this.f76169a;
    }
}
