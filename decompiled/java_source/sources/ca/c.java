package ca;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import ba.i;
import ba.m;
import ba.n;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.s;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d0 f17053g = new d0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c0 f17054h = new c0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f17055i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f17056j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f17057k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b[] f17058l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private b f17059m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List f17060n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List f17061o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private C0163c f17062p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f17063q;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Comparator f17064c = new Comparator() { // from class: ca.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return c.a.c((c.a) obj, (c.a) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ba.b f17065a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17066b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f11, int i11, int i12, float f12, int i13, float f13, boolean z10, int i14, int i15) {
            ba.b.C0143b c0143bN = new ba.b.C0143b().o(charSequence).p(alignment).h(f11, i11).i(i12).k(f12).l(i13).n(f13);
            if (z10) {
                c0143bN.s(i14);
            }
            this.f17065a = c0143bN.a();
            this.f17066b = i15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f17066b, aVar.f17066b);
        }
    }

    private static final class b {
        private static final int[] A;
        private static final int[] B;
        private static final boolean[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;
        private static final int[] G;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final int f17067w = h(2, 2, 2, 0);

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final int f17068x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final int f17069y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private static final int[] f17070z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f17071a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SpannableStringBuilder f17072b = new SpannableStringBuilder();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f17073c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f17074d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f17075e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f17076f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f17077g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f17078h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f17079i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f17080j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f17081k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f17082l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f17083m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f17084n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f17085o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f17086p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f17087q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f17088r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f17089s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f17090t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int f17091u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f17092v;

        static {
            int iH = h(0, 0, 0, 0);
            f17068x = iH;
            int iH2 = h(0, 0, 0, 3);
            f17069y = iH2;
            f17070z = new int[]{0, 0, 0, 0, 0, 2, 0};
            A = new int[]{0, 0, 0, 0, 0, 0, 2};
            B = new int[]{3, 3, 3, 3, 3, 3, 1};
            C = new boolean[]{false, false, false, true, true, true, false};
            D = new int[]{iH, iH2, iH, iH, iH2, iH, iH};
            E = new int[]{0, 1, 2, 3, 4, 3, 4};
            F = new int[]{0, 0, 0, 0, 0, 3, 3};
            G = new int[]{iH, iH, iH, iH, iH, iH2, iH2};
        }

        public b() {
            l();
        }

        public static int g(int i11, int i12, int i13) {
            return h(i11, i12, i13, 0);
        }

        /* JADX WARN: Code duplicated, block: B:9:0x001b  */
        public static int h(int i11, int i12, int i13, int i14) {
            int i15;
            com.google.android.exoplayer2.util.a.c(i11, 0, 4);
            com.google.android.exoplayer2.util.a.c(i12, 0, 4);
            com.google.android.exoplayer2.util.a.c(i13, 0, 4);
            com.google.android.exoplayer2.util.a.c(i14, 0, 4);
            if (i14 == 0 || i14 == 1) {
                i15 = 255;
            } else if (i14 == 2) {
                i15 = 127;
            } else if (i14 != 3) {
                i15 = 255;
            } else {
                i15 = 0;
            }
            return Color.argb(i15, i11 > 1 ? 255 : 0, i12 > 1 ? 255 : 0, i13 > 1 ? 255 : 0);
        }

        public void a(char c11) {
            if (c11 != '\n') {
                this.f17072b.append(c11);
                return;
            }
            this.f17071a.add(d());
            this.f17072b.clear();
            if (this.f17086p != -1) {
                this.f17086p = 0;
            }
            if (this.f17087q != -1) {
                this.f17087q = 0;
            }
            if (this.f17088r != -1) {
                this.f17088r = 0;
            }
            if (this.f17090t != -1) {
                this.f17090t = 0;
            }
            while (true) {
                if ((!this.f17081k || this.f17071a.size() < this.f17080j) && this.f17071a.size() < 15) {
                    return;
                } else {
                    this.f17071a.remove(0);
                }
            }
        }

        public void b() {
            int length = this.f17072b.length();
            if (length > 0) {
                this.f17072b.delete(length - 1, length);
            }
        }

        public a c() {
            Layout.Alignment alignment;
            float f11;
            float f12;
            if (j()) {
                return null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i11 = 0; i11 < this.f17071a.size(); i11++) {
                spannableStringBuilder.append((CharSequence) this.f17071a.get(i11));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) d());
            int i12 = this.f17082l;
            if (i12 == 0) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i12 == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i12 != 2) {
                if (i12 != 3) {
                    throw new IllegalArgumentException("Unexpected justification value: " + this.f17082l);
                }
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            Layout.Alignment alignment2 = alignment;
            if (this.f17076f) {
                f11 = this.f17078h / 99.0f;
                f12 = this.f17077g / 99.0f;
            } else {
                f11 = this.f17078h / 209.0f;
                f12 = this.f17077g / 74.0f;
            }
            float f13 = (f11 * 0.9f) + 0.05f;
            float f14 = (f12 * 0.9f) + 0.05f;
            int i13 = this.f17079i;
            return new a(spannableStringBuilder, alignment2, f14, 0, i13 / 3 == 0 ? 0 : i13 / 3 == 1 ? 1 : 2, f13, i13 % 3 == 0 ? 0 : i13 % 3 == 1 ? 1 : 2, -3.4028235E38f, this.f17085o != f17068x, this.f17085o, this.f17075e);
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f17072b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f17086p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f17086p, length, 33);
                }
                if (this.f17087q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f17087q, length, 33);
                }
                if (this.f17088r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f17089s), this.f17088r, length, 33);
                }
                if (this.f17090t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f17091u), this.f17090t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f17071a.clear();
            this.f17072b.clear();
            this.f17086p = -1;
            this.f17087q = -1;
            this.f17088r = -1;
            this.f17090t = -1;
            this.f17092v = 0;
        }

        public void f(boolean z10, boolean z11, boolean z12, int i11, boolean z13, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            this.f17073c = true;
            this.f17074d = z10;
            this.f17081k = z11;
            this.f17075e = i11;
            this.f17076f = z13;
            this.f17077g = i12;
            this.f17078h = i13;
            this.f17079i = i16;
            int i19 = i14 + 1;
            if (this.f17080j != i19) {
                this.f17080j = i19;
                while (true) {
                    if ((!z11 || this.f17071a.size() < this.f17080j) && this.f17071a.size() < 15) {
                        break;
                    } else {
                        this.f17071a.remove(0);
                    }
                }
            }
            if (i17 != 0 && this.f17083m != i17) {
                this.f17083m = i17;
                int i20 = i17 - 1;
                q(D[i20], f17069y, C[i20], 0, A[i20], B[i20], f17070z[i20]);
            }
            if (i18 == 0 || this.f17084n == i18) {
                return;
            }
            this.f17084n = i18;
            int i21 = i18 - 1;
            m(0, 1, 1, false, false, F[i21], E[i21]);
            n(f17067w, G[i21], f17068x);
        }

        public boolean i() {
            return this.f17073c;
        }

        public boolean j() {
            return !i() || (this.f17071a.isEmpty() && this.f17072b.length() == 0);
        }

        public boolean k() {
            return this.f17074d;
        }

        public void l() {
            e();
            this.f17073c = false;
            this.f17074d = false;
            this.f17075e = 4;
            this.f17076f = false;
            this.f17077g = 0;
            this.f17078h = 0;
            this.f17079i = 0;
            this.f17080j = 15;
            this.f17081k = true;
            this.f17082l = 0;
            this.f17083m = 0;
            this.f17084n = 0;
            int i11 = f17068x;
            this.f17085o = i11;
            this.f17089s = f17067w;
            this.f17091u = i11;
        }

        public void m(int i11, int i12, int i13, boolean z10, boolean z11, int i14, int i15) {
            if (this.f17086p != -1) {
                if (!z10) {
                    this.f17072b.setSpan(new StyleSpan(2), this.f17086p, this.f17072b.length(), 33);
                    this.f17086p = -1;
                }
            } else if (z10) {
                this.f17086p = this.f17072b.length();
            }
            if (this.f17087q == -1) {
                if (z11) {
                    this.f17087q = this.f17072b.length();
                }
            } else {
                if (z11) {
                    return;
                }
                this.f17072b.setSpan(new UnderlineSpan(), this.f17087q, this.f17072b.length(), 33);
                this.f17087q = -1;
            }
        }

        public void n(int i11, int i12, int i13) {
            if (this.f17088r != -1 && this.f17089s != i11) {
                this.f17072b.setSpan(new ForegroundColorSpan(this.f17089s), this.f17088r, this.f17072b.length(), 33);
            }
            if (i11 != f17067w) {
                this.f17088r = this.f17072b.length();
                this.f17089s = i11;
            }
            if (this.f17090t != -1 && this.f17091u != i12) {
                this.f17072b.setSpan(new BackgroundColorSpan(this.f17091u), this.f17090t, this.f17072b.length(), 33);
            }
            if (i12 != f17068x) {
                this.f17090t = this.f17072b.length();
                this.f17091u = i12;
            }
        }

        public void o(int i11, int i12) {
            if (this.f17092v != i11) {
                a('\n');
            }
            this.f17092v = i11;
        }

        public void p(boolean z10) {
            this.f17074d = z10;
        }

        public void q(int i11, int i12, boolean z10, int i13, int i14, int i15, int i16) {
            this.f17085o = i11;
            this.f17082l = i16;
        }
    }

    /* JADX INFO: renamed from: ca.c$c, reason: collision with other inner class name */
    private static final class C0163c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17093a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17094b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f17095c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f17096d = 0;

        public C0163c(int i11, int i12) {
            this.f17093a = i11;
            this.f17094b = i12;
            this.f17095c = new byte[(i12 * 2) - 1];
        }
    }

    public c(int i11, List list) {
        this.f17057k = i11 == -1 ? 1 : i11;
        this.f17056j = list != null && com.google.android.exoplayer2.util.f.h(list);
        this.f17058l = new b[8];
        for (int i12 = 0; i12 < 8; i12++) {
            this.f17058l[i12] = new b();
        }
        this.f17059m = this.f17058l[0];
    }

    private void A() {
        for (int i11 = 0; i11 < 8; i11++) {
            this.f17058l[i11].l();
        }
    }

    private void k() {
        if (this.f17062p == null) {
            return;
        }
        z();
        this.f17062p = null;
    }

    private List l() {
        a aVarC;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < 8; i11++) {
            if (!this.f17058l[i11].j() && this.f17058l[i11].k() && (aVarC = this.f17058l[i11].c()) != null) {
                arrayList.add(aVarC);
            }
        }
        Collections.sort(arrayList, a.f17064c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            arrayList2.add(((a) arrayList.get(i12)).f17065a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void m(int i11) {
        if (i11 != 0) {
            if (i11 == 3) {
                this.f17060n = l();
            }
            if (i11 == 8) {
                this.f17059m.b();
                return;
            }
            switch (i11) {
                case 12:
                    A();
                    break;
                case 13:
                    this.f17059m.a('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i11 >= 17 && i11 <= 23) {
                        s.i("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i11);
                        this.f17054h.r(8);
                    } else if (i11 >= 24 && i11 <= 31) {
                        s.i("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i11);
                        this.f17054h.r(16);
                    } else {
                        s.i("Cea708Decoder", "Invalid C0 command: " + i11);
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void n(int i11) {
        int i12 = 1;
        switch (i11) {
            case 128:
            case 129:
            case 130:
            case MRAID_JS_WRITE_FAILED_VALUE:
            case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
            case OMSDK_JS_WRITE_FAILED_VALUE:
            case 134:
            case 135:
                int i13 = i11 - 128;
                if (this.f17063q != i13) {
                    this.f17063q = i13;
                    this.f17059m = this.f17058l[i13];
                }
                break;
            case PRIVACY_URL_ERROR_VALUE:
                while (i12 <= 8) {
                    if (this.f17054h.g()) {
                        this.f17058l[8 - i12].e();
                    }
                    i12++;
                }
                break;
            case TPAT_RETRY_FAILED_VALUE:
                for (int i14 = 1; i14 <= 8; i14++) {
                    if (this.f17054h.g()) {
                        this.f17058l[8 - i14].p(true);
                    }
                }
                break;
            case 138:
                while (i12 <= 8) {
                    if (this.f17054h.g()) {
                        this.f17058l[8 - i12].p(false);
                    }
                    i12++;
                }
                break;
            case 139:
                for (int i15 = 1; i15 <= 8; i15++) {
                    if (this.f17054h.g()) {
                        b bVar = this.f17058l[8 - i15];
                        bVar.p(!bVar.k());
                    }
                }
                break;
            case 140:
                while (i12 <= 8) {
                    if (this.f17054h.g()) {
                        this.f17058l[8 - i12].l();
                    }
                    i12++;
                }
                break;
            case 141:
                this.f17054h.r(8);
                break;
            case 142:
                break;
            case 143:
                A();
                break;
            case 144:
                if (this.f17059m.i()) {
                    v();
                } else {
                    this.f17054h.r(16);
                }
                break;
            case 145:
                if (this.f17059m.i()) {
                    w();
                } else {
                    this.f17054h.r(24);
                }
                break;
            case 146:
                if (this.f17059m.i()) {
                    x();
                } else {
                    this.f17054h.r(16);
                }
                break;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                s.i("Cea708Decoder", "Invalid C1 command: " + i11);
                break;
            case 151:
                if (this.f17059m.i()) {
                    y();
                } else {
                    this.f17054h.r(32);
                }
                break;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i16 = i11 - 152;
                q(i16);
                if (this.f17063q != i16) {
                    this.f17063q = i16;
                    this.f17059m = this.f17058l[i16];
                }
                break;
        }
    }

    private void o(int i11) {
        if (i11 <= 7) {
            return;
        }
        if (i11 <= 15) {
            this.f17054h.r(8);
        } else if (i11 <= 23) {
            this.f17054h.r(16);
        } else if (i11 <= 31) {
            this.f17054h.r(24);
        }
    }

    private void p(int i11) {
        if (i11 <= 135) {
            this.f17054h.r(32);
            return;
        }
        if (i11 <= 143) {
            this.f17054h.r(40);
        } else if (i11 <= 159) {
            this.f17054h.r(2);
            this.f17054h.r(this.f17054h.h(6) * 8);
        }
    }

    private void q(int i11) {
        b bVar = this.f17058l[i11];
        this.f17054h.r(2);
        boolean zG = this.f17054h.g();
        boolean zG2 = this.f17054h.g();
        boolean zG3 = this.f17054h.g();
        int iH = this.f17054h.h(3);
        boolean zG4 = this.f17054h.g();
        int iH2 = this.f17054h.h(7);
        int iH3 = this.f17054h.h(8);
        int iH4 = this.f17054h.h(4);
        int iH5 = this.f17054h.h(4);
        this.f17054h.r(2);
        int iH6 = this.f17054h.h(6);
        this.f17054h.r(2);
        bVar.f(zG, zG2, zG3, iH, zG4, iH2, iH3, iH5, iH6, iH4, this.f17054h.h(3), this.f17054h.h(3));
    }

    private void r(int i11) {
        if (i11 == 127) {
            this.f17059m.a((char) 9835);
        } else {
            this.f17059m.a((char) (i11 & 255));
        }
    }

    private void s(int i11) {
        this.f17059m.a((char) (i11 & 255));
    }

    private void t(int i11) {
        if (i11 == 32) {
            this.f17059m.a(' ');
        }
        if (i11 == 33) {
            this.f17059m.a((char) 160);
            return;
        }
        if (i11 == 37) {
            this.f17059m.a((char) 8230);
            return;
        }
        if (i11 == 42) {
            this.f17059m.a((char) 352);
            return;
        }
        if (i11 == 44) {
            this.f17059m.a((char) 338);
            return;
        }
        if (i11 == 63) {
            this.f17059m.a((char) 376);
            return;
        }
        if (i11 == 57) {
            this.f17059m.a((char) 8482);
            return;
        }
        if (i11 == 58) {
            this.f17059m.a((char) 353);
            return;
        }
        if (i11 == 60) {
            this.f17059m.a((char) 339);
            return;
        }
        if (i11 == 61) {
            this.f17059m.a((char) 8480);
            return;
        }
        switch (i11) {
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                this.f17059m.a((char) 9608);
                break;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.f17059m.a((char) 8216);
                break;
            case 50:
                this.f17059m.a((char) 8217);
                break;
            case AD_REWARD_USER_VALUE:
                this.f17059m.a((char) 8220);
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                this.f17059m.a((char) 8221);
                break;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                this.f17059m.a((char) 8226);
                break;
            default:
                switch (i11) {
                    case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                        this.f17059m.a((char) 8539);
                        break;
                    case JSON_ENCODE_ERROR_VALUE:
                        this.f17059m.a((char) 8540);
                        break;
                    case 120:
                        this.f17059m.a((char) 8541);
                        break;
                    case TPAT_ERROR_VALUE:
                        this.f17059m.a((char) 8542);
                        break;
                    case INVALID_ADS_ENDPOINT_VALUE:
                        this.f17059m.a((char) 9474);
                        break;
                    case INVALID_RI_ENDPOINT_VALUE:
                        this.f17059m.a((char) 9488);
                        break;
                    case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                        this.f17059m.a((char) 9492);
                        break;
                    case INVALID_METRICS_ENDPOINT_VALUE:
                        this.f17059m.a((char) 9472);
                        break;
                    case 126:
                        this.f17059m.a((char) 9496);
                        break;
                    case 127:
                        this.f17059m.a((char) 9484);
                        break;
                    default:
                        s.i("Cea708Decoder", "Invalid G2 character: " + i11);
                        break;
                }
                break;
        }
    }

    private void u(int i11) {
        if (i11 == 160) {
            this.f17059m.a((char) 13252);
            return;
        }
        s.i("Cea708Decoder", "Invalid G3 character: " + i11);
        this.f17059m.a('_');
    }

    private void v() {
        this.f17059m.m(this.f17054h.h(4), this.f17054h.h(2), this.f17054h.h(2), this.f17054h.g(), this.f17054h.g(), this.f17054h.h(3), this.f17054h.h(3));
    }

    private void w() {
        int iH = b.h(this.f17054h.h(2), this.f17054h.h(2), this.f17054h.h(2), this.f17054h.h(2));
        int iH2 = b.h(this.f17054h.h(2), this.f17054h.h(2), this.f17054h.h(2), this.f17054h.h(2));
        this.f17054h.r(2);
        this.f17059m.n(iH, iH2, b.g(this.f17054h.h(2), this.f17054h.h(2), this.f17054h.h(2)));
    }

    private void x() {
        this.f17054h.r(4);
        int iH = this.f17054h.h(4);
        this.f17054h.r(2);
        this.f17059m.o(iH, this.f17054h.h(6));
    }

    private void y() {
        int iH = b.h(this.f17054h.h(2), this.f17054h.h(2), this.f17054h.h(2), this.f17054h.h(2));
        int iH2 = this.f17054h.h(2);
        int iG = b.g(this.f17054h.h(2), this.f17054h.h(2), this.f17054h.h(2));
        if (this.f17054h.g()) {
            iH2 |= 4;
        }
        boolean zG = this.f17054h.g();
        int iH3 = this.f17054h.h(2);
        int iH4 = this.f17054h.h(2);
        int iH5 = this.f17054h.h(2);
        this.f17054h.r(8);
        this.f17059m.q(iH, iG, zG, iH2, iH3, iH4, iH5);
    }

    private void z() {
        C0163c c0163c = this.f17062p;
        if (c0163c.f17096d != (c0163c.f17094b * 2) - 1) {
            s.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f17062p.f17094b * 2) - 1) + ", but current index is " + this.f17062p.f17096d + " (sequence number " + this.f17062p.f17093a + ");");
        }
        c0 c0Var = this.f17054h;
        C0163c c0163c2 = this.f17062p;
        c0Var.o(c0163c2.f17095c, c0163c2.f17096d);
        boolean z10 = false;
        while (this.f17054h.b() > 0) {
            int iH = this.f17054h.h(3);
            int iH2 = this.f17054h.h(5);
            if (iH == 7) {
                this.f17054h.r(2);
                iH = this.f17054h.h(6);
                if (iH < 7) {
                    s.i("Cea708Decoder", "Invalid extended service number: " + iH);
                }
            }
            if (iH2 == 0) {
                if (iH == 0) {
                    break;
                }
                s.i("Cea708Decoder", "serviceNumber is non-zero (" + iH + ") when blockSize is 0");
                break;
            }
            if (iH != this.f17057k) {
                this.f17054h.s(iH2);
            } else {
                int iE = this.f17054h.e() + (iH2 * 8);
                while (this.f17054h.e() < iE) {
                    int iH3 = this.f17054h.h(8);
                    if (iH3 == 16) {
                        int iH4 = this.f17054h.h(8);
                        if (iH4 <= 31) {
                            o(iH4);
                        } else {
                            if (iH4 <= 127) {
                                t(iH4);
                            } else if (iH4 <= 159) {
                                p(iH4);
                            } else if (iH4 <= 255) {
                                u(iH4);
                            } else {
                                s.i("Cea708Decoder", "Invalid extended command: " + iH4);
                            }
                            z10 = true;
                        }
                    } else if (iH3 <= 31) {
                        m(iH3);
                    } else {
                        if (iH3 <= 127) {
                            r(iH3);
                        } else if (iH3 <= 159) {
                            n(iH3);
                        } else if (iH3 <= 255) {
                            s(iH3);
                        } else {
                            s.i("Cea708Decoder", "Invalid base command: " + iH3);
                        }
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            this.f17060n = l();
        }
    }

    @Override // ca.e
    protected i a() {
        List list = this.f17060n;
        this.f17061o = list;
        return new f((List) com.google.android.exoplayer2.util.a.e(list));
    }

    @Override // ca.e
    protected void b(m mVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(mVar.f24843c);
        this.f17053g.N(byteBuffer.array(), byteBuffer.limit());
        while (this.f17053g.a() >= 3) {
            int iD = this.f17053g.D();
            int i11 = iD & 3;
            boolean z10 = (iD & 4) == 4;
            byte bD = (byte) this.f17053g.D();
            byte bD2 = (byte) this.f17053g.D();
            if (i11 == 2 || i11 == 3) {
                if (z10) {
                    if (i11 == 3) {
                        k();
                        int i12 = (bD & 192) >> 6;
                        int i13 = this.f17055i;
                        if (i13 != -1 && i12 != (i13 + 1) % 4) {
                            A();
                            s.i("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f17055i + " current=" + i12);
                        }
                        this.f17055i = i12;
                        int i14 = bD & Utf8.REPLACEMENT_BYTE;
                        if (i14 == 0) {
                            i14 = 64;
                        }
                        C0163c c0163c = new C0163c(i12, i14);
                        this.f17062p = c0163c;
                        byte[] bArr = c0163c.f17095c;
                        int i15 = c0163c.f17096d;
                        c0163c.f17096d = i15 + 1;
                        bArr[i15] = bD2;
                    } else {
                        com.google.android.exoplayer2.util.a.a(i11 == 2);
                        C0163c c0163c2 = this.f17062p;
                        if (c0163c2 == null) {
                            s.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0163c2.f17095c;
                            int i16 = c0163c2.f17096d;
                            int i17 = i16 + 1;
                            c0163c2.f17096d = i17;
                            bArr2[i16] = bD;
                            c0163c2.f17096d = i16 + 2;
                            bArr2[i17] = bD2;
                        }
                    }
                    C0163c c0163c3 = this.f17062p;
                    if (c0163c3.f17096d == (c0163c3.f17094b * 2) - 1) {
                        k();
                    }
                }
            }
        }
    }

    @Override // ca.e
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ m dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override // ca.e
    /* JADX INFO: renamed from: d */
    public /* bridge */ /* synthetic */ n dequeueOutputBuffer() {
        return super.dequeueOutputBuffer();
    }

    @Override // ca.e, com.google.android.exoplayer2.decoder.d
    public void flush() {
        super.flush();
        this.f17060n = null;
        this.f17061o = null;
        this.f17063q = 0;
        this.f17059m = this.f17058l[0];
        A();
        this.f17062p = null;
    }

    @Override // ca.e
    protected boolean g() {
        return this.f17060n != this.f17061o;
    }

    @Override // ca.e
    /* JADX INFO: renamed from: h */
    public /* bridge */ /* synthetic */ void queueInputBuffer(m mVar) {
        super.queueInputBuffer(mVar);
    }

    @Override // ca.e, com.google.android.exoplayer2.decoder.d
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // ca.e, ba.j
    public /* bridge */ /* synthetic */ void setPositionUs(long j11) {
        super.setPositionUs(j11);
    }
}
