package u1;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import androidx.media3.common.util.a1;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f76558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Layout.Alignment f76559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Layout.Alignment f76560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bitmap f76561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f76562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f76563f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f76564g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f76565h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f76566i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f76567j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f76568k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f76569l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f76570m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f76571n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float f76572o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f76573p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final float f76574q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f76549r = new b().o("").a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f76550s = a1.C0(0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f76551t = a1.C0(17);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f76552u = a1.C0(1);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final String f76553v = a1.C0(2);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f76554w = a1.C0(3);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f76555x = a1.C0(18);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String f76556y = a1.C0(4);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f76557z = a1.C0(5);
    private static final String A = a1.C0(6);
    private static final String B = a1.C0(7);
    private static final String C = a1.C0(8);
    private static final String D = a1.C0(9);
    private static final String E = a1.C0(10);
    private static final String F = a1.C0(11);
    private static final String G = a1.C0(12);
    private static final String H = a1.C0(13);
    private static final String I = a1.C0(14);
    private static final String J = a1.C0(15);
    private static final String K = a1.C0(16);

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private CharSequence f76575a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Bitmap f76576b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Layout.Alignment f76577c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Layout.Alignment f76578d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f76579e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f76580f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f76581g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f76582h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f76583i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f76584j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private float f76585k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private float f76586l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private float f76587m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f76588n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f76589o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f76590p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private float f76591q;

        public b() {
            this.f76575a = null;
            this.f76576b = null;
            this.f76577c = null;
            this.f76578d = null;
            this.f76579e = -3.4028235E38f;
            this.f76580f = Integer.MIN_VALUE;
            this.f76581g = Integer.MIN_VALUE;
            this.f76582h = -3.4028235E38f;
            this.f76583i = Integer.MIN_VALUE;
            this.f76584j = Integer.MIN_VALUE;
            this.f76585k = -3.4028235E38f;
            this.f76586l = -3.4028235E38f;
            this.f76587m = -3.4028235E38f;
            this.f76588n = false;
            this.f76589o = ViewCompat.MEASURED_STATE_MASK;
            this.f76590p = Integer.MIN_VALUE;
        }

        private b(a aVar) {
            this.f76575a = aVar.f76558a;
            this.f76576b = aVar.f76561d;
            this.f76577c = aVar.f76559b;
            this.f76578d = aVar.f76560c;
            this.f76579e = aVar.f76562e;
            this.f76580f = aVar.f76563f;
            this.f76581g = aVar.f76564g;
            this.f76582h = aVar.f76565h;
            this.f76583i = aVar.f76566i;
            this.f76584j = aVar.f76571n;
            this.f76585k = aVar.f76572o;
            this.f76586l = aVar.f76567j;
            this.f76587m = aVar.f76568k;
            this.f76588n = aVar.f76569l;
            this.f76589o = aVar.f76570m;
            this.f76590p = aVar.f76573p;
            this.f76591q = aVar.f76574q;
        }

        public a a() {
            return new a(this.f76575a, this.f76577c, this.f76578d, this.f76576b, this.f76579e, this.f76580f, this.f76581g, this.f76582h, this.f76583i, this.f76584j, this.f76585k, this.f76586l, this.f76587m, this.f76588n, this.f76589o, this.f76590p, this.f76591q);
        }

        public b b() {
            this.f76588n = false;
            return this;
        }

        public int c() {
            return this.f76581g;
        }

        public int d() {
            return this.f76583i;
        }

        public CharSequence e() {
            return this.f76575a;
        }

        public b f(Bitmap bitmap) {
            this.f76576b = bitmap;
            return this;
        }

        public b g(float f11) {
            this.f76587m = f11;
            return this;
        }

        public b h(float f11, int i11) {
            this.f76579e = f11;
            this.f76580f = i11;
            return this;
        }

        public b i(int i11) {
            this.f76581g = i11;
            return this;
        }

        public b j(Layout.Alignment alignment) {
            this.f76578d = alignment;
            return this;
        }

        public b k(float f11) {
            this.f76582h = f11;
            return this;
        }

        public b l(int i11) {
            this.f76583i = i11;
            return this;
        }

        public b m(float f11) {
            this.f76591q = f11;
            return this;
        }

        public b n(float f11) {
            this.f76586l = f11;
            return this;
        }

        public b o(CharSequence charSequence) {
            this.f76575a = charSequence;
            return this;
        }

        public b p(Layout.Alignment alignment) {
            this.f76577c = alignment;
            return this;
        }

        public b q(float f11, int i11) {
            this.f76585k = f11;
            this.f76584j = i11;
            return this;
        }

        public b r(int i11) {
            this.f76590p = i11;
            return this;
        }

        public b s(int i11) {
            this.f76589o = i11;
            this.f76588n = true;
            return this;
        }
    }

    private a(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f11, int i11, int i12, float f12, int i13, int i14, float f13, float f14, float f15, boolean z10, int i15, int i16, float f16) {
        if (charSequence == null) {
            androidx.media3.common.util.a.e(bitmap);
        } else {
            androidx.media3.common.util.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f76558a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f76558a = charSequence.toString();
        } else {
            this.f76558a = null;
        }
        this.f76559b = alignment;
        this.f76560c = alignment2;
        this.f76561d = bitmap;
        this.f76562e = f11;
        this.f76563f = i11;
        this.f76564g = i12;
        this.f76565h = f12;
        this.f76566i = i13;
        this.f76567j = f14;
        this.f76568k = f15;
        this.f76569l = z10;
        this.f76570m = i15;
        this.f76571n = i14;
        this.f76572o = f13;
        this.f76573p = i16;
        this.f76574q = f16;
    }

    public static a b(Bundle bundle) {
        b bVar = new b();
        CharSequence charSequence = bundle.getCharSequence(f76550s);
        if (charSequence != null) {
            bVar.o(charSequence);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(f76551t);
            if (parcelableArrayList != null) {
                SpannableString spannableStringValueOf = SpannableString.valueOf(charSequence);
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    c.c((Bundle) it.next(), spannableStringValueOf);
                }
                bVar.o(spannableStringValueOf);
            }
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(f76552u);
        if (alignment != null) {
            bVar.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(f76553v);
        if (alignment2 != null) {
            bVar.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(f76554w);
        if (bitmap != null) {
            bVar.f(bitmap);
        } else {
            byte[] byteArray = bundle.getByteArray(f76555x);
            if (byteArray != null) {
                bVar.f(BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length));
            }
        }
        String str = f76556y;
        if (bundle.containsKey(str)) {
            String str2 = f76557z;
            if (bundle.containsKey(str2)) {
                bVar.h(bundle.getFloat(str), bundle.getInt(str2));
            }
        }
        String str3 = A;
        if (bundle.containsKey(str3)) {
            bVar.i(bundle.getInt(str3));
        }
        String str4 = B;
        if (bundle.containsKey(str4)) {
            bVar.k(bundle.getFloat(str4));
        }
        String str5 = C;
        if (bundle.containsKey(str5)) {
            bVar.l(bundle.getInt(str5));
        }
        String str6 = E;
        if (bundle.containsKey(str6)) {
            String str7 = D;
            if (bundle.containsKey(str7)) {
                bVar.q(bundle.getFloat(str6), bundle.getInt(str7));
            }
        }
        String str8 = F;
        if (bundle.containsKey(str8)) {
            bVar.n(bundle.getFloat(str8));
        }
        String str9 = G;
        if (bundle.containsKey(str9)) {
            bVar.g(bundle.getFloat(str9));
        }
        String str10 = H;
        if (bundle.containsKey(str10)) {
            bVar.s(bundle.getInt(str10));
        }
        if (!bundle.getBoolean(I, false)) {
            bVar.b();
        }
        String str11 = J;
        if (bundle.containsKey(str11)) {
            bVar.r(bundle.getInt(str11));
        }
        String str12 = K;
        if (bundle.containsKey(str12)) {
            bVar.m(bundle.getFloat(str12));
        }
        return bVar.a();
    }

    private Bundle c() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.f76558a;
        if (charSequence != null) {
            bundle.putCharSequence(f76550s, charSequence);
            CharSequence charSequence2 = this.f76558a;
            if (charSequence2 instanceof Spanned) {
                ArrayList<? extends Parcelable> arrayListA = c.a((Spanned) charSequence2);
                if (!arrayListA.isEmpty()) {
                    bundle.putParcelableArrayList(f76551t, arrayListA);
                }
            }
        }
        bundle.putSerializable(f76552u, this.f76559b);
        bundle.putSerializable(f76553v, this.f76560c);
        bundle.putFloat(f76556y, this.f76562e);
        bundle.putInt(f76557z, this.f76563f);
        bundle.putInt(A, this.f76564g);
        bundle.putFloat(B, this.f76565h);
        bundle.putInt(C, this.f76566i);
        bundle.putInt(D, this.f76571n);
        bundle.putFloat(E, this.f76572o);
        bundle.putFloat(F, this.f76567j);
        bundle.putFloat(G, this.f76568k);
        bundle.putBoolean(I, this.f76569l);
        bundle.putInt(H, this.f76570m);
        bundle.putInt(J, this.f76573p);
        bundle.putFloat(K, this.f76574q);
        return bundle;
    }

    public b a() {
        return new b();
    }

    public Bundle d() {
        Bundle bundleC = c();
        if (this.f76561d != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            androidx.media3.common.util.a.g(this.f76561d.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
            bundleC.putByteArray(f76555x, byteArrayOutputStream.toByteArray());
        }
        return bundleC;
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return TextUtils.equals(this.f76558a, aVar.f76558a) && this.f76559b == aVar.f76559b && this.f76560c == aVar.f76560c && ((bitmap = this.f76561d) != null ? !((bitmap2 = aVar.f76561d) == null || !bitmap.sameAs(bitmap2)) : aVar.f76561d == null) && this.f76562e == aVar.f76562e && this.f76563f == aVar.f76563f && this.f76564g == aVar.f76564g && this.f76565h == aVar.f76565h && this.f76566i == aVar.f76566i && this.f76567j == aVar.f76567j && this.f76568k == aVar.f76568k && this.f76569l == aVar.f76569l && this.f76570m == aVar.f76570m && this.f76571n == aVar.f76571n && this.f76572o == aVar.f76572o && this.f76573p == aVar.f76573p && this.f76574q == aVar.f76574q;
    }

    public int hashCode() {
        return Objects.hash(this.f76558a, this.f76559b, this.f76560c, this.f76561d, Float.valueOf(this.f76562e), Integer.valueOf(this.f76563f), Integer.valueOf(this.f76564g), Float.valueOf(this.f76565h), Integer.valueOf(this.f76566i), Float.valueOf(this.f76567j), Float.valueOf(this.f76568k), Boolean.valueOf(this.f76569l), Integer.valueOf(this.f76570m), Integer.valueOf(this.f76571n), Float.valueOf(this.f76572o), Integer.valueOf(this.f76573p), Float.valueOf(this.f76574q));
    }
}
