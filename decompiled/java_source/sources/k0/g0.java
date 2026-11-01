package k0;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f66538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextPaint f66539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f66540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f66541d = Float.NaN;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f66542e = Float.NaN;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BoringLayout.Metrics f66543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f66544g;

    public g0(CharSequence charSequence, TextPaint textPaint, int i11) {
        this.f66538a = charSequence;
        this.f66539b = textPaint;
        this.f66540c = i11;
    }

    public final BoringLayout.Metrics a() {
        if (!this.f66544g) {
            this.f66543f = e.f66507a.c(this.f66538a, this.f66539b, f1.k(this.f66540c));
            this.f66544g = true;
        }
        return this.f66543f;
    }

    public final float b() {
        if (!Float.isNaN(this.f66541d)) {
            return this.f66541d;
        }
        BoringLayout.Metrics metricsA = a();
        float fCeil = metricsA != null ? metricsA.width : -1;
        if (fCeil < 0.0f) {
            CharSequence charSequence = this.f66538a;
            fCeil = (float) Math.ceil(Layout.getDesiredWidth(charSequence, 0, charSequence.length(), this.f66539b));
        }
        if (i0.e(fCeil, this.f66538a, this.f66539b)) {
            fCeil += 0.5f;
        }
        this.f66541d = fCeil;
        return fCeil;
    }

    public final float c() {
        if (!Float.isNaN(this.f66542e)) {
            return this.f66542e;
        }
        float fC = i0.c(this.f66538a, this.f66539b);
        this.f66542e = fC;
        return fC;
    }
}
