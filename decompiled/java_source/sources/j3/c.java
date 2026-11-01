package j3;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import i3.k;
import i3.o;
import i3.p;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j0 f65885h = new j0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final i0 f65886i = new i0();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65887j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f65888k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f65889l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b[] f65890m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private b f65891n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List f65892o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List f65893p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private C0798c f65894q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f65895r;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Comparator f65896c = new Comparator() { // from class: j3.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return c.a.c((c.a) obj, (c.a) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u1.a f65897a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f65898b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f11, int i11, int i12, float f12, int i13, float f13, boolean z10, int i14, int i15) {
            u1.a.b bVarN = new u1.a.b().o(charSequence).p(alignment).h(f11, i11).i(i12).k(f12).l(i13).n(f13);
            if (z10) {
                bVarN.s(i14);
            }
            this.f65897a = bVarN.a();
            this.f65898b = i15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f65898b, aVar.f65898b);
        }
    }

    private static final class b {
        private static final int[] A;
        private static final boolean[] B;
        private static final int[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public static final int f65899v = h(2, 2, 2, 0);

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final int f65900w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final int f65901x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private static final int[] f65902y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private static final int[] f65903z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f65904a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SpannableStringBuilder f65905b = new SpannableStringBuilder();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f65906c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f65907d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f65908e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f65909f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f65910g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f65911h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f65912i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f65913j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f65914k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f65915l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f65916m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f65917n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f65918o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f65919p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f65920q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f65921r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f65922s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f65923t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int f65924u;

        static {
            int iH = h(0, 0, 0, 0);
            f65900w = iH;
            int iH2 = h(0, 0, 0, 3);
            f65901x = iH2;
            f65902y = new int[]{0, 0, 0, 0, 0, 2, 0};
            f65903z = new int[]{0, 0, 0, 0, 0, 0, 2};
            A = new int[]{3, 3, 3, 3, 3, 3, 1};
            B = new boolean[]{false, false, false, true, true, true, false};
            C = new int[]{iH, iH2, iH, iH, iH2, iH, iH};
            D = new int[]{0, 1, 2, 3, 4, 3, 4};
            E = new int[]{0, 0, 0, 0, 0, 3, 3};
            F = new int[]{iH, iH, iH, iH, iH, iH2, iH2};
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
            androidx.media3.common.util.a.c(i11, 0, 4);
            androidx.media3.common.util.a.c(i12, 0, 4);
            androidx.media3.common.util.a.c(i13, 0, 4);
            androidx.media3.common.util.a.c(i14, 0, 4);
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
                this.f65905b.append(c11);
                return;
            }
            this.f65904a.add(d());
            this.f65905b.clear();
            if (this.f65918o != -1) {
                this.f65918o = 0;
            }
            if (this.f65919p != -1) {
                this.f65919p = 0;
            }
            if (this.f65920q != -1) {
                this.f65920q = 0;
            }
            if (this.f65922s != -1) {
                this.f65922s = 0;
            }
            while (true) {
                if (this.f65904a.size() < this.f65913j && this.f65904a.size() < 15) {
                    this.f65924u = this.f65904a.size();
                    return;
                }
                this.f65904a.remove(0);
            }
        }

        public void b() {
            int length = this.f65905b.length();
            if (length > 0) {
                this.f65905b.delete(length - 1, length);
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
            for (int i11 = 0; i11 < this.f65904a.size(); i11++) {
                spannableStringBuilder.append((CharSequence) this.f65904a.get(i11));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) d());
            int i12 = this.f65914k;
            if (i12 == 0) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i12 == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i12 != 2) {
                if (i12 != 3) {
                    throw new IllegalArgumentException("Unexpected justification value: " + this.f65914k);
                }
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            Layout.Alignment alignment2 = alignment;
            if (this.f65909f) {
                f11 = this.f65911h / 99.0f;
                f12 = this.f65910g / 99.0f;
            } else {
                f11 = this.f65911h / 209.0f;
                f12 = this.f65910g / 74.0f;
            }
            float f13 = (f11 * 0.9f) + 0.05f;
            float f14 = (f12 * 0.9f) + 0.05f;
            int i13 = this.f65912i;
            return new a(spannableStringBuilder, alignment2, f14, 0, i13 / 3 == 0 ? 0 : i13 / 3 == 1 ? 1 : 2, f13, i13 % 3 == 0 ? 0 : i13 % 3 == 1 ? 1 : 2, -3.4028235E38f, this.f65917n != f65900w, this.f65917n, this.f65908e);
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f65905b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f65918o != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f65918o, length, 33);
                }
                if (this.f65919p != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f65919p, length, 33);
                }
                if (this.f65920q != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f65921r), this.f65920q, length, 33);
                }
                if (this.f65922s != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f65923t), this.f65922s, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f65904a.clear();
            this.f65905b.clear();
            this.f65918o = -1;
            this.f65919p = -1;
            this.f65920q = -1;
            this.f65922s = -1;
            this.f65924u = 0;
        }

        public void f(boolean z10, int i11, boolean z11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f65906c = true;
            this.f65907d = z10;
            this.f65908e = i11;
            this.f65909f = z11;
            this.f65910g = i12;
            this.f65911h = i13;
            this.f65912i = i15;
            int i18 = i14 + 1;
            if (this.f65913j != i18) {
                this.f65913j = i18;
                while (true) {
                    if (this.f65904a.size() < this.f65913j && this.f65904a.size() < 15) {
                        break;
                    } else {
                        this.f65904a.remove(0);
                    }
                }
            }
            if (i16 != 0 && this.f65915l != i16) {
                this.f65915l = i16;
                int i19 = i16 - 1;
                q(C[i19], f65901x, B[i19], 0, f65903z[i19], A[i19], f65902y[i19]);
            }
            if (i17 == 0 || this.f65916m == i17) {
                return;
            }
            this.f65916m = i17;
            int i20 = i17 - 1;
            m(0, 1, 1, false, false, E[i20], D[i20]);
            n(f65899v, F[i20], f65900w);
        }

        public boolean i() {
            return this.f65906c;
        }

        public boolean j() {
            return !i() || (this.f65904a.isEmpty() && this.f65905b.length() == 0);
        }

        public boolean k() {
            return this.f65907d;
        }

        public void l() {
            e();
            this.f65906c = false;
            this.f65907d = false;
            this.f65908e = 4;
            this.f65909f = false;
            this.f65910g = 0;
            this.f65911h = 0;
            this.f65912i = 0;
            this.f65913j = 15;
            this.f65914k = 0;
            this.f65915l = 0;
            this.f65916m = 0;
            int i11 = f65900w;
            this.f65917n = i11;
            this.f65921r = f65899v;
            this.f65923t = i11;
        }

        public void m(int i11, int i12, int i13, boolean z10, boolean z11, int i14, int i15) {
            if (this.f65918o != -1) {
                if (!z10) {
                    this.f65905b.setSpan(new StyleSpan(2), this.f65918o, this.f65905b.length(), 33);
                    this.f65918o = -1;
                }
            } else if (z10) {
                this.f65918o = this.f65905b.length();
            }
            if (this.f65919p == -1) {
                if (z11) {
                    this.f65919p = this.f65905b.length();
                }
            } else {
                if (z11) {
                    return;
                }
                this.f65905b.setSpan(new UnderlineSpan(), this.f65919p, this.f65905b.length(), 33);
                this.f65919p = -1;
            }
        }

        public void n(int i11, int i12, int i13) {
            if (this.f65920q != -1 && this.f65921r != i11) {
                this.f65905b.setSpan(new ForegroundColorSpan(this.f65921r), this.f65920q, this.f65905b.length(), 33);
            }
            if (i11 != f65899v) {
                this.f65920q = this.f65905b.length();
                this.f65921r = i11;
            }
            if (this.f65922s != -1 && this.f65923t != i12) {
                this.f65905b.setSpan(new BackgroundColorSpan(this.f65923t), this.f65922s, this.f65905b.length(), 33);
            }
            if (i12 != f65900w) {
                this.f65922s = this.f65905b.length();
                this.f65923t = i12;
            }
        }

        public void o(int i11, int i12) {
            if (this.f65924u != i11) {
                a('\n');
            }
            this.f65924u = i11;
        }

        public void p(boolean z10) {
            this.f65907d = z10;
        }

        public void q(int i11, int i12, boolean z10, int i13, int i14, int i15, int i16) {
            this.f65917n = i11;
            this.f65914k = i16;
        }
    }

    /* JADX INFO: renamed from: j3.c$c, reason: collision with other inner class name */
    private static final class C0798c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f65925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f65926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f65927c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f65928d = 0;

        public C0798c(int i11, int i12) {
            this.f65925a = i11;
            this.f65926b = i12;
            this.f65927c = new byte[(i12 * 2) - 1];
        }
    }

    public c(int i11, List list) {
        this.f65889l = i11 == -1 ? 1 : i11;
        this.f65888k = list != null && j.v(list);
        this.f65890m = new b[8];
        for (int i12 = 0; i12 < 8; i12++) {
            this.f65890m[i12] = new b();
        }
        this.f65891n = this.f65890m[0];
    }

    private void A() {
        int iH = b.h(this.f65886i.h(2), this.f65886i.h(2), this.f65886i.h(2), this.f65886i.h(2));
        int iH2 = this.f65886i.h(2);
        int iG = b.g(this.f65886i.h(2), this.f65886i.h(2), this.f65886i.h(2));
        if (this.f65886i.g()) {
            iH2 |= 4;
        }
        boolean zG = this.f65886i.g();
        int iH3 = this.f65886i.h(2);
        int iH4 = this.f65886i.h(2);
        int iH5 = this.f65886i.h(2);
        this.f65886i.r(8);
        this.f65891n.q(iH, iG, zG, iH2, iH3, iH4, iH5);
    }

    private void B() {
        C0798c c0798c = this.f65894q;
        if (c0798c.f65928d != (c0798c.f65926b * 2) - 1) {
            u.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f65894q.f65926b * 2) - 1) + ", but current index is " + this.f65894q.f65928d + " (sequence number " + this.f65894q.f65925a + ");");
        }
        i0 i0Var = this.f65886i;
        C0798c c0798c2 = this.f65894q;
        i0Var.o(c0798c2.f65927c, c0798c2.f65928d);
        boolean z10 = false;
        while (this.f65886i.b() > 0) {
            int iH = this.f65886i.h(3);
            int iH2 = this.f65886i.h(5);
            if (iH == 7) {
                this.f65886i.r(2);
                iH = this.f65886i.h(6);
                if (iH < 7) {
                    u.h("Cea708Decoder", "Invalid extended service number: " + iH);
                }
            }
            if (iH2 == 0) {
                if (iH == 0) {
                    break;
                }
                u.h("Cea708Decoder", "serviceNumber is non-zero (" + iH + ") when blockSize is 0");
                break;
            }
            if (iH != this.f65889l) {
                this.f65886i.s(iH2);
            } else {
                int iE = this.f65886i.e() + (iH2 * 8);
                while (this.f65886i.e() < iE) {
                    int iH3 = this.f65886i.h(8);
                    if (iH3 == 16) {
                        int iH4 = this.f65886i.h(8);
                        if (iH4 <= 31) {
                            q(iH4);
                        } else {
                            if (iH4 <= 127) {
                                v(iH4);
                            } else if (iH4 <= 159) {
                                r(iH4);
                            } else if (iH4 <= 255) {
                                w(iH4);
                            } else {
                                u.h("Cea708Decoder", "Invalid extended command: " + iH4);
                            }
                            z10 = true;
                        }
                    } else if (iH3 <= 31) {
                        o(iH3);
                    } else {
                        if (iH3 <= 127) {
                            t(iH3);
                        } else if (iH3 <= 159) {
                            p(iH3);
                        } else if (iH3 <= 255) {
                            u(iH3);
                        } else {
                            u.h("Cea708Decoder", "Invalid base command: " + iH3);
                        }
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            this.f65892o = n();
        }
    }

    private void C() {
        for (int i11 = 0; i11 < 8; i11++) {
            this.f65890m[i11].l();
        }
    }

    private void m() {
        if (this.f65894q == null) {
            return;
        }
        B();
        this.f65894q = null;
    }

    private List n() {
        a aVarC;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < 8; i11++) {
            if (!this.f65890m[i11].j() && this.f65890m[i11].k() && (aVarC = this.f65890m[i11].c()) != null) {
                arrayList.add(aVarC);
            }
        }
        Collections.sort(arrayList, a.f65896c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            arrayList2.add(((a) arrayList.get(i12)).f65897a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void o(int i11) {
        if (i11 != 0) {
            if (i11 == 3) {
                this.f65892o = n();
            }
            if (i11 == 8) {
                this.f65891n.b();
                return;
            }
            switch (i11) {
                case 12:
                    C();
                    break;
                case 13:
                    this.f65891n.a('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i11 >= 17 && i11 <= 23) {
                        u.h("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i11);
                        this.f65886i.r(8);
                    } else if (i11 >= 24 && i11 <= 31) {
                        u.h("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i11);
                        this.f65886i.r(16);
                    } else {
                        u.h("Cea708Decoder", "Invalid C0 command: " + i11);
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void p(int i11) {
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
                if (this.f65895r != i13) {
                    this.f65895r = i13;
                    this.f65891n = this.f65890m[i13];
                }
                break;
            case PRIVACY_URL_ERROR_VALUE:
                while (i12 <= 8) {
                    if (this.f65886i.g()) {
                        this.f65890m[8 - i12].e();
                    }
                    i12++;
                }
                break;
            case TPAT_RETRY_FAILED_VALUE:
                for (int i14 = 1; i14 <= 8; i14++) {
                    if (this.f65886i.g()) {
                        this.f65890m[8 - i14].p(true);
                    }
                }
                break;
            case 138:
                while (i12 <= 8) {
                    if (this.f65886i.g()) {
                        this.f65890m[8 - i12].p(false);
                    }
                    i12++;
                }
                break;
            case 139:
                for (int i15 = 1; i15 <= 8; i15++) {
                    if (this.f65886i.g()) {
                        b bVar = this.f65890m[8 - i15];
                        bVar.p(!bVar.k());
                    }
                }
                break;
            case 140:
                while (i12 <= 8) {
                    if (this.f65886i.g()) {
                        this.f65890m[8 - i12].l();
                    }
                    i12++;
                }
                break;
            case 141:
                this.f65886i.r(8);
                break;
            case 142:
                break;
            case 143:
                C();
                break;
            case 144:
                if (this.f65891n.i()) {
                    x();
                } else {
                    this.f65886i.r(16);
                }
                break;
            case 145:
                if (this.f65891n.i()) {
                    y();
                } else {
                    this.f65886i.r(24);
                }
                break;
            case 146:
                if (this.f65891n.i()) {
                    z();
                } else {
                    this.f65886i.r(16);
                }
                break;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                u.h("Cea708Decoder", "Invalid C1 command: " + i11);
                break;
            case 151:
                if (this.f65891n.i()) {
                    A();
                } else {
                    this.f65886i.r(32);
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
                s(i16);
                if (this.f65895r != i16) {
                    this.f65895r = i16;
                    this.f65891n = this.f65890m[i16];
                }
                break;
        }
    }

    private void q(int i11) {
        if (i11 <= 7) {
            return;
        }
        if (i11 <= 15) {
            this.f65886i.r(8);
        } else if (i11 <= 23) {
            this.f65886i.r(16);
        } else if (i11 <= 31) {
            this.f65886i.r(24);
        }
    }

    private void r(int i11) {
        if (i11 <= 135) {
            this.f65886i.r(32);
            return;
        }
        if (i11 <= 143) {
            this.f65886i.r(40);
        } else if (i11 <= 159) {
            this.f65886i.r(2);
            this.f65886i.r(this.f65886i.h(6) * 8);
        }
    }

    private void s(int i11) {
        b bVar = this.f65890m[i11];
        this.f65886i.r(2);
        boolean zG = this.f65886i.g();
        this.f65886i.r(2);
        int iH = this.f65886i.h(3);
        boolean zG2 = this.f65886i.g();
        int iH2 = this.f65886i.h(7);
        int iH3 = this.f65886i.h(8);
        int iH4 = this.f65886i.h(4);
        int iH5 = this.f65886i.h(4);
        this.f65886i.r(2);
        this.f65886i.r(6);
        this.f65886i.r(2);
        bVar.f(zG, iH, zG2, iH2, iH3, iH5, iH4, this.f65886i.h(3), this.f65886i.h(3));
    }

    private void t(int i11) {
        if (i11 == 127) {
            this.f65891n.a((char) 9835);
        } else {
            this.f65891n.a((char) (i11 & 255));
        }
    }

    private void u(int i11) {
        this.f65891n.a((char) (i11 & 255));
    }

    private void v(int i11) {
        if (i11 == 32) {
            this.f65891n.a(' ');
        }
        if (i11 == 33) {
            this.f65891n.a((char) 160);
            return;
        }
        if (i11 == 37) {
            this.f65891n.a((char) 8230);
            return;
        }
        if (i11 == 42) {
            this.f65891n.a((char) 352);
            return;
        }
        if (i11 == 44) {
            this.f65891n.a((char) 338);
            return;
        }
        if (i11 == 63) {
            this.f65891n.a((char) 376);
            return;
        }
        if (i11 == 57) {
            this.f65891n.a((char) 8482);
            return;
        }
        if (i11 == 58) {
            this.f65891n.a((char) 353);
            return;
        }
        if (i11 == 60) {
            this.f65891n.a((char) 339);
            return;
        }
        if (i11 == 61) {
            this.f65891n.a((char) 8480);
            return;
        }
        switch (i11) {
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                this.f65891n.a((char) 9608);
                break;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.f65891n.a((char) 8216);
                break;
            case 50:
                this.f65891n.a((char) 8217);
                break;
            case AD_REWARD_USER_VALUE:
                this.f65891n.a((char) 8220);
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                this.f65891n.a((char) 8221);
                break;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                this.f65891n.a((char) 8226);
                break;
            default:
                switch (i11) {
                    case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                        this.f65891n.a((char) 8539);
                        break;
                    case JSON_ENCODE_ERROR_VALUE:
                        this.f65891n.a((char) 8540);
                        break;
                    case 120:
                        this.f65891n.a((char) 8541);
                        break;
                    case TPAT_ERROR_VALUE:
                        this.f65891n.a((char) 8542);
                        break;
                    case INVALID_ADS_ENDPOINT_VALUE:
                        this.f65891n.a((char) 9474);
                        break;
                    case INVALID_RI_ENDPOINT_VALUE:
                        this.f65891n.a((char) 9488);
                        break;
                    case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                        this.f65891n.a((char) 9492);
                        break;
                    case INVALID_METRICS_ENDPOINT_VALUE:
                        this.f65891n.a((char) 9472);
                        break;
                    case 126:
                        this.f65891n.a((char) 9496);
                        break;
                    case 127:
                        this.f65891n.a((char) 9484);
                        break;
                    default:
                        u.h("Cea708Decoder", "Invalid G2 character: " + i11);
                        break;
                }
                break;
        }
    }

    private void w(int i11) {
        if (i11 == 160) {
            this.f65891n.a((char) 13252);
            return;
        }
        u.h("Cea708Decoder", "Invalid G3 character: " + i11);
        this.f65891n.a('_');
    }

    private void x() {
        this.f65891n.m(this.f65886i.h(4), this.f65886i.h(2), this.f65886i.h(2), this.f65886i.g(), this.f65886i.g(), this.f65886i.h(3), this.f65886i.h(3));
    }

    private void y() {
        int iH = b.h(this.f65886i.h(2), this.f65886i.h(2), this.f65886i.h(2), this.f65886i.h(2));
        int iH2 = b.h(this.f65886i.h(2), this.f65886i.h(2), this.f65886i.h(2), this.f65886i.h(2));
        this.f65886i.r(2);
        this.f65891n.n(iH, iH2, b.g(this.f65886i.h(2), this.f65886i.h(2), this.f65886i.h(2)));
    }

    private void z() {
        this.f65886i.r(4);
        int iH = this.f65886i.h(4);
        this.f65886i.r(2);
        this.f65891n.o(iH, this.f65886i.h(6));
    }

    @Override // j3.e
    protected k c() {
        List list = this.f65892o;
        this.f65893p = list;
        return new f((List) androidx.media3.common.util.a.e(list));
    }

    @Override // j3.e
    protected void d(o oVar) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(oVar.f10918c);
        this.f65885h.U(byteBuffer.array(), byteBuffer.limit());
        while (this.f65885h.a() >= 3) {
            int iH = this.f65885h.H();
            int i11 = iH & 3;
            boolean z10 = (iH & 4) == 4;
            byte bH = (byte) this.f65885h.H();
            byte bH2 = (byte) this.f65885h.H();
            if (i11 == 2 || i11 == 3) {
                if (z10) {
                    if (i11 == 3) {
                        m();
                        int i12 = (bH & 192) >> 6;
                        int i13 = this.f65887j;
                        if (i13 != -1 && i12 != (i13 + 1) % 4) {
                            C();
                            u.h("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f65887j + " current=" + i12);
                        }
                        this.f65887j = i12;
                        int i14 = bH & Utf8.REPLACEMENT_BYTE;
                        if (i14 == 0) {
                            i14 = 64;
                        }
                        C0798c c0798c = new C0798c(i12, i14);
                        this.f65894q = c0798c;
                        byte[] bArr = c0798c.f65927c;
                        int i15 = c0798c.f65928d;
                        c0798c.f65928d = i15 + 1;
                        bArr[i15] = bH2;
                    } else {
                        androidx.media3.common.util.a.a(i11 == 2);
                        C0798c c0798c2 = this.f65894q;
                        if (c0798c2 == null) {
                            u.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0798c2.f65927c;
                            int i16 = c0798c2.f65928d;
                            int i17 = i16 + 1;
                            c0798c2.f65928d = i17;
                            bArr2[i16] = bH;
                            c0798c2.f65928d = i16 + 2;
                            bArr2[i17] = bH2;
                        }
                    }
                    C0798c c0798c3 = this.f65894q;
                    if (c0798c3.f65928d == (c0798c3.f65926b * 2) - 1) {
                        m();
                    }
                }
            }
        }
    }

    @Override // j3.e
    /* JADX INFO: renamed from: e */
    public /* bridge */ /* synthetic */ o dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override // j3.e
    /* JADX INFO: renamed from: f */
    public /* bridge */ /* synthetic */ p dequeueOutputBuffer() {
        return super.dequeueOutputBuffer();
    }

    @Override // j3.e, androidx.media3.decoder.g
    public void flush() {
        super.flush();
        this.f65892o = null;
        this.f65893p = null;
        this.f65895r = 0;
        this.f65891n = this.f65890m[0];
        C();
        this.f65894q = null;
    }

    @Override // androidx.media3.decoder.g
    public String getName() {
        return "Cea708Decoder";
    }

    @Override // j3.e
    protected boolean i() {
        return this.f65892o != this.f65893p;
    }

    @Override // j3.e
    /* JADX INFO: renamed from: j */
    public /* bridge */ /* synthetic */ void queueInputBuffer(o oVar) {
        super.queueInputBuffer(oVar);
    }

    @Override // j3.e, androidx.media3.decoder.g
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // j3.e, i3.l
    public /* bridge */ /* synthetic */ void setPositionUs(long j11) {
        super.setPositionUs(j11);
    }
}
