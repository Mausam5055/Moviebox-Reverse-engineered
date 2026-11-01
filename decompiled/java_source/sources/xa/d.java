package xa;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f78156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ColorStateList f78157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ColorStateList f78158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f78159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f78161f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f78162g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f78163h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f78164i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f78165j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f78166k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final float f78167l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ColorStateList f78168m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f78169n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f78170o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f78171p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Typeface f78172q;

    class a extends y0.h.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f78173a;

        a(f fVar) {
            this.f78173a = fVar;
        }

        @Override // y0.h.e
        /* JADX INFO: renamed from: h */
        public void f(int i11) {
            d.this.f78171p = true;
            this.f78173a.a(i11);
        }

        @Override // y0.h.e
        /* JADX INFO: renamed from: i */
        public void g(Typeface typeface) {
            d dVar = d.this;
            dVar.f78172q = Typeface.create(typeface, dVar.f78160e);
            d.this.f78171p = true;
            this.f78173a.b(d.this.f78172q, false);
        }
    }

    class b extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f78175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextPaint f78176b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f78177c;

        b(Context context, TextPaint textPaint, f fVar) {
            this.f78175a = context;
            this.f78176b = textPaint;
            this.f78177c = fVar;
        }

        @Override // xa.f
        public void a(int i11) {
            this.f78177c.a(i11);
        }

        @Override // xa.f
        public void b(Typeface typeface, boolean z10) {
            d.this.p(this.f78175a, this.f78176b, typeface);
            this.f78177c.b(typeface, z10);
        }
    }

    public d(Context context, int i11) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i11, R$styleable.TextAppearance);
        l(typedArrayObtainStyledAttributes.getDimension(R$styleable.TextAppearance_android_textSize, 0.0f));
        k(c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColor));
        this.f78156a = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorHint);
        this.f78157b = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorLink);
        this.f78160e = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, 0);
        this.f78161f = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, 1);
        int iG = c.g(typedArrayObtainStyledAttributes, R$styleable.TextAppearance_fontFamily, R$styleable.TextAppearance_android_fontFamily);
        this.f78170o = typedArrayObtainStyledAttributes.getResourceId(iG, 0);
        this.f78159d = typedArrayObtainStyledAttributes.getString(iG);
        this.f78162g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false);
        this.f78158c = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_shadowColor);
        this.f78163h = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f78164i = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f78165j = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i11, R$styleable.MaterialTextAppearance);
        this.f78166k = typedArrayObtainStyledAttributes2.hasValue(R$styleable.MaterialTextAppearance_android_letterSpacing);
        this.f78167l = typedArrayObtainStyledAttributes2.getFloat(R$styleable.MaterialTextAppearance_android_letterSpacing, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private void d() {
        String str;
        if (this.f78172q == null && (str = this.f78159d) != null) {
            this.f78172q = Typeface.create(str, this.f78160e);
        }
        if (this.f78172q == null) {
            int i11 = this.f78161f;
            if (i11 == 1) {
                this.f78172q = Typeface.SANS_SERIF;
            } else if (i11 == 2) {
                this.f78172q = Typeface.SERIF;
            } else if (i11 != 3) {
                this.f78172q = Typeface.DEFAULT;
            } else {
                this.f78172q = Typeface.MONOSPACE;
            }
            this.f78172q = Typeface.create(this.f78172q, this.f78160e);
        }
    }

    private boolean m(Context context) {
        if (e.a()) {
            return true;
        }
        int i11 = this.f78170o;
        return (i11 != 0 ? y0.h.c(context, i11) : null) != null;
    }

    public Typeface e() {
        d();
        return this.f78172q;
    }

    public Typeface f(Context context) {
        if (this.f78171p) {
            return this.f78172q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceG = y0.h.g(context, this.f78170o);
                this.f78172q = typefaceG;
                if (typefaceG != null) {
                    this.f78172q = Typeface.create(typefaceG, this.f78160e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error loading font ");
                sb2.append(this.f78159d);
            }
        }
        d();
        this.f78171p = true;
        return this.f78172q;
    }

    public void g(Context context, TextPaint textPaint, f fVar) {
        p(context, textPaint, e());
        h(context, new b(context, textPaint, fVar));
    }

    public void h(Context context, f fVar) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i11 = this.f78170o;
        if (i11 == 0) {
            this.f78171p = true;
        }
        if (this.f78171p) {
            fVar.b(this.f78172q, true);
            return;
        }
        try {
            y0.h.i(context, i11, new a(fVar), null);
        } catch (Resources.NotFoundException unused) {
            this.f78171p = true;
            fVar.a(1);
        } catch (Exception unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error loading font ");
            sb2.append(this.f78159d);
            this.f78171p = true;
            fVar.a(-3);
        }
    }

    public ColorStateList i() {
        return this.f78168m;
    }

    public float j() {
        return this.f78169n;
    }

    public void k(ColorStateList colorStateList) {
        this.f78168m = colorStateList;
    }

    public void l(float f11) {
        this.f78169n = f11;
    }

    public void n(Context context, TextPaint textPaint, f fVar) {
        o(context, textPaint, fVar);
        ColorStateList colorStateList = this.f78168m;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : ViewCompat.MEASURED_STATE_MASK);
        float f11 = this.f78165j;
        float f12 = this.f78163h;
        float f13 = this.f78164i;
        ColorStateList colorStateList2 = this.f78158c;
        textPaint.setShadowLayer(f11, f12, f13, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void o(Context context, TextPaint textPaint, f fVar) {
        if (m(context)) {
            p(context, textPaint, f(context));
        } else {
            g(context, textPaint, fVar);
        }
    }

    public void p(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceA = h.a(context, typeface);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        textPaint.setTypeface(typeface);
        int i11 = this.f78160e & (~typeface.getStyle());
        textPaint.setFakeBoldText((i11 & 1) != 0);
        textPaint.setTextSkewX((i11 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f78169n);
        if (this.f78166k) {
            textPaint.setLetterSpacing(this.f78167l);
        }
    }
}
