package ba;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final b f16249r = new C0143b().o("").a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f16250s = new com.google.android.exoplayer2.k.a() { // from class: ba.a
        @Override // com.google.android.exoplayer2.k.a
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return b.c(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f16251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Layout.Alignment f16252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Layout.Alignment f16253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bitmap f16254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f16255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f16257g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f16258h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f16259i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f16260j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f16261k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f16262l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f16263m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f16264n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float f16265o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f16266p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final float f16267q;

    /* JADX INFO: renamed from: ba.b$b, reason: collision with other inner class name */
    public static final class C0143b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CharSequence f16268a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Bitmap f16269b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Layout.Alignment f16270c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Layout.Alignment f16271d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f16272e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f16273f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f16274g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f16275h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f16276i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f16277j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private float f16278k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private float f16279l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private float f16280m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f16281n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f16282o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f16283p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private float f16284q;

        public C0143b() {
            this.f16268a = null;
            this.f16269b = null;
            this.f16270c = null;
            this.f16271d = null;
            this.f16272e = -3.4028235E38f;
            this.f16273f = Integer.MIN_VALUE;
            this.f16274g = Integer.MIN_VALUE;
            this.f16275h = -3.4028235E38f;
            this.f16276i = Integer.MIN_VALUE;
            this.f16277j = Integer.MIN_VALUE;
            this.f16278k = -3.4028235E38f;
            this.f16279l = -3.4028235E38f;
            this.f16280m = -3.4028235E38f;
            this.f16281n = false;
            this.f16282o = ViewCompat.MEASURED_STATE_MASK;
            this.f16283p = Integer.MIN_VALUE;
        }

        private C0143b(b bVar) {
            this.f16268a = bVar.f16251a;
            this.f16269b = bVar.f16254d;
            this.f16270c = bVar.f16252b;
            this.f16271d = bVar.f16253c;
            this.f16272e = bVar.f16255e;
            this.f16273f = bVar.f16256f;
            this.f16274g = bVar.f16257g;
            this.f16275h = bVar.f16258h;
            this.f16276i = bVar.f16259i;
            this.f16277j = bVar.f16264n;
            this.f16278k = bVar.f16265o;
            this.f16279l = bVar.f16260j;
            this.f16280m = bVar.f16261k;
            this.f16281n = bVar.f16262l;
            this.f16282o = bVar.f16263m;
            this.f16283p = bVar.f16266p;
            this.f16284q = bVar.f16267q;
        }

        public b a() {
            return new b(this.f16268a, this.f16270c, this.f16271d, this.f16269b, this.f16272e, this.f16273f, this.f16274g, this.f16275h, this.f16276i, this.f16277j, this.f16278k, this.f16279l, this.f16280m, this.f16281n, this.f16282o, this.f16283p, this.f16284q);
        }

        public C0143b b() {
            this.f16281n = false;
            return this;
        }

        public int c() {
            return this.f16274g;
        }

        public int d() {
            return this.f16276i;
        }

        public CharSequence e() {
            return this.f16268a;
        }

        public C0143b f(Bitmap bitmap) {
            this.f16269b = bitmap;
            return this;
        }

        public C0143b g(float f11) {
            this.f16280m = f11;
            return this;
        }

        public C0143b h(float f11, int i11) {
            this.f16272e = f11;
            this.f16273f = i11;
            return this;
        }

        public C0143b i(int i11) {
            this.f16274g = i11;
            return this;
        }

        public C0143b j(Layout.Alignment alignment) {
            this.f16271d = alignment;
            return this;
        }

        public C0143b k(float f11) {
            this.f16275h = f11;
            return this;
        }

        public C0143b l(int i11) {
            this.f16276i = i11;
            return this;
        }

        public C0143b m(float f11) {
            this.f16284q = f11;
            return this;
        }

        public C0143b n(float f11) {
            this.f16279l = f11;
            return this;
        }

        public C0143b o(CharSequence charSequence) {
            this.f16268a = charSequence;
            return this;
        }

        public C0143b p(Layout.Alignment alignment) {
            this.f16270c = alignment;
            return this;
        }

        public C0143b q(float f11, int i11) {
            this.f16278k = f11;
            this.f16277j = i11;
            return this;
        }

        public C0143b r(int i11) {
            this.f16283p = i11;
            return this;
        }

        public C0143b s(int i11) {
            this.f16282o = i11;
            this.f16281n = true;
            return this;
        }
    }

    private b(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f11, int i11, int i12, float f12, int i13, int i14, float f13, float f14, float f15, boolean z10, int i15, int i16, float f16) {
        if (charSequence == null) {
            com.google.android.exoplayer2.util.a.e(bitmap);
        } else {
            com.google.android.exoplayer2.util.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f16251a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f16251a = charSequence.toString();
        } else {
            this.f16251a = null;
        }
        this.f16252b = alignment;
        this.f16253c = alignment2;
        this.f16254d = bitmap;
        this.f16255e = f11;
        this.f16256f = i11;
        this.f16257g = i12;
        this.f16258h = f12;
        this.f16259i = i13;
        this.f16260j = f14;
        this.f16261k = f15;
        this.f16262l = z10;
        this.f16263m = i15;
        this.f16264n = i14;
        this.f16265o = f13;
        this.f16266p = i16;
        this.f16267q = f16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b c(Bundle bundle) {
        C0143b c0143b = new C0143b();
        CharSequence charSequence = bundle.getCharSequence(d(0));
        if (charSequence != null) {
            c0143b.o(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(d(1));
        if (alignment != null) {
            c0143b.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(d(2));
        if (alignment2 != null) {
            c0143b.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(d(3));
        if (bitmap != null) {
            c0143b.f(bitmap);
        }
        if (bundle.containsKey(d(4)) && bundle.containsKey(d(5))) {
            c0143b.h(bundle.getFloat(d(4)), bundle.getInt(d(5)));
        }
        if (bundle.containsKey(d(6))) {
            c0143b.i(bundle.getInt(d(6)));
        }
        if (bundle.containsKey(d(7))) {
            c0143b.k(bundle.getFloat(d(7)));
        }
        if (bundle.containsKey(d(8))) {
            c0143b.l(bundle.getInt(d(8)));
        }
        if (bundle.containsKey(d(10)) && bundle.containsKey(d(9))) {
            c0143b.q(bundle.getFloat(d(10)), bundle.getInt(d(9)));
        }
        if (bundle.containsKey(d(11))) {
            c0143b.n(bundle.getFloat(d(11)));
        }
        if (bundle.containsKey(d(12))) {
            c0143b.g(bundle.getFloat(d(12)));
        }
        if (bundle.containsKey(d(13))) {
            c0143b.s(bundle.getInt(d(13)));
        }
        if (!bundle.getBoolean(d(14), false)) {
            c0143b.b();
        }
        if (bundle.containsKey(d(15))) {
            c0143b.r(bundle.getInt(d(15)));
        }
        if (bundle.containsKey(d(16))) {
            c0143b.m(bundle.getFloat(d(16)));
        }
        return c0143b.a();
    }

    private static String d(int i11) {
        return Integer.toString(i11, 36);
    }

    public C0143b b() {
        return new C0143b();
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return TextUtils.equals(this.f16251a, bVar.f16251a) && this.f16252b == bVar.f16252b && this.f16253c == bVar.f16253c && ((bitmap = this.f16254d) != null ? !((bitmap2 = bVar.f16254d) == null || !bitmap.sameAs(bitmap2)) : bVar.f16254d == null) && this.f16255e == bVar.f16255e && this.f16256f == bVar.f16256f && this.f16257g == bVar.f16257g && this.f16258h == bVar.f16258h && this.f16259i == bVar.f16259i && this.f16260j == bVar.f16260j && this.f16261k == bVar.f16261k && this.f16262l == bVar.f16262l && this.f16263m == bVar.f16263m && this.f16264n == bVar.f16264n && this.f16265o == bVar.f16265o && this.f16266p == bVar.f16266p && this.f16267q == bVar.f16267q;
    }

    public int hashCode() {
        return com.google.common.base.j.b(this.f16251a, this.f16252b, this.f16253c, this.f16254d, Float.valueOf(this.f16255e), Integer.valueOf(this.f16256f), Integer.valueOf(this.f16257g), Float.valueOf(this.f16258h), Integer.valueOf(this.f16259i), Float.valueOf(this.f16260j), Float.valueOf(this.f16261k), Boolean.valueOf(this.f16262l), Integer.valueOf(this.f16263m), Integer.valueOf(this.f16264n), Float.valueOf(this.f16265o), Integer.valueOf(this.f16266p), Float.valueOf(this.f16267q));
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.f16251a);
        bundle.putSerializable(d(1), this.f16252b);
        bundle.putSerializable(d(2), this.f16253c);
        bundle.putParcelable(d(3), this.f16254d);
        bundle.putFloat(d(4), this.f16255e);
        bundle.putInt(d(5), this.f16256f);
        bundle.putInt(d(6), this.f16257g);
        bundle.putFloat(d(7), this.f16258h);
        bundle.putInt(d(8), this.f16259i);
        bundle.putInt(d(9), this.f16264n);
        bundle.putFloat(d(10), this.f16265o);
        bundle.putFloat(d(11), this.f16260j);
        bundle.putFloat(d(12), this.f16261k);
        bundle.putBoolean(d(14), this.f16262l);
        bundle.putInt(d(13), this.f16263m);
        bundle.putInt(d(15), this.f16266p);
        bundle.putFloat(d(16), this.f16267q);
        return bundle;
    }
}
