package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f7753h = {0, 4, 8};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static SparseIntArray f7754i = new SparseIntArray();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static SparseIntArray f7755j = new SparseIntArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f7758c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7759d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap f7760e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7761f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap f7762g = new HashMap();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f7763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f7764b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final d f7765c = new d();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final c f7766d = new c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final C0064b f7767e = new C0064b();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final e f7768f = new e();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public HashMap f7769g = new HashMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        C0063a f7770h;

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.b$a$a, reason: collision with other inner class name */
        static class C0063a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int[] f7771a = new int[10];

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int[] f7772b = new int[10];

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f7773c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            int[] f7774d = new int[10];

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            float[] f7775e = new float[10];

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            int f7776f = 0;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            int[] f7777g = new int[5];

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            String[] f7778h = new String[5];

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            int f7779i = 0;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            int[] f7780j = new int[4];

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            boolean[] f7781k = new boolean[4];

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            int f7782l = 0;

            C0063a() {
            }

            void a(int i11, float f11) {
                int i12 = this.f7776f;
                int[] iArr = this.f7774d;
                if (i12 >= iArr.length) {
                    this.f7774d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f7775e;
                    this.f7775e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f7774d;
                int i13 = this.f7776f;
                iArr2[i13] = i11;
                float[] fArr2 = this.f7775e;
                this.f7776f = i13 + 1;
                fArr2[i13] = f11;
            }

            void b(int i11, int i12) {
                int i13 = this.f7773c;
                int[] iArr = this.f7771a;
                if (i13 >= iArr.length) {
                    this.f7771a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f7772b;
                    this.f7772b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f7771a;
                int i14 = this.f7773c;
                iArr3[i14] = i11;
                int[] iArr4 = this.f7772b;
                this.f7773c = i14 + 1;
                iArr4[i14] = i12;
            }

            void c(int i11, String str) {
                int i12 = this.f7779i;
                int[] iArr = this.f7777g;
                if (i12 >= iArr.length) {
                    this.f7777g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f7778h;
                    this.f7778h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f7777g;
                int i13 = this.f7779i;
                iArr2[i13] = i11;
                String[] strArr2 = this.f7778h;
                this.f7779i = i13 + 1;
                strArr2[i13] = str;
            }

            void d(int i11, boolean z10) {
                int i12 = this.f7782l;
                int[] iArr = this.f7780j;
                if (i12 >= iArr.length) {
                    this.f7780j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f7781k;
                    this.f7781k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f7780j;
                int i13 = this.f7782l;
                iArr2[i13] = i11;
                boolean[] zArr2 = this.f7781k;
                this.f7782l = i13 + 1;
                zArr2[i13] = z10;
            }

            void e(a aVar) {
                for (int i11 = 0; i11 < this.f7773c; i11++) {
                    b.S(aVar, this.f7771a[i11], this.f7772b[i11]);
                }
                for (int i12 = 0; i12 < this.f7776f; i12++) {
                    b.R(aVar, this.f7774d[i12], this.f7775e[i12]);
                }
                for (int i13 = 0; i13 < this.f7779i; i13++) {
                    b.T(aVar, this.f7777g[i13], this.f7778h[i13]);
                }
                for (int i14 = 0; i14 < this.f7782l; i14++) {
                    b.U(aVar, this.f7780j[i14], this.f7781k[i14]);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(int i11, ConstraintLayout.b bVar) {
            this.f7763a = i11;
            C0064b c0064b = this.f7767e;
            c0064b.f7802j = bVar.f7670e;
            c0064b.f7804k = bVar.f7672f;
            c0064b.f7806l = bVar.f7674g;
            c0064b.f7808m = bVar.f7676h;
            c0064b.f7810n = bVar.f7678i;
            c0064b.f7812o = bVar.f7680j;
            c0064b.f7814p = bVar.f7682k;
            c0064b.f7816q = bVar.f7684l;
            c0064b.f7818r = bVar.f7686m;
            c0064b.f7819s = bVar.f7688n;
            c0064b.f7820t = bVar.f7690o;
            c0064b.f7821u = bVar.f7698s;
            c0064b.f7822v = bVar.f7700t;
            c0064b.f7823w = bVar.f7702u;
            c0064b.f7824x = bVar.f7704v;
            c0064b.f7825y = bVar.G;
            c0064b.f7826z = bVar.H;
            c0064b.A = bVar.I;
            c0064b.B = bVar.f7692p;
            c0064b.C = bVar.f7694q;
            c0064b.D = bVar.f7696r;
            c0064b.E = bVar.X;
            c0064b.F = bVar.Y;
            c0064b.G = bVar.Z;
            c0064b.f7798h = bVar.f7666c;
            c0064b.f7794f = bVar.f7662a;
            c0064b.f7796g = bVar.f7664b;
            c0064b.f7790d = ((ViewGroup.MarginLayoutParams) bVar).width;
            c0064b.f7792e = ((ViewGroup.MarginLayoutParams) bVar).height;
            c0064b.H = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            c0064b.I = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            c0064b.J = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            c0064b.K = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            c0064b.N = bVar.D;
            c0064b.V = bVar.M;
            c0064b.W = bVar.L;
            c0064b.Y = bVar.O;
            c0064b.X = bVar.N;
            c0064b.f7811n0 = bVar.f7663a0;
            c0064b.f7813o0 = bVar.f7665b0;
            c0064b.Z = bVar.P;
            c0064b.f7785a0 = bVar.Q;
            c0064b.f7787b0 = bVar.T;
            c0064b.f7789c0 = bVar.U;
            c0064b.f7791d0 = bVar.R;
            c0064b.f7793e0 = bVar.S;
            c0064b.f7795f0 = bVar.V;
            c0064b.f7797g0 = bVar.W;
            c0064b.f7809m0 = bVar.f7667c0;
            c0064b.P = bVar.f7708x;
            c0064b.R = bVar.f7710z;
            c0064b.O = bVar.f7706w;
            c0064b.Q = bVar.f7709y;
            c0064b.T = bVar.A;
            c0064b.S = bVar.B;
            c0064b.U = bVar.C;
            c0064b.f7817q0 = bVar.f7669d0;
            c0064b.L = bVar.getMarginEnd();
            this.f7767e.M = bVar.getMarginStart();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(int i11, Constraints.a aVar) {
            g(i11, aVar);
            this.f7765c.f7845d = aVar.f7721x0;
            e eVar = this.f7768f;
            eVar.f7849b = aVar.A0;
            eVar.f7850c = aVar.B0;
            eVar.f7851d = aVar.C0;
            eVar.f7852e = aVar.D0;
            eVar.f7853f = aVar.E0;
            eVar.f7854g = aVar.F0;
            eVar.f7855h = aVar.G0;
            eVar.f7857j = aVar.H0;
            eVar.f7858k = aVar.I0;
            eVar.f7859l = aVar.J0;
            eVar.f7861n = aVar.f7723z0;
            eVar.f7860m = aVar.f7722y0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(ConstraintHelper constraintHelper, int i11, Constraints.a aVar) {
            h(i11, aVar);
            if (constraintHelper instanceof Barrier) {
                C0064b c0064b = this.f7767e;
                c0064b.f7803j0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                c0064b.f7799h0 = barrier.getType();
                this.f7767e.f7805k0 = barrier.getReferencedIds();
                this.f7767e.f7801i0 = barrier.getMargin();
            }
        }

        public void d(a aVar) {
            C0063a c0063a = this.f7770h;
            if (c0063a != null) {
                c0063a.e(aVar);
            }
        }

        public void e(ConstraintLayout.b bVar) {
            C0064b c0064b = this.f7767e;
            bVar.f7670e = c0064b.f7802j;
            bVar.f7672f = c0064b.f7804k;
            bVar.f7674g = c0064b.f7806l;
            bVar.f7676h = c0064b.f7808m;
            bVar.f7678i = c0064b.f7810n;
            bVar.f7680j = c0064b.f7812o;
            bVar.f7682k = c0064b.f7814p;
            bVar.f7684l = c0064b.f7816q;
            bVar.f7686m = c0064b.f7818r;
            bVar.f7688n = c0064b.f7819s;
            bVar.f7690o = c0064b.f7820t;
            bVar.f7698s = c0064b.f7821u;
            bVar.f7700t = c0064b.f7822v;
            bVar.f7702u = c0064b.f7823w;
            bVar.f7704v = c0064b.f7824x;
            ((ViewGroup.MarginLayoutParams) bVar).leftMargin = c0064b.H;
            ((ViewGroup.MarginLayoutParams) bVar).rightMargin = c0064b.I;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = c0064b.J;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = c0064b.K;
            bVar.A = c0064b.T;
            bVar.B = c0064b.S;
            bVar.f7708x = c0064b.P;
            bVar.f7710z = c0064b.R;
            bVar.G = c0064b.f7825y;
            bVar.H = c0064b.f7826z;
            bVar.f7692p = c0064b.B;
            bVar.f7694q = c0064b.C;
            bVar.f7696r = c0064b.D;
            bVar.I = c0064b.A;
            bVar.X = c0064b.E;
            bVar.Y = c0064b.F;
            bVar.M = c0064b.V;
            bVar.L = c0064b.W;
            bVar.O = c0064b.Y;
            bVar.N = c0064b.X;
            bVar.f7663a0 = c0064b.f7811n0;
            bVar.f7665b0 = c0064b.f7813o0;
            bVar.P = c0064b.Z;
            bVar.Q = c0064b.f7785a0;
            bVar.T = c0064b.f7787b0;
            bVar.U = c0064b.f7789c0;
            bVar.R = c0064b.f7791d0;
            bVar.S = c0064b.f7793e0;
            bVar.V = c0064b.f7795f0;
            bVar.W = c0064b.f7797g0;
            bVar.Z = c0064b.G;
            bVar.f7666c = c0064b.f7798h;
            bVar.f7662a = c0064b.f7794f;
            bVar.f7664b = c0064b.f7796g;
            ((ViewGroup.MarginLayoutParams) bVar).width = c0064b.f7790d;
            ((ViewGroup.MarginLayoutParams) bVar).height = c0064b.f7792e;
            String str = c0064b.f7809m0;
            if (str != null) {
                bVar.f7667c0 = str;
            }
            bVar.f7669d0 = c0064b.f7817q0;
            bVar.setMarginStart(c0064b.M);
            bVar.setMarginEnd(this.f7767e.L);
            bVar.c();
        }

        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = new a();
            aVar.f7767e.a(this.f7767e);
            aVar.f7766d.a(this.f7766d);
            aVar.f7765c.a(this.f7765c);
            aVar.f7768f.a(this.f7768f);
            aVar.f7763a = this.f7763a;
            aVar.f7770h = this.f7770h;
            return aVar;
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.b$b, reason: collision with other inner class name */
    public static class C0064b {

        /* JADX INFO: renamed from: r0, reason: collision with root package name */
        private static SparseIntArray f7783r0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f7790d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f7792e;

        /* JADX INFO: renamed from: k0, reason: collision with root package name */
        public int[] f7805k0;

        /* JADX INFO: renamed from: l0, reason: collision with root package name */
        public String f7807l0;

        /* JADX INFO: renamed from: m0, reason: collision with root package name */
        public String f7809m0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f7784a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f7786b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f7788c = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f7794f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f7796g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f7798h = -1.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f7800i = true;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f7802j = -1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f7804k = -1;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f7806l = -1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f7808m = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f7810n = -1;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f7812o = -1;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f7814p = -1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f7816q = -1;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f7818r = -1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f7819s = -1;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f7820t = -1;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f7821u = -1;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f7822v = -1;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f7823w = -1;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f7824x = -1;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public float f7825y = 0.5f;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public float f7826z = 0.5f;
        public String A = null;
        public int B = -1;
        public int C = 0;
        public float D = 0.0f;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public int N = 0;
        public int O = Integer.MIN_VALUE;
        public int P = Integer.MIN_VALUE;
        public int Q = Integer.MIN_VALUE;
        public int R = Integer.MIN_VALUE;
        public int S = Integer.MIN_VALUE;
        public int T = Integer.MIN_VALUE;
        public int U = Integer.MIN_VALUE;
        public float V = -1.0f;
        public float W = -1.0f;
        public int X = 0;
        public int Y = 0;
        public int Z = 0;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        public int f7785a0 = 0;

        /* JADX INFO: renamed from: b0, reason: collision with root package name */
        public int f7787b0 = 0;

        /* JADX INFO: renamed from: c0, reason: collision with root package name */
        public int f7789c0 = 0;

        /* JADX INFO: renamed from: d0, reason: collision with root package name */
        public int f7791d0 = 0;

        /* JADX INFO: renamed from: e0, reason: collision with root package name */
        public int f7793e0 = 0;

        /* JADX INFO: renamed from: f0, reason: collision with root package name */
        public float f7795f0 = 1.0f;

        /* JADX INFO: renamed from: g0, reason: collision with root package name */
        public float f7797g0 = 1.0f;

        /* JADX INFO: renamed from: h0, reason: collision with root package name */
        public int f7799h0 = -1;

        /* JADX INFO: renamed from: i0, reason: collision with root package name */
        public int f7801i0 = 0;

        /* JADX INFO: renamed from: j0, reason: collision with root package name */
        public int f7803j0 = -1;

        /* JADX INFO: renamed from: n0, reason: collision with root package name */
        public boolean f7811n0 = false;

        /* JADX INFO: renamed from: o0, reason: collision with root package name */
        public boolean f7813o0 = false;

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        public boolean f7815p0 = true;

        /* JADX INFO: renamed from: q0, reason: collision with root package name */
        public int f7817q0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7783r0 = sparseIntArray;
            sparseIntArray.append(R$styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            f7783r0.append(R$styleable.Layout_layout_constraintLeft_toRightOf, 25);
            f7783r0.append(R$styleable.Layout_layout_constraintRight_toLeftOf, 28);
            f7783r0.append(R$styleable.Layout_layout_constraintRight_toRightOf, 29);
            f7783r0.append(R$styleable.Layout_layout_constraintTop_toTopOf, 35);
            f7783r0.append(R$styleable.Layout_layout_constraintTop_toBottomOf, 34);
            f7783r0.append(R$styleable.Layout_layout_constraintBottom_toTopOf, 4);
            f7783r0.append(R$styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            f7783r0.append(R$styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f7783r0.append(R$styleable.Layout_layout_editor_absoluteX, 6);
            f7783r0.append(R$styleable.Layout_layout_editor_absoluteY, 7);
            f7783r0.append(R$styleable.Layout_layout_constraintGuide_begin, 17);
            f7783r0.append(R$styleable.Layout_layout_constraintGuide_end, 18);
            f7783r0.append(R$styleable.Layout_layout_constraintGuide_percent, 19);
            f7783r0.append(R$styleable.Layout_guidelineUseRtl, 90);
            f7783r0.append(R$styleable.Layout_android_orientation, 26);
            f7783r0.append(R$styleable.Layout_layout_constraintStart_toEndOf, 31);
            f7783r0.append(R$styleable.Layout_layout_constraintStart_toStartOf, 32);
            f7783r0.append(R$styleable.Layout_layout_constraintEnd_toStartOf, 10);
            f7783r0.append(R$styleable.Layout_layout_constraintEnd_toEndOf, 9);
            f7783r0.append(R$styleable.Layout_layout_goneMarginLeft, 13);
            f7783r0.append(R$styleable.Layout_layout_goneMarginTop, 16);
            f7783r0.append(R$styleable.Layout_layout_goneMarginRight, 14);
            f7783r0.append(R$styleable.Layout_layout_goneMarginBottom, 11);
            f7783r0.append(R$styleable.Layout_layout_goneMarginStart, 15);
            f7783r0.append(R$styleable.Layout_layout_goneMarginEnd, 12);
            f7783r0.append(R$styleable.Layout_layout_constraintVertical_weight, 38);
            f7783r0.append(R$styleable.Layout_layout_constraintHorizontal_weight, 37);
            f7783r0.append(R$styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            f7783r0.append(R$styleable.Layout_layout_constraintVertical_chainStyle, 40);
            f7783r0.append(R$styleable.Layout_layout_constraintHorizontal_bias, 20);
            f7783r0.append(R$styleable.Layout_layout_constraintVertical_bias, 36);
            f7783r0.append(R$styleable.Layout_layout_constraintDimensionRatio, 5);
            f7783r0.append(R$styleable.Layout_layout_constraintLeft_creator, 91);
            f7783r0.append(R$styleable.Layout_layout_constraintTop_creator, 91);
            f7783r0.append(R$styleable.Layout_layout_constraintRight_creator, 91);
            f7783r0.append(R$styleable.Layout_layout_constraintBottom_creator, 91);
            f7783r0.append(R$styleable.Layout_layout_constraintBaseline_creator, 91);
            f7783r0.append(R$styleable.Layout_android_layout_marginLeft, 23);
            f7783r0.append(R$styleable.Layout_android_layout_marginRight, 27);
            f7783r0.append(R$styleable.Layout_android_layout_marginStart, 30);
            f7783r0.append(R$styleable.Layout_android_layout_marginEnd, 8);
            f7783r0.append(R$styleable.Layout_android_layout_marginTop, 33);
            f7783r0.append(R$styleable.Layout_android_layout_marginBottom, 2);
            f7783r0.append(R$styleable.Layout_android_layout_width, 22);
            f7783r0.append(R$styleable.Layout_android_layout_height, 21);
            f7783r0.append(R$styleable.Layout_layout_constraintWidth, 41);
            f7783r0.append(R$styleable.Layout_layout_constraintHeight, 42);
            f7783r0.append(R$styleable.Layout_layout_constrainedWidth, 41);
            f7783r0.append(R$styleable.Layout_layout_constrainedHeight, 42);
            f7783r0.append(R$styleable.Layout_layout_wrapBehaviorInParent, 76);
            f7783r0.append(R$styleable.Layout_layout_constraintCircle, 61);
            f7783r0.append(R$styleable.Layout_layout_constraintCircleRadius, 62);
            f7783r0.append(R$styleable.Layout_layout_constraintCircleAngle, 63);
            f7783r0.append(R$styleable.Layout_layout_constraintWidth_percent, 69);
            f7783r0.append(R$styleable.Layout_layout_constraintHeight_percent, 70);
            f7783r0.append(R$styleable.Layout_chainUseRtl, 71);
            f7783r0.append(R$styleable.Layout_barrierDirection, 72);
            f7783r0.append(R$styleable.Layout_barrierMargin, 73);
            f7783r0.append(R$styleable.Layout_constraint_referenced_ids, 74);
            f7783r0.append(R$styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public void a(C0064b c0064b) {
            this.f7784a = c0064b.f7784a;
            this.f7790d = c0064b.f7790d;
            this.f7786b = c0064b.f7786b;
            this.f7792e = c0064b.f7792e;
            this.f7794f = c0064b.f7794f;
            this.f7796g = c0064b.f7796g;
            this.f7798h = c0064b.f7798h;
            this.f7800i = c0064b.f7800i;
            this.f7802j = c0064b.f7802j;
            this.f7804k = c0064b.f7804k;
            this.f7806l = c0064b.f7806l;
            this.f7808m = c0064b.f7808m;
            this.f7810n = c0064b.f7810n;
            this.f7812o = c0064b.f7812o;
            this.f7814p = c0064b.f7814p;
            this.f7816q = c0064b.f7816q;
            this.f7818r = c0064b.f7818r;
            this.f7819s = c0064b.f7819s;
            this.f7820t = c0064b.f7820t;
            this.f7821u = c0064b.f7821u;
            this.f7822v = c0064b.f7822v;
            this.f7823w = c0064b.f7823w;
            this.f7824x = c0064b.f7824x;
            this.f7825y = c0064b.f7825y;
            this.f7826z = c0064b.f7826z;
            this.A = c0064b.A;
            this.B = c0064b.B;
            this.C = c0064b.C;
            this.D = c0064b.D;
            this.E = c0064b.E;
            this.F = c0064b.F;
            this.G = c0064b.G;
            this.H = c0064b.H;
            this.I = c0064b.I;
            this.J = c0064b.J;
            this.K = c0064b.K;
            this.L = c0064b.L;
            this.M = c0064b.M;
            this.N = c0064b.N;
            this.O = c0064b.O;
            this.P = c0064b.P;
            this.Q = c0064b.Q;
            this.R = c0064b.R;
            this.S = c0064b.S;
            this.T = c0064b.T;
            this.U = c0064b.U;
            this.V = c0064b.V;
            this.W = c0064b.W;
            this.X = c0064b.X;
            this.Y = c0064b.Y;
            this.Z = c0064b.Z;
            this.f7785a0 = c0064b.f7785a0;
            this.f7787b0 = c0064b.f7787b0;
            this.f7789c0 = c0064b.f7789c0;
            this.f7791d0 = c0064b.f7791d0;
            this.f7793e0 = c0064b.f7793e0;
            this.f7795f0 = c0064b.f7795f0;
            this.f7797g0 = c0064b.f7797g0;
            this.f7799h0 = c0064b.f7799h0;
            this.f7801i0 = c0064b.f7801i0;
            this.f7803j0 = c0064b.f7803j0;
            this.f7809m0 = c0064b.f7809m0;
            int[] iArr = c0064b.f7805k0;
            if (iArr == null || c0064b.f7807l0 != null) {
                this.f7805k0 = null;
            } else {
                this.f7805k0 = Arrays.copyOf(iArr, iArr.length);
            }
            this.f7807l0 = c0064b.f7807l0;
            this.f7811n0 = c0064b.f7811n0;
            this.f7813o0 = c0064b.f7813o0;
            this.f7815p0 = c0064b.f7815p0;
            this.f7817q0 = c0064b.f7817q0;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Layout);
            this.f7786b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                int i12 = f7783r0.get(index);
                switch (i12) {
                    case 1:
                        this.f7818r = b.J(typedArrayObtainStyledAttributes, index, this.f7818r);
                        break;
                    case 2:
                        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 3:
                        this.f7816q = b.J(typedArrayObtainStyledAttributes, index, this.f7816q);
                        break;
                    case 4:
                        this.f7814p = b.J(typedArrayObtainStyledAttributes, index, this.f7814p);
                        break;
                    case 5:
                        this.A = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.E = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.E);
                        break;
                    case 7:
                        this.F = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.F);
                        break;
                    case 8:
                        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 9:
                        this.f7824x = b.J(typedArrayObtainStyledAttributes, index, this.f7824x);
                        break;
                    case 10:
                        this.f7823w = b.J(typedArrayObtainStyledAttributes, index, this.f7823w);
                        break;
                    case 11:
                        this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        break;
                    case 12:
                        this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                        break;
                    case 13:
                        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 14:
                        this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        break;
                    case 15:
                        this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.T);
                        break;
                    case 16:
                        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    case 17:
                        this.f7794f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7794f);
                        break;
                    case 18:
                        this.f7796g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f7796g);
                        break;
                    case 19:
                        this.f7798h = typedArrayObtainStyledAttributes.getFloat(index, this.f7798h);
                        break;
                    case 20:
                        this.f7825y = typedArrayObtainStyledAttributes.getFloat(index, this.f7825y);
                        break;
                    case 21:
                        this.f7792e = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f7792e);
                        break;
                    case 22:
                        this.f7790d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f7790d);
                        break;
                    case 23:
                        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 24:
                        this.f7802j = b.J(typedArrayObtainStyledAttributes, index, this.f7802j);
                        break;
                    case 25:
                        this.f7804k = b.J(typedArrayObtainStyledAttributes, index, this.f7804k);
                        break;
                    case 26:
                        this.G = typedArrayObtainStyledAttributes.getInt(index, this.G);
                        break;
                    case 27:
                        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                        break;
                    case 28:
                        this.f7806l = b.J(typedArrayObtainStyledAttributes, index, this.f7806l);
                        break;
                    case NOTIFICATION_REDIRECT_VALUE:
                        this.f7808m = b.J(typedArrayObtainStyledAttributes, index, this.f7808m);
                        break;
                    case 30:
                        this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case TEMPLATE_HTML_SIZE_VALUE:
                        this.f7821u = b.J(typedArrayObtainStyledAttributes, index, this.f7821u);
                        break;
                    case 32:
                        this.f7822v = b.J(typedArrayObtainStyledAttributes, index, this.f7822v);
                        break;
                    case 33:
                        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 34:
                        this.f7812o = b.J(typedArrayObtainStyledAttributes, index, this.f7812o);
                        break;
                    case 35:
                        this.f7810n = b.J(typedArrayObtainStyledAttributes, index, this.f7810n);
                        break;
                    case 36:
                        this.f7826z = typedArrayObtainStyledAttributes.getFloat(index, this.f7826z);
                        break;
                    case 37:
                        this.W = typedArrayObtainStyledAttributes.getFloat(index, this.W);
                        break;
                    case 38:
                        this.V = typedArrayObtainStyledAttributes.getFloat(index, this.V);
                        break;
                    case 39:
                        this.X = typedArrayObtainStyledAttributes.getInt(index, this.X);
                        break;
                    case 40:
                        this.Y = typedArrayObtainStyledAttributes.getInt(index, this.Y);
                        break;
                    case 41:
                        b.K(this, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        b.K(this, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i12) {
                            case 61:
                                this.B = b.J(typedArrayObtainStyledAttributes, index, this.B);
                                break;
                            case 62:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            case 63:
                                this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                                break;
                            default:
                                switch (i12) {
                                    case 69:
                                        this.f7795f0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 70:
                                        this.f7797g0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 71:
                                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                        break;
                                    case 72:
                                        this.f7799h0 = typedArrayObtainStyledAttributes.getInt(index, this.f7799h0);
                                        break;
                                    case 73:
                                        this.f7801i0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7801i0);
                                        break;
                                    case 74:
                                        this.f7807l0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case 75:
                                        this.f7815p0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7815p0);
                                        break;
                                    case 76:
                                        this.f7817q0 = typedArrayObtainStyledAttributes.getInt(index, this.f7817q0);
                                        break;
                                    case 77:
                                        this.f7819s = b.J(typedArrayObtainStyledAttributes, index, this.f7819s);
                                        break;
                                    case 78:
                                        this.f7820t = b.J(typedArrayObtainStyledAttributes, index, this.f7820t);
                                        break;
                                    case 79:
                                        this.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.U);
                                        break;
                                    case 80:
                                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                                        this.f7785a0 = typedArrayObtainStyledAttributes.getInt(index, this.f7785a0);
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                                        this.f7789c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7789c0);
                                        break;
                                    case 84:
                                        this.f7787b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7787b0);
                                        break;
                                    case 85:
                                        this.f7793e0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7793e0);
                                        break;
                                    case 86:
                                        this.f7791d0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f7791d0);
                                        break;
                                    case 87:
                                        this.f7811n0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7811n0);
                                        break;
                                    case 88:
                                        this.f7813o0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f7813o0);
                                        break;
                                    case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                                        this.f7809m0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                                        this.f7800i = typedArrayObtainStyledAttributes.getBoolean(index, this.f7800i);
                                        break;
                                    case 91:
                                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7783r0.get(index));
                                        break;
                                    default:
                                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f7783r0.get(index));
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class c {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static SparseIntArray f7827o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f7828a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7829b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f7830c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f7831d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f7832e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f7833f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f7834g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f7835h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f7836i = Float.NaN;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f7837j = Float.NaN;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f7838k = -1;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public String f7839l = null;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f7840m = -3;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f7841n = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7827o = sparseIntArray;
            sparseIntArray.append(R$styleable.Motion_motionPathRotate, 1);
            f7827o.append(R$styleable.Motion_pathMotionArc, 2);
            f7827o.append(R$styleable.Motion_transitionEasing, 3);
            f7827o.append(R$styleable.Motion_drawPath, 4);
            f7827o.append(R$styleable.Motion_animateRelativeTo, 5);
            f7827o.append(R$styleable.Motion_animateCircleAngleTo, 6);
            f7827o.append(R$styleable.Motion_motionStagger, 7);
            f7827o.append(R$styleable.Motion_quantizeMotionSteps, 8);
            f7827o.append(R$styleable.Motion_quantizeMotionPhase, 9);
            f7827o.append(R$styleable.Motion_quantizeMotionInterpolator, 10);
        }

        public void a(c cVar) {
            this.f7828a = cVar.f7828a;
            this.f7829b = cVar.f7829b;
            this.f7831d = cVar.f7831d;
            this.f7832e = cVar.f7832e;
            this.f7833f = cVar.f7833f;
            this.f7836i = cVar.f7836i;
            this.f7834g = cVar.f7834g;
            this.f7835h = cVar.f7835h;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Motion);
            this.f7828a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                switch (f7827o.get(index)) {
                    case 1:
                        this.f7836i = typedArrayObtainStyledAttributes.getFloat(index, this.f7836i);
                        break;
                    case 2:
                        this.f7832e = typedArrayObtainStyledAttributes.getInt(index, this.f7832e);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.f7831d = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.f7831d = androidx.constraintlayout.core.motion.utils.c.f6768c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.f7833f = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f7829b = b.J(typedArrayObtainStyledAttributes, index, this.f7829b);
                        break;
                    case 6:
                        this.f7830c = typedArrayObtainStyledAttributes.getInteger(index, this.f7830c);
                        break;
                    case 7:
                        this.f7834g = typedArrayObtainStyledAttributes.getFloat(index, this.f7834g);
                        break;
                    case 8:
                        this.f7838k = typedArrayObtainStyledAttributes.getInteger(index, this.f7838k);
                        break;
                    case 9:
                        this.f7837j = typedArrayObtainStyledAttributes.getFloat(index, this.f7837j);
                        break;
                    case 10:
                        int i12 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i12 == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.f7841n = resourceId;
                            if (resourceId != -1) {
                                this.f7840m = -2;
                            }
                        } else if (i12 == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.f7839l = string;
                            if (string.indexOf("/") > 0) {
                                this.f7841n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.f7840m = -2;
                            } else {
                                this.f7840m = -1;
                            }
                        } else {
                            this.f7840m = typedArrayObtainStyledAttributes.getInteger(index, this.f7841n);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f7842a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7843b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f7844c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f7845d = 1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f7846e = Float.NaN;

        public void a(d dVar) {
            this.f7842a = dVar.f7842a;
            this.f7843b = dVar.f7843b;
            this.f7845d = dVar.f7845d;
            this.f7846e = dVar.f7846e;
            this.f7844c = dVar.f7844c;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PropertySet);
            this.f7842a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.PropertySet_android_alpha) {
                    this.f7845d = typedArrayObtainStyledAttributes.getFloat(index, this.f7845d);
                } else if (index == R$styleable.PropertySet_android_visibility) {
                    this.f7843b = typedArrayObtainStyledAttributes.getInt(index, this.f7843b);
                    this.f7843b = b.f7753h[this.f7843b];
                } else if (index == R$styleable.PropertySet_visibilityMode) {
                    this.f7844c = typedArrayObtainStyledAttributes.getInt(index, this.f7844c);
                } else if (index == R$styleable.PropertySet_motionProgress) {
                    this.f7846e = typedArrayObtainStyledAttributes.getFloat(index, this.f7846e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class e {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static SparseIntArray f7847o;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f7848a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f7849b = 0.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f7850c = 0.0f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f7851d = 0.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f7852e = 1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f7853f = 1.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f7854g = Float.NaN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f7855h = Float.NaN;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f7856i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f7857j = 0.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f7858k = 0.0f;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public float f7859l = 0.0f;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f7860m = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f7861n = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7847o = sparseIntArray;
            sparseIntArray.append(R$styleable.Transform_android_rotation, 1);
            f7847o.append(R$styleable.Transform_android_rotationX, 2);
            f7847o.append(R$styleable.Transform_android_rotationY, 3);
            f7847o.append(R$styleable.Transform_android_scaleX, 4);
            f7847o.append(R$styleable.Transform_android_scaleY, 5);
            f7847o.append(R$styleable.Transform_android_transformPivotX, 6);
            f7847o.append(R$styleable.Transform_android_transformPivotY, 7);
            f7847o.append(R$styleable.Transform_android_translationX, 8);
            f7847o.append(R$styleable.Transform_android_translationY, 9);
            f7847o.append(R$styleable.Transform_android_translationZ, 10);
            f7847o.append(R$styleable.Transform_android_elevation, 11);
            f7847o.append(R$styleable.Transform_transformPivotTarget, 12);
        }

        public void a(e eVar) {
            this.f7848a = eVar.f7848a;
            this.f7849b = eVar.f7849b;
            this.f7850c = eVar.f7850c;
            this.f7851d = eVar.f7851d;
            this.f7852e = eVar.f7852e;
            this.f7853f = eVar.f7853f;
            this.f7854g = eVar.f7854g;
            this.f7855h = eVar.f7855h;
            this.f7856i = eVar.f7856i;
            this.f7857j = eVar.f7857j;
            this.f7858k = eVar.f7858k;
            this.f7859l = eVar.f7859l;
            this.f7860m = eVar.f7860m;
            this.f7861n = eVar.f7861n;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transform);
            this.f7848a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                switch (f7847o.get(index)) {
                    case 1:
                        this.f7849b = typedArrayObtainStyledAttributes.getFloat(index, this.f7849b);
                        break;
                    case 2:
                        this.f7850c = typedArrayObtainStyledAttributes.getFloat(index, this.f7850c);
                        break;
                    case 3:
                        this.f7851d = typedArrayObtainStyledAttributes.getFloat(index, this.f7851d);
                        break;
                    case 4:
                        this.f7852e = typedArrayObtainStyledAttributes.getFloat(index, this.f7852e);
                        break;
                    case 5:
                        this.f7853f = typedArrayObtainStyledAttributes.getFloat(index, this.f7853f);
                        break;
                    case 6:
                        this.f7854g = typedArrayObtainStyledAttributes.getDimension(index, this.f7854g);
                        break;
                    case 7:
                        this.f7855h = typedArrayObtainStyledAttributes.getDimension(index, this.f7855h);
                        break;
                    case 8:
                        this.f7857j = typedArrayObtainStyledAttributes.getDimension(index, this.f7857j);
                        break;
                    case 9:
                        this.f7858k = typedArrayObtainStyledAttributes.getDimension(index, this.f7858k);
                        break;
                    case 10:
                        this.f7859l = typedArrayObtainStyledAttributes.getDimension(index, this.f7859l);
                        break;
                    case 11:
                        this.f7860m = true;
                        this.f7861n = typedArrayObtainStyledAttributes.getDimension(index, this.f7861n);
                        break;
                    case 12:
                        this.f7856i = b.J(typedArrayObtainStyledAttributes, index, this.f7856i);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        f7754i.append(R$styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f7754i.append(R$styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f7754i.append(R$styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f7754i.append(R$styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f7754i.append(R$styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f7754i.append(R$styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f7754i.append(R$styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f7754i.append(R$styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f7754i.append(R$styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f7754i.append(R$styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        f7754i.append(R$styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        f7754i.append(R$styleable.Constraint_layout_editor_absoluteX, 6);
        f7754i.append(R$styleable.Constraint_layout_editor_absoluteY, 7);
        f7754i.append(R$styleable.Constraint_layout_constraintGuide_begin, 17);
        f7754i.append(R$styleable.Constraint_layout_constraintGuide_end, 18);
        f7754i.append(R$styleable.Constraint_layout_constraintGuide_percent, 19);
        f7754i.append(R$styleable.Constraint_guidelineUseRtl, 99);
        f7754i.append(R$styleable.Constraint_android_orientation, 27);
        f7754i.append(R$styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f7754i.append(R$styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f7754i.append(R$styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f7754i.append(R$styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f7754i.append(R$styleable.Constraint_layout_goneMarginLeft, 13);
        f7754i.append(R$styleable.Constraint_layout_goneMarginTop, 16);
        f7754i.append(R$styleable.Constraint_layout_goneMarginRight, 14);
        f7754i.append(R$styleable.Constraint_layout_goneMarginBottom, 11);
        f7754i.append(R$styleable.Constraint_layout_goneMarginStart, 15);
        f7754i.append(R$styleable.Constraint_layout_goneMarginEnd, 12);
        f7754i.append(R$styleable.Constraint_layout_constraintVertical_weight, 40);
        f7754i.append(R$styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f7754i.append(R$styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f7754i.append(R$styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f7754i.append(R$styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f7754i.append(R$styleable.Constraint_layout_constraintVertical_bias, 37);
        f7754i.append(R$styleable.Constraint_layout_constraintDimensionRatio, 5);
        f7754i.append(R$styleable.Constraint_layout_constraintLeft_creator, 87);
        f7754i.append(R$styleable.Constraint_layout_constraintTop_creator, 87);
        f7754i.append(R$styleable.Constraint_layout_constraintRight_creator, 87);
        f7754i.append(R$styleable.Constraint_layout_constraintBottom_creator, 87);
        f7754i.append(R$styleable.Constraint_layout_constraintBaseline_creator, 87);
        f7754i.append(R$styleable.Constraint_android_layout_marginLeft, 24);
        f7754i.append(R$styleable.Constraint_android_layout_marginRight, 28);
        f7754i.append(R$styleable.Constraint_android_layout_marginStart, 31);
        f7754i.append(R$styleable.Constraint_android_layout_marginEnd, 8);
        f7754i.append(R$styleable.Constraint_android_layout_marginTop, 34);
        f7754i.append(R$styleable.Constraint_android_layout_marginBottom, 2);
        f7754i.append(R$styleable.Constraint_android_layout_width, 23);
        f7754i.append(R$styleable.Constraint_android_layout_height, 21);
        f7754i.append(R$styleable.Constraint_layout_constraintWidth, 95);
        f7754i.append(R$styleable.Constraint_layout_constraintHeight, 96);
        f7754i.append(R$styleable.Constraint_android_visibility, 22);
        f7754i.append(R$styleable.Constraint_android_alpha, 43);
        f7754i.append(R$styleable.Constraint_android_elevation, 44);
        f7754i.append(R$styleable.Constraint_android_rotationX, 45);
        f7754i.append(R$styleable.Constraint_android_rotationY, 46);
        f7754i.append(R$styleable.Constraint_android_rotation, 60);
        f7754i.append(R$styleable.Constraint_android_scaleX, 47);
        f7754i.append(R$styleable.Constraint_android_scaleY, 48);
        f7754i.append(R$styleable.Constraint_android_transformPivotX, 49);
        f7754i.append(R$styleable.Constraint_android_transformPivotY, 50);
        f7754i.append(R$styleable.Constraint_android_translationX, 51);
        f7754i.append(R$styleable.Constraint_android_translationY, 52);
        f7754i.append(R$styleable.Constraint_android_translationZ, 53);
        f7754i.append(R$styleable.Constraint_layout_constraintWidth_default, 54);
        f7754i.append(R$styleable.Constraint_layout_constraintHeight_default, 55);
        f7754i.append(R$styleable.Constraint_layout_constraintWidth_max, 56);
        f7754i.append(R$styleable.Constraint_layout_constraintHeight_max, 57);
        f7754i.append(R$styleable.Constraint_layout_constraintWidth_min, 58);
        f7754i.append(R$styleable.Constraint_layout_constraintHeight_min, 59);
        f7754i.append(R$styleable.Constraint_layout_constraintCircle, 61);
        f7754i.append(R$styleable.Constraint_layout_constraintCircleRadius, 62);
        f7754i.append(R$styleable.Constraint_layout_constraintCircleAngle, 63);
        f7754i.append(R$styleable.Constraint_animateRelativeTo, 64);
        f7754i.append(R$styleable.Constraint_transitionEasing, 65);
        f7754i.append(R$styleable.Constraint_drawPath, 66);
        f7754i.append(R$styleable.Constraint_transitionPathRotate, 67);
        f7754i.append(R$styleable.Constraint_motionStagger, 79);
        f7754i.append(R$styleable.Constraint_android_id, 38);
        f7754i.append(R$styleable.Constraint_motionProgress, 68);
        f7754i.append(R$styleable.Constraint_layout_constraintWidth_percent, 69);
        f7754i.append(R$styleable.Constraint_layout_constraintHeight_percent, 70);
        f7754i.append(R$styleable.Constraint_layout_wrapBehaviorInParent, 97);
        f7754i.append(R$styleable.Constraint_chainUseRtl, 71);
        f7754i.append(R$styleable.Constraint_barrierDirection, 72);
        f7754i.append(R$styleable.Constraint_barrierMargin, 73);
        f7754i.append(R$styleable.Constraint_constraint_referenced_ids, 74);
        f7754i.append(R$styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f7754i.append(R$styleable.Constraint_pathMotionArc, 76);
        f7754i.append(R$styleable.Constraint_layout_constraintTag, 77);
        f7754i.append(R$styleable.Constraint_visibilityMode, 78);
        f7754i.append(R$styleable.Constraint_layout_constrainedWidth, 80);
        f7754i.append(R$styleable.Constraint_layout_constrainedHeight, 81);
        f7754i.append(R$styleable.Constraint_polarRelativeTo, 82);
        f7754i.append(R$styleable.Constraint_transformPivotTarget, 83);
        f7754i.append(R$styleable.Constraint_quantizeMotionSteps, 84);
        f7754i.append(R$styleable.Constraint_quantizeMotionPhase, 85);
        f7754i.append(R$styleable.Constraint_quantizeMotionInterpolator, 86);
        f7755j.append(R$styleable.ConstraintOverride_layout_editor_absoluteY, 6);
        f7755j.append(R$styleable.ConstraintOverride_layout_editor_absoluteY, 7);
        f7755j.append(R$styleable.ConstraintOverride_android_orientation, 27);
        f7755j.append(R$styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        f7755j.append(R$styleable.ConstraintOverride_layout_goneMarginTop, 16);
        f7755j.append(R$styleable.ConstraintOverride_layout_goneMarginRight, 14);
        f7755j.append(R$styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        f7755j.append(R$styleable.ConstraintOverride_layout_goneMarginStart, 15);
        f7755j.append(R$styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        f7755j.append(R$styleable.ConstraintOverride_android_layout_marginLeft, 24);
        f7755j.append(R$styleable.ConstraintOverride_android_layout_marginRight, 28);
        f7755j.append(R$styleable.ConstraintOverride_android_layout_marginStart, 31);
        f7755j.append(R$styleable.ConstraintOverride_android_layout_marginEnd, 8);
        f7755j.append(R$styleable.ConstraintOverride_android_layout_marginTop, 34);
        f7755j.append(R$styleable.ConstraintOverride_android_layout_marginBottom, 2);
        f7755j.append(R$styleable.ConstraintOverride_android_layout_width, 23);
        f7755j.append(R$styleable.ConstraintOverride_android_layout_height, 21);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintWidth, 95);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintHeight, 96);
        f7755j.append(R$styleable.ConstraintOverride_android_visibility, 22);
        f7755j.append(R$styleable.ConstraintOverride_android_alpha, 43);
        f7755j.append(R$styleable.ConstraintOverride_android_elevation, 44);
        f7755j.append(R$styleable.ConstraintOverride_android_rotationX, 45);
        f7755j.append(R$styleable.ConstraintOverride_android_rotationY, 46);
        f7755j.append(R$styleable.ConstraintOverride_android_rotation, 60);
        f7755j.append(R$styleable.ConstraintOverride_android_scaleX, 47);
        f7755j.append(R$styleable.ConstraintOverride_android_scaleY, 48);
        f7755j.append(R$styleable.ConstraintOverride_android_transformPivotX, 49);
        f7755j.append(R$styleable.ConstraintOverride_android_transformPivotY, 50);
        f7755j.append(R$styleable.ConstraintOverride_android_translationX, 51);
        f7755j.append(R$styleable.ConstraintOverride_android_translationY, 52);
        f7755j.append(R$styleable.ConstraintOverride_android_translationZ, 53);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        f7755j.append(R$styleable.ConstraintOverride_animateRelativeTo, 64);
        f7755j.append(R$styleable.ConstraintOverride_transitionEasing, 65);
        f7755j.append(R$styleable.ConstraintOverride_drawPath, 66);
        f7755j.append(R$styleable.ConstraintOverride_transitionPathRotate, 67);
        f7755j.append(R$styleable.ConstraintOverride_motionStagger, 79);
        f7755j.append(R$styleable.ConstraintOverride_android_id, 38);
        f7755j.append(R$styleable.ConstraintOverride_motionTarget, 98);
        f7755j.append(R$styleable.ConstraintOverride_motionProgress, 68);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        f7755j.append(R$styleable.ConstraintOverride_chainUseRtl, 71);
        f7755j.append(R$styleable.ConstraintOverride_barrierDirection, 72);
        f7755j.append(R$styleable.ConstraintOverride_barrierMargin, 73);
        f7755j.append(R$styleable.ConstraintOverride_constraint_referenced_ids, 74);
        f7755j.append(R$styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        f7755j.append(R$styleable.ConstraintOverride_pathMotionArc, 76);
        f7755j.append(R$styleable.ConstraintOverride_layout_constraintTag, 77);
        f7755j.append(R$styleable.ConstraintOverride_visibilityMode, 78);
        f7755j.append(R$styleable.ConstraintOverride_layout_constrainedWidth, 80);
        f7755j.append(R$styleable.ConstraintOverride_layout_constrainedHeight, 81);
        f7755j.append(R$styleable.ConstraintOverride_polarRelativeTo, 82);
        f7755j.append(R$styleable.ConstraintOverride_transformPivotTarget, 83);
        f7755j.append(R$styleable.ConstraintOverride_quantizeMotionSteps, 84);
        f7755j.append(R$styleable.ConstraintOverride_quantizeMotionPhase, 85);
        f7755j.append(R$styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        f7755j.append(R$styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int J(TypedArray typedArray, int i11, int i12) {
        int resourceId = typedArray.getResourceId(i11, i12);
        return resourceId == -1 ? typedArray.getInt(i11, -1) : resourceId;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0033  */
    /* JADX WARN: Code duplicated, block: B:23:0x0037  */
    /* JADX WARN: Code duplicated, block: B:24:0x003c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0045  */
    /* JADX WARN: Code duplicated, block: B:29:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    /* JADX WARN: Code duplicated, block: B:33:0x0057  */
    /* JADX WARN: Code duplicated, block: B:35:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0066  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    static void K(Object obj, TypedArray typedArray, int i11, int i12) {
        int dimensionPixelSize;
        boolean z10;
        a.C0063a c0063a;
        C0064b c0064b;
        ConstraintLayout.b bVar;
        if (obj == null) {
            return;
        }
        int i13 = typedArray.peekValue(i11).type;
        if (i13 == 3) {
            L(obj, typedArray.getString(i11), i12);
            return;
        }
        int i14 = 0;
        if (i13 != 5) {
            dimensionPixelSize = typedArray.getInt(i11, 0);
            if (dimensionPixelSize == -4) {
                z10 = true;
                i14 = -2;
            } else if (dimensionPixelSize == -3 || (dimensionPixelSize != -2 && dimensionPixelSize != -1)) {
                z10 = false;
            }
            if (obj instanceof ConstraintLayout.b) {
                bVar = (ConstraintLayout.b) obj;
                if (i12 == 0) {
                    ((ViewGroup.MarginLayoutParams) bVar).width = i14;
                    bVar.f7663a0 = z10;
                    return;
                } else {
                    ((ViewGroup.MarginLayoutParams) bVar).height = i14;
                    bVar.f7665b0 = z10;
                    return;
                }
            }
            if (obj instanceof C0064b) {
                c0064b = (C0064b) obj;
                if (i12 == 0) {
                    c0064b.f7790d = i14;
                    c0064b.f7811n0 = z10;
                    return;
                } else {
                    c0064b.f7792e = i14;
                    c0064b.f7813o0 = z10;
                    return;
                }
            }
            if (obj instanceof a.C0063a) {
                c0063a = (a.C0063a) obj;
                if (i12 == 0) {
                    c0063a.b(23, i14);
                    c0063a.d(80, z10);
                } else {
                    c0063a.b(21, i14);
                    c0063a.d(81, z10);
                }
            }
        }
        dimensionPixelSize = typedArray.getDimensionPixelSize(i11, 0);
        i14 = dimensionPixelSize;
        z10 = false;
        if (obj instanceof ConstraintLayout.b) {
            bVar = (ConstraintLayout.b) obj;
            if (i12 == 0) {
                ((ViewGroup.MarginLayoutParams) bVar).width = i14;
                bVar.f7663a0 = z10;
                return;
            } else {
                ((ViewGroup.MarginLayoutParams) bVar).height = i14;
                bVar.f7665b0 = z10;
                return;
            }
        }
        if (obj instanceof C0064b) {
            c0064b = (C0064b) obj;
            if (i12 == 0) {
                c0064b.f7790d = i14;
                c0064b.f7811n0 = z10;
                return;
            } else {
                c0064b.f7792e = i14;
                c0064b.f7813o0 = z10;
                return;
            }
        }
        if (obj instanceof a.C0063a) {
            c0063a = (a.C0063a) obj;
            if (i12 == 0) {
                c0063a.b(23, i14);
                c0063a.d(80, z10);
            } else {
                c0063a.b(21, i14);
                c0063a.d(81, z10);
            }
        }
    }

    static void L(Object obj, String str, int i11) {
        if (str == null) {
            return;
        }
        int iIndexOf = str.indexOf(61);
        int length = str.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.b) {
                    ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
                    if (i11 == 0) {
                        ((ViewGroup.MarginLayoutParams) bVar).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                    }
                    M(bVar, strTrim2);
                    return;
                }
                if (obj instanceof C0064b) {
                    ((C0064b) obj).A = strTrim2;
                    return;
                } else {
                    if (obj instanceof a.C0063a) {
                        ((a.C0063a) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f11 = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) obj;
                        if (i11 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar2).width = 0;
                            bVar2.L = f11;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar2).height = 0;
                            bVar2.M = f11;
                        }
                    } else if (obj instanceof C0064b) {
                        C0064b c0064b = (C0064b) obj;
                        if (i11 == 0) {
                            c0064b.f7790d = 0;
                            c0064b.W = f11;
                        } else {
                            c0064b.f7792e = 0;
                            c0064b.V = f11;
                        }
                    } else if (obj instanceof a.C0063a) {
                        a.C0063a c0063a = (a.C0063a) obj;
                        if (i11 == 0) {
                            c0063a.b(23, 0);
                            c0063a.a(39, f11);
                        } else {
                            c0063a.b(21, 0);
                            c0063a.a(40, f11);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(strTrim)) {
                        return;
                    }
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar3 = (ConstraintLayout.b) obj;
                        if (i11 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar3).width = 0;
                            bVar3.V = fMax;
                            bVar3.P = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar3).height = 0;
                            bVar3.W = fMax;
                            bVar3.Q = 2;
                        }
                    } else if (obj instanceof C0064b) {
                        C0064b c0064b2 = (C0064b) obj;
                        if (i11 == 0) {
                            c0064b2.f7790d = 0;
                            c0064b2.f7795f0 = fMax;
                            c0064b2.Z = 2;
                        } else {
                            c0064b2.f7792e = 0;
                            c0064b2.f7797g0 = fMax;
                            c0064b2.f7785a0 = 2;
                        }
                    } else if (obj instanceof a.C0063a) {
                        a.C0063a c0063a2 = (a.C0063a) obj;
                        if (i11 == 0) {
                            c0063a2.b(23, 0);
                            c0063a2.b(54, 2);
                        } else {
                            c0063a2.b(21, 0);
                            c0063a2.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    static void M(ConstraintLayout.b bVar, String str) {
        float fAbs = Float.NaN;
        int i11 = -1;
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i12 = 0;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (strSubstring.equalsIgnoreCase("W")) {
                    i11 = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    i11 = 1;
                }
                i12 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i12);
                    if (strSubstring2.length() > 0) {
                        fAbs = Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i12, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f11 = Float.parseFloat(strSubstring3);
                        float f12 = Float.parseFloat(strSubstring4);
                        if (f11 > 0.0f && f12 > 0.0f) {
                            fAbs = i11 == 1 ? Math.abs(f12 / f11) : Math.abs(f11 / f12);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        bVar.I = str;
        bVar.J = fAbs;
        bVar.K = i11;
    }

    private void N(Context context, a aVar, TypedArray typedArray, boolean z10) {
        if (z10) {
            O(context, aVar, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArray.getIndex(i11);
            if (index != R$styleable.Constraint_android_id && R$styleable.Constraint_android_layout_marginStart != index && R$styleable.Constraint_android_layout_marginEnd != index) {
                aVar.f7766d.f7828a = true;
                aVar.f7767e.f7786b = true;
                aVar.f7765c.f7842a = true;
                aVar.f7768f.f7848a = true;
            }
            switch (f7754i.get(index)) {
                case 1:
                    C0064b c0064b = aVar.f7767e;
                    c0064b.f7818r = J(typedArray, index, c0064b.f7818r);
                    break;
                case 2:
                    C0064b c0064b2 = aVar.f7767e;
                    c0064b2.K = typedArray.getDimensionPixelSize(index, c0064b2.K);
                    break;
                case 3:
                    C0064b c0064b3 = aVar.f7767e;
                    c0064b3.f7816q = J(typedArray, index, c0064b3.f7816q);
                    break;
                case 4:
                    C0064b c0064b4 = aVar.f7767e;
                    c0064b4.f7814p = J(typedArray, index, c0064b4.f7814p);
                    break;
                case 5:
                    aVar.f7767e.A = typedArray.getString(index);
                    break;
                case 6:
                    C0064b c0064b5 = aVar.f7767e;
                    c0064b5.E = typedArray.getDimensionPixelOffset(index, c0064b5.E);
                    break;
                case 7:
                    C0064b c0064b6 = aVar.f7767e;
                    c0064b6.F = typedArray.getDimensionPixelOffset(index, c0064b6.F);
                    break;
                case 8:
                    C0064b c0064b7 = aVar.f7767e;
                    c0064b7.L = typedArray.getDimensionPixelSize(index, c0064b7.L);
                    break;
                case 9:
                    C0064b c0064b8 = aVar.f7767e;
                    c0064b8.f7824x = J(typedArray, index, c0064b8.f7824x);
                    break;
                case 10:
                    C0064b c0064b9 = aVar.f7767e;
                    c0064b9.f7823w = J(typedArray, index, c0064b9.f7823w);
                    break;
                case 11:
                    C0064b c0064b10 = aVar.f7767e;
                    c0064b10.R = typedArray.getDimensionPixelSize(index, c0064b10.R);
                    break;
                case 12:
                    C0064b c0064b11 = aVar.f7767e;
                    c0064b11.S = typedArray.getDimensionPixelSize(index, c0064b11.S);
                    break;
                case 13:
                    C0064b c0064b12 = aVar.f7767e;
                    c0064b12.O = typedArray.getDimensionPixelSize(index, c0064b12.O);
                    break;
                case 14:
                    C0064b c0064b13 = aVar.f7767e;
                    c0064b13.Q = typedArray.getDimensionPixelSize(index, c0064b13.Q);
                    break;
                case 15:
                    C0064b c0064b14 = aVar.f7767e;
                    c0064b14.T = typedArray.getDimensionPixelSize(index, c0064b14.T);
                    break;
                case 16:
                    C0064b c0064b15 = aVar.f7767e;
                    c0064b15.P = typedArray.getDimensionPixelSize(index, c0064b15.P);
                    break;
                case 17:
                    C0064b c0064b16 = aVar.f7767e;
                    c0064b16.f7794f = typedArray.getDimensionPixelOffset(index, c0064b16.f7794f);
                    break;
                case 18:
                    C0064b c0064b17 = aVar.f7767e;
                    c0064b17.f7796g = typedArray.getDimensionPixelOffset(index, c0064b17.f7796g);
                    break;
                case 19:
                    C0064b c0064b18 = aVar.f7767e;
                    c0064b18.f7798h = typedArray.getFloat(index, c0064b18.f7798h);
                    break;
                case 20:
                    C0064b c0064b19 = aVar.f7767e;
                    c0064b19.f7825y = typedArray.getFloat(index, c0064b19.f7825y);
                    break;
                case 21:
                    C0064b c0064b20 = aVar.f7767e;
                    c0064b20.f7792e = typedArray.getLayoutDimension(index, c0064b20.f7792e);
                    break;
                case 22:
                    d dVar = aVar.f7765c;
                    dVar.f7843b = typedArray.getInt(index, dVar.f7843b);
                    d dVar2 = aVar.f7765c;
                    dVar2.f7843b = f7753h[dVar2.f7843b];
                    break;
                case 23:
                    C0064b c0064b21 = aVar.f7767e;
                    c0064b21.f7790d = typedArray.getLayoutDimension(index, c0064b21.f7790d);
                    break;
                case 24:
                    C0064b c0064b22 = aVar.f7767e;
                    c0064b22.H = typedArray.getDimensionPixelSize(index, c0064b22.H);
                    break;
                case 25:
                    C0064b c0064b23 = aVar.f7767e;
                    c0064b23.f7802j = J(typedArray, index, c0064b23.f7802j);
                    break;
                case 26:
                    C0064b c0064b24 = aVar.f7767e;
                    c0064b24.f7804k = J(typedArray, index, c0064b24.f7804k);
                    break;
                case 27:
                    C0064b c0064b25 = aVar.f7767e;
                    c0064b25.G = typedArray.getInt(index, c0064b25.G);
                    break;
                case 28:
                    C0064b c0064b26 = aVar.f7767e;
                    c0064b26.I = typedArray.getDimensionPixelSize(index, c0064b26.I);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    C0064b c0064b27 = aVar.f7767e;
                    c0064b27.f7806l = J(typedArray, index, c0064b27.f7806l);
                    break;
                case 30:
                    C0064b c0064b28 = aVar.f7767e;
                    c0064b28.f7808m = J(typedArray, index, c0064b28.f7808m);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    C0064b c0064b29 = aVar.f7767e;
                    c0064b29.M = typedArray.getDimensionPixelSize(index, c0064b29.M);
                    break;
                case 32:
                    C0064b c0064b30 = aVar.f7767e;
                    c0064b30.f7821u = J(typedArray, index, c0064b30.f7821u);
                    break;
                case 33:
                    C0064b c0064b31 = aVar.f7767e;
                    c0064b31.f7822v = J(typedArray, index, c0064b31.f7822v);
                    break;
                case 34:
                    C0064b c0064b32 = aVar.f7767e;
                    c0064b32.J = typedArray.getDimensionPixelSize(index, c0064b32.J);
                    break;
                case 35:
                    C0064b c0064b33 = aVar.f7767e;
                    c0064b33.f7812o = J(typedArray, index, c0064b33.f7812o);
                    break;
                case 36:
                    C0064b c0064b34 = aVar.f7767e;
                    c0064b34.f7810n = J(typedArray, index, c0064b34.f7810n);
                    break;
                case 37:
                    C0064b c0064b35 = aVar.f7767e;
                    c0064b35.f7826z = typedArray.getFloat(index, c0064b35.f7826z);
                    break;
                case 38:
                    aVar.f7763a = typedArray.getResourceId(index, aVar.f7763a);
                    break;
                case 39:
                    C0064b c0064b36 = aVar.f7767e;
                    c0064b36.W = typedArray.getFloat(index, c0064b36.W);
                    break;
                case 40:
                    C0064b c0064b37 = aVar.f7767e;
                    c0064b37.V = typedArray.getFloat(index, c0064b37.V);
                    break;
                case 41:
                    C0064b c0064b38 = aVar.f7767e;
                    c0064b38.X = typedArray.getInt(index, c0064b38.X);
                    break;
                case 42:
                    C0064b c0064b39 = aVar.f7767e;
                    c0064b39.Y = typedArray.getInt(index, c0064b39.Y);
                    break;
                case 43:
                    d dVar3 = aVar.f7765c;
                    dVar3.f7845d = typedArray.getFloat(index, dVar3.f7845d);
                    break;
                case 44:
                    e eVar = aVar.f7768f;
                    eVar.f7860m = true;
                    eVar.f7861n = typedArray.getDimension(index, eVar.f7861n);
                    break;
                case 45:
                    e eVar2 = aVar.f7768f;
                    eVar2.f7850c = typedArray.getFloat(index, eVar2.f7850c);
                    break;
                case 46:
                    e eVar3 = aVar.f7768f;
                    eVar3.f7851d = typedArray.getFloat(index, eVar3.f7851d);
                    break;
                case 47:
                    e eVar4 = aVar.f7768f;
                    eVar4.f7852e = typedArray.getFloat(index, eVar4.f7852e);
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    e eVar5 = aVar.f7768f;
                    eVar5.f7853f = typedArray.getFloat(index, eVar5.f7853f);
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    e eVar6 = aVar.f7768f;
                    eVar6.f7854g = typedArray.getDimension(index, eVar6.f7854g);
                    break;
                case 50:
                    e eVar7 = aVar.f7768f;
                    eVar7.f7855h = typedArray.getDimension(index, eVar7.f7855h);
                    break;
                case AD_REWARD_USER_VALUE:
                    e eVar8 = aVar.f7768f;
                    eVar8.f7857j = typedArray.getDimension(index, eVar8.f7857j);
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    e eVar9 = aVar.f7768f;
                    eVar9.f7858k = typedArray.getDimension(index, eVar9.f7858k);
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    e eVar10 = aVar.f7768f;
                    eVar10.f7859l = typedArray.getDimension(index, eVar10.f7859l);
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    C0064b c0064b40 = aVar.f7767e;
                    c0064b40.Z = typedArray.getInt(index, c0064b40.Z);
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    C0064b c0064b41 = aVar.f7767e;
                    c0064b41.f7785a0 = typedArray.getInt(index, c0064b41.f7785a0);
                    break;
                case AD_VISIBILITY_VALUE:
                    C0064b c0064b42 = aVar.f7767e;
                    c0064b42.f7787b0 = typedArray.getDimensionPixelSize(index, c0064b42.f7787b0);
                    break;
                case 57:
                    C0064b c0064b43 = aVar.f7767e;
                    c0064b43.f7789c0 = typedArray.getDimensionPixelSize(index, c0064b43.f7789c0);
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    C0064b c0064b44 = aVar.f7767e;
                    c0064b44.f7791d0 = typedArray.getDimensionPixelSize(index, c0064b44.f7791d0);
                    break;
                case 59:
                    C0064b c0064b45 = aVar.f7767e;
                    c0064b45.f7793e0 = typedArray.getDimensionPixelSize(index, c0064b45.f7793e0);
                    break;
                case 60:
                    e eVar11 = aVar.f7768f;
                    eVar11.f7849b = typedArray.getFloat(index, eVar11.f7849b);
                    break;
                case 61:
                    C0064b c0064b46 = aVar.f7767e;
                    c0064b46.B = J(typedArray, index, c0064b46.B);
                    break;
                case 62:
                    C0064b c0064b47 = aVar.f7767e;
                    c0064b47.C = typedArray.getDimensionPixelSize(index, c0064b47.C);
                    break;
                case 63:
                    C0064b c0064b48 = aVar.f7767e;
                    c0064b48.D = typedArray.getFloat(index, c0064b48.D);
                    break;
                case 64:
                    c cVar = aVar.f7766d;
                    cVar.f7829b = J(typedArray, index, cVar.f7829b);
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f7766d.f7831d = typedArray.getString(index);
                    } else {
                        aVar.f7766d.f7831d = androidx.constraintlayout.core.motion.utils.c.f6768c[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    aVar.f7766d.f7833f = typedArray.getInt(index, 0);
                    break;
                case 67:
                    c cVar2 = aVar.f7766d;
                    cVar2.f7836i = typedArray.getFloat(index, cVar2.f7836i);
                    break;
                case 68:
                    d dVar4 = aVar.f7765c;
                    dVar4.f7846e = typedArray.getFloat(index, dVar4.f7846e);
                    break;
                case 69:
                    aVar.f7767e.f7795f0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f7767e.f7797g0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    C0064b c0064b49 = aVar.f7767e;
                    c0064b49.f7799h0 = typedArray.getInt(index, c0064b49.f7799h0);
                    break;
                case 73:
                    C0064b c0064b50 = aVar.f7767e;
                    c0064b50.f7801i0 = typedArray.getDimensionPixelSize(index, c0064b50.f7801i0);
                    break;
                case 74:
                    aVar.f7767e.f7807l0 = typedArray.getString(index);
                    break;
                case 75:
                    C0064b c0064b51 = aVar.f7767e;
                    c0064b51.f7815p0 = typedArray.getBoolean(index, c0064b51.f7815p0);
                    break;
                case 76:
                    c cVar3 = aVar.f7766d;
                    cVar3.f7832e = typedArray.getInt(index, cVar3.f7832e);
                    break;
                case 77:
                    aVar.f7767e.f7809m0 = typedArray.getString(index);
                    break;
                case 78:
                    d dVar5 = aVar.f7765c;
                    dVar5.f7844c = typedArray.getInt(index, dVar5.f7844c);
                    break;
                case 79:
                    c cVar4 = aVar.f7766d;
                    cVar4.f7834g = typedArray.getFloat(index, cVar4.f7834g);
                    break;
                case 80:
                    C0064b c0064b52 = aVar.f7767e;
                    c0064b52.f7811n0 = typedArray.getBoolean(index, c0064b52.f7811n0);
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                    C0064b c0064b53 = aVar.f7767e;
                    c0064b53.f7813o0 = typedArray.getBoolean(index, c0064b53.f7813o0);
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                    c cVar5 = aVar.f7766d;
                    cVar5.f7830c = typedArray.getInteger(index, cVar5.f7830c);
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                    e eVar12 = aVar.f7768f;
                    eVar12.f7856i = J(typedArray, index, eVar12.f7856i);
                    break;
                case 84:
                    c cVar6 = aVar.f7766d;
                    cVar6.f7838k = typedArray.getInteger(index, cVar6.f7838k);
                    break;
                case 85:
                    c cVar7 = aVar.f7766d;
                    cVar7.f7837j = typedArray.getFloat(index, cVar7.f7837j);
                    break;
                case 86:
                    int i12 = typedArray.peekValue(index).type;
                    if (i12 == 1) {
                        aVar.f7766d.f7841n = typedArray.getResourceId(index, -1);
                        c cVar8 = aVar.f7766d;
                        if (cVar8.f7841n != -1) {
                            cVar8.f7840m = -2;
                        }
                    } else if (i12 == 3) {
                        aVar.f7766d.f7839l = typedArray.getString(index);
                        if (aVar.f7766d.f7839l.indexOf("/") > 0) {
                            aVar.f7766d.f7841n = typedArray.getResourceId(index, -1);
                            aVar.f7766d.f7840m = -2;
                        } else {
                            aVar.f7766d.f7840m = -1;
                        }
                    } else {
                        c cVar9 = aVar.f7766d;
                        cVar9.f7840m = typedArray.getInteger(index, cVar9.f7841n);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7754i.get(index));
                    break;
                case 88:
                case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f7754i.get(index));
                    break;
                case 91:
                    C0064b c0064b54 = aVar.f7767e;
                    c0064b54.f7819s = J(typedArray, index, c0064b54.f7819s);
                    break;
                case 92:
                    C0064b c0064b55 = aVar.f7767e;
                    c0064b55.f7820t = J(typedArray, index, c0064b55.f7820t);
                    break;
                case 93:
                    C0064b c0064b56 = aVar.f7767e;
                    c0064b56.N = typedArray.getDimensionPixelSize(index, c0064b56.N);
                    break;
                case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                    C0064b c0064b57 = aVar.f7767e;
                    c0064b57.U = typedArray.getDimensionPixelSize(index, c0064b57.U);
                    break;
                case 95:
                    K(aVar.f7767e, typedArray, index, 0);
                    break;
                case 96:
                    K(aVar.f7767e, typedArray, index, 1);
                    break;
                case 97:
                    C0064b c0064b58 = aVar.f7767e;
                    c0064b58.f7817q0 = typedArray.getInt(index, c0064b58.f7817q0);
                    break;
            }
        }
        C0064b c0064b59 = aVar.f7767e;
        if (c0064b59.f7807l0 != null) {
            c0064b59.f7805k0 = null;
        }
    }

    private static void O(Context context, a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        a.C0063a c0063a = new a.C0063a();
        aVar.f7770h = c0063a;
        aVar.f7766d.f7828a = false;
        aVar.f7767e.f7786b = false;
        aVar.f7765c.f7842a = false;
        aVar.f7768f.f7848a = false;
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArray.getIndex(i11);
            switch (f7755j.get(index)) {
                case 2:
                    c0063a.b(2, typedArray.getDimensionPixelSize(index, aVar.f7767e.K));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                case 91:
                case 92:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f7754i.get(index));
                    break;
                case 5:
                    c0063a.c(5, typedArray.getString(index));
                    break;
                case 6:
                    c0063a.b(6, typedArray.getDimensionPixelOffset(index, aVar.f7767e.E));
                    break;
                case 7:
                    c0063a.b(7, typedArray.getDimensionPixelOffset(index, aVar.f7767e.F));
                    break;
                case 8:
                    c0063a.b(8, typedArray.getDimensionPixelSize(index, aVar.f7767e.L));
                    break;
                case 11:
                    c0063a.b(11, typedArray.getDimensionPixelSize(index, aVar.f7767e.R));
                    break;
                case 12:
                    c0063a.b(12, typedArray.getDimensionPixelSize(index, aVar.f7767e.S));
                    break;
                case 13:
                    c0063a.b(13, typedArray.getDimensionPixelSize(index, aVar.f7767e.O));
                    break;
                case 14:
                    c0063a.b(14, typedArray.getDimensionPixelSize(index, aVar.f7767e.Q));
                    break;
                case 15:
                    c0063a.b(15, typedArray.getDimensionPixelSize(index, aVar.f7767e.T));
                    break;
                case 16:
                    c0063a.b(16, typedArray.getDimensionPixelSize(index, aVar.f7767e.P));
                    break;
                case 17:
                    c0063a.b(17, typedArray.getDimensionPixelOffset(index, aVar.f7767e.f7794f));
                    break;
                case 18:
                    c0063a.b(18, typedArray.getDimensionPixelOffset(index, aVar.f7767e.f7796g));
                    break;
                case 19:
                    c0063a.a(19, typedArray.getFloat(index, aVar.f7767e.f7798h));
                    break;
                case 20:
                    c0063a.a(20, typedArray.getFloat(index, aVar.f7767e.f7825y));
                    break;
                case 21:
                    c0063a.b(21, typedArray.getLayoutDimension(index, aVar.f7767e.f7792e));
                    break;
                case 22:
                    c0063a.b(22, f7753h[typedArray.getInt(index, aVar.f7765c.f7843b)]);
                    break;
                case 23:
                    c0063a.b(23, typedArray.getLayoutDimension(index, aVar.f7767e.f7790d));
                    break;
                case 24:
                    c0063a.b(24, typedArray.getDimensionPixelSize(index, aVar.f7767e.H));
                    break;
                case 27:
                    c0063a.b(27, typedArray.getInt(index, aVar.f7767e.G));
                    break;
                case 28:
                    c0063a.b(28, typedArray.getDimensionPixelSize(index, aVar.f7767e.I));
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    c0063a.b(31, typedArray.getDimensionPixelSize(index, aVar.f7767e.M));
                    break;
                case 34:
                    c0063a.b(34, typedArray.getDimensionPixelSize(index, aVar.f7767e.J));
                    break;
                case 37:
                    c0063a.a(37, typedArray.getFloat(index, aVar.f7767e.f7826z));
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, aVar.f7763a);
                    aVar.f7763a = resourceId;
                    c0063a.b(38, resourceId);
                    break;
                case 39:
                    c0063a.a(39, typedArray.getFloat(index, aVar.f7767e.W));
                    break;
                case 40:
                    c0063a.a(40, typedArray.getFloat(index, aVar.f7767e.V));
                    break;
                case 41:
                    c0063a.b(41, typedArray.getInt(index, aVar.f7767e.X));
                    break;
                case 42:
                    c0063a.b(42, typedArray.getInt(index, aVar.f7767e.Y));
                    break;
                case 43:
                    c0063a.a(43, typedArray.getFloat(index, aVar.f7765c.f7845d));
                    break;
                case 44:
                    c0063a.d(44, true);
                    c0063a.a(44, typedArray.getDimension(index, aVar.f7768f.f7861n));
                    break;
                case 45:
                    c0063a.a(45, typedArray.getFloat(index, aVar.f7768f.f7850c));
                    break;
                case 46:
                    c0063a.a(46, typedArray.getFloat(index, aVar.f7768f.f7851d));
                    break;
                case 47:
                    c0063a.a(47, typedArray.getFloat(index, aVar.f7768f.f7852e));
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    c0063a.a(48, typedArray.getFloat(index, aVar.f7768f.f7853f));
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    c0063a.a(49, typedArray.getDimension(index, aVar.f7768f.f7854g));
                    break;
                case 50:
                    c0063a.a(50, typedArray.getDimension(index, aVar.f7768f.f7855h));
                    break;
                case AD_REWARD_USER_VALUE:
                    c0063a.a(51, typedArray.getDimension(index, aVar.f7768f.f7857j));
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    c0063a.a(52, typedArray.getDimension(index, aVar.f7768f.f7858k));
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    c0063a.a(53, typedArray.getDimension(index, aVar.f7768f.f7859l));
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    c0063a.b(54, typedArray.getInt(index, aVar.f7767e.Z));
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    c0063a.b(55, typedArray.getInt(index, aVar.f7767e.f7785a0));
                    break;
                case AD_VISIBILITY_VALUE:
                    c0063a.b(56, typedArray.getDimensionPixelSize(index, aVar.f7767e.f7787b0));
                    break;
                case 57:
                    c0063a.b(57, typedArray.getDimensionPixelSize(index, aVar.f7767e.f7789c0));
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    c0063a.b(58, typedArray.getDimensionPixelSize(index, aVar.f7767e.f7791d0));
                    break;
                case 59:
                    c0063a.b(59, typedArray.getDimensionPixelSize(index, aVar.f7767e.f7793e0));
                    break;
                case 60:
                    c0063a.a(60, typedArray.getFloat(index, aVar.f7768f.f7849b));
                    break;
                case 62:
                    c0063a.b(62, typedArray.getDimensionPixelSize(index, aVar.f7767e.C));
                    break;
                case 63:
                    c0063a.a(63, typedArray.getFloat(index, aVar.f7767e.D));
                    break;
                case 64:
                    c0063a.b(64, J(typedArray, index, aVar.f7766d.f7829b));
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (typedArray.peekValue(index).type == 3) {
                        c0063a.c(65, typedArray.getString(index));
                    } else {
                        c0063a.c(65, androidx.constraintlayout.core.motion.utils.c.f6768c[typedArray.getInteger(index, 0)]);
                    }
                    break;
                case 66:
                    c0063a.b(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    c0063a.a(67, typedArray.getFloat(index, aVar.f7766d.f7836i));
                    break;
                case 68:
                    c0063a.a(68, typedArray.getFloat(index, aVar.f7765c.f7846e));
                    break;
                case 69:
                    c0063a.a(69, typedArray.getFloat(index, 1.0f));
                    break;
                case 70:
                    c0063a.a(70, typedArray.getFloat(index, 1.0f));
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    c0063a.b(72, typedArray.getInt(index, aVar.f7767e.f7799h0));
                    break;
                case 73:
                    c0063a.b(73, typedArray.getDimensionPixelSize(index, aVar.f7767e.f7801i0));
                    break;
                case 74:
                    c0063a.c(74, typedArray.getString(index));
                    break;
                case 75:
                    c0063a.d(75, typedArray.getBoolean(index, aVar.f7767e.f7815p0));
                    break;
                case 76:
                    c0063a.b(76, typedArray.getInt(index, aVar.f7766d.f7832e));
                    break;
                case 77:
                    c0063a.c(77, typedArray.getString(index));
                    break;
                case 78:
                    c0063a.b(78, typedArray.getInt(index, aVar.f7765c.f7844c));
                    break;
                case 79:
                    c0063a.a(79, typedArray.getFloat(index, aVar.f7766d.f7834g));
                    break;
                case 80:
                    c0063a.d(80, typedArray.getBoolean(index, aVar.f7767e.f7811n0));
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                    c0063a.d(81, typedArray.getBoolean(index, aVar.f7767e.f7813o0));
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                    c0063a.b(82, typedArray.getInteger(index, aVar.f7766d.f7830c));
                    break;
                case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                    c0063a.b(83, J(typedArray, index, aVar.f7768f.f7856i));
                    break;
                case 84:
                    c0063a.b(84, typedArray.getInteger(index, aVar.f7766d.f7838k));
                    break;
                case 85:
                    c0063a.a(85, typedArray.getFloat(index, aVar.f7766d.f7837j));
                    break;
                case 86:
                    int i12 = typedArray.peekValue(index).type;
                    if (i12 == 1) {
                        aVar.f7766d.f7841n = typedArray.getResourceId(index, -1);
                        c0063a.b(89, aVar.f7766d.f7841n);
                        c cVar = aVar.f7766d;
                        if (cVar.f7841n != -1) {
                            cVar.f7840m = -2;
                            c0063a.b(88, -2);
                        }
                    } else if (i12 == 3) {
                        aVar.f7766d.f7839l = typedArray.getString(index);
                        c0063a.c(90, aVar.f7766d.f7839l);
                        if (aVar.f7766d.f7839l.indexOf("/") > 0) {
                            aVar.f7766d.f7841n = typedArray.getResourceId(index, -1);
                            c0063a.b(89, aVar.f7766d.f7841n);
                            aVar.f7766d.f7840m = -2;
                            c0063a.b(88, -2);
                        } else {
                            aVar.f7766d.f7840m = -1;
                            c0063a.b(88, -1);
                        }
                    } else {
                        c cVar2 = aVar.f7766d;
                        cVar2.f7840m = typedArray.getInteger(index, cVar2.f7841n);
                        c0063a.b(88, aVar.f7766d.f7840m);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7754i.get(index));
                    break;
                case 93:
                    c0063a.b(93, typedArray.getDimensionPixelSize(index, aVar.f7767e.N));
                    break;
                case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                    c0063a.b(94, typedArray.getDimensionPixelSize(index, aVar.f7767e.U));
                    break;
                case 95:
                    K(c0063a, typedArray, index, 0);
                    break;
                case 96:
                    K(c0063a, typedArray, index, 1);
                    break;
                case 97:
                    c0063a.b(97, typedArray.getInt(index, aVar.f7767e.f7817q0));
                    break;
                case 98:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        int resourceId2 = typedArray.getResourceId(index, aVar.f7763a);
                        aVar.f7763a = resourceId2;
                        if (resourceId2 == -1) {
                            aVar.f7764b = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        aVar.f7764b = typedArray.getString(index);
                    } else {
                        aVar.f7763a = typedArray.getResourceId(index, aVar.f7763a);
                    }
                    break;
                case 99:
                    c0063a.d(99, typedArray.getBoolean(index, aVar.f7767e.f7800i));
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R(a aVar, int i11, float f11) {
        if (i11 == 19) {
            aVar.f7767e.f7798h = f11;
        }
        if (i11 == 20) {
            aVar.f7767e.f7825y = f11;
            return;
        }
        if (i11 == 37) {
            aVar.f7767e.f7826z = f11;
            return;
        }
        if (i11 == 60) {
            aVar.f7768f.f7849b = f11;
            return;
        }
        if (i11 == 63) {
            aVar.f7767e.D = f11;
            return;
        }
        if (i11 == 79) {
            aVar.f7766d.f7834g = f11;
            return;
        }
        if (i11 == 85) {
            aVar.f7766d.f7837j = f11;
            return;
        }
        if (i11 != 87) {
            if (i11 == 39) {
                aVar.f7767e.W = f11;
                return;
            }
            if (i11 == 40) {
                aVar.f7767e.V = f11;
                return;
            }
            switch (i11) {
                case 43:
                    aVar.f7765c.f7845d = f11;
                    break;
                case 44:
                    e eVar = aVar.f7768f;
                    eVar.f7861n = f11;
                    eVar.f7860m = true;
                    break;
                case 45:
                    aVar.f7768f.f7850c = f11;
                    break;
                case 46:
                    aVar.f7768f.f7851d = f11;
                    break;
                case 47:
                    aVar.f7768f.f7852e = f11;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    aVar.f7768f.f7853f = f11;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    aVar.f7768f.f7854g = f11;
                    break;
                case 50:
                    aVar.f7768f.f7855h = f11;
                    break;
                case AD_REWARD_USER_VALUE:
                    aVar.f7768f.f7857j = f11;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    aVar.f7768f.f7858k = f11;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    aVar.f7768f.f7859l = f11;
                    break;
                default:
                    switch (i11) {
                        case 67:
                            aVar.f7766d.f7836i = f11;
                            break;
                        case 68:
                            aVar.f7765c.f7846e = f11;
                            break;
                        case 69:
                            aVar.f7767e.f7795f0 = f11;
                            break;
                        case 70:
                            aVar.f7767e.f7797g0 = f11;
                            break;
                        default:
                            Log.w("ConstraintSet", "Unknown attribute 0x");
                            break;
                    }
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void S(a aVar, int i11, int i12) {
        if (i11 == 6) {
            aVar.f7767e.E = i12;
        }
        if (i11 == 7) {
            aVar.f7767e.F = i12;
            return;
        }
        if (i11 == 8) {
            aVar.f7767e.L = i12;
            return;
        }
        if (i11 == 27) {
            aVar.f7767e.G = i12;
            return;
        }
        if (i11 == 28) {
            aVar.f7767e.I = i12;
            return;
        }
        if (i11 == 41) {
            aVar.f7767e.X = i12;
            return;
        }
        if (i11 == 42) {
            aVar.f7767e.Y = i12;
            return;
        }
        if (i11 == 61) {
            aVar.f7767e.B = i12;
            return;
        }
        if (i11 == 62) {
            aVar.f7767e.C = i12;
            return;
        }
        if (i11 == 72) {
            aVar.f7767e.f7799h0 = i12;
            return;
        }
        if (i11 == 73) {
            aVar.f7767e.f7801i0 = i12;
            return;
        }
        switch (i11) {
            case 2:
                aVar.f7767e.K = i12;
                break;
            case 11:
                aVar.f7767e.R = i12;
                break;
            case 12:
                aVar.f7767e.S = i12;
                break;
            case 13:
                aVar.f7767e.O = i12;
                break;
            case 14:
                aVar.f7767e.Q = i12;
                break;
            case 15:
                aVar.f7767e.T = i12;
                break;
            case 16:
                aVar.f7767e.P = i12;
                break;
            case 17:
                aVar.f7767e.f7794f = i12;
                break;
            case 18:
                aVar.f7767e.f7796g = i12;
                break;
            case TEMPLATE_HTML_SIZE_VALUE:
                aVar.f7767e.M = i12;
                break;
            case 34:
                aVar.f7767e.J = i12;
                break;
            case 38:
                aVar.f7763a = i12;
                break;
            case 64:
                aVar.f7766d.f7829b = i12;
                break;
            case 66:
                aVar.f7766d.f7833f = i12;
                break;
            case 76:
                aVar.f7766d.f7832e = i12;
                break;
            case 78:
                aVar.f7765c.f7844c = i12;
                break;
            case 93:
                aVar.f7767e.N = i12;
                break;
            case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                aVar.f7767e.U = i12;
                break;
            case 97:
                aVar.f7767e.f7817q0 = i12;
                break;
            default:
                switch (i11) {
                    case 21:
                        aVar.f7767e.f7792e = i12;
                        break;
                    case 22:
                        aVar.f7765c.f7843b = i12;
                        break;
                    case 23:
                        aVar.f7767e.f7790d = i12;
                        break;
                    case 24:
                        aVar.f7767e.H = i12;
                        break;
                    default:
                        switch (i11) {
                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                aVar.f7767e.Z = i12;
                                break;
                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                aVar.f7767e.f7785a0 = i12;
                                break;
                            case AD_VISIBILITY_VALUE:
                                aVar.f7767e.f7787b0 = i12;
                                break;
                            case 57:
                                aVar.f7767e.f7789c0 = i12;
                                break;
                            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                aVar.f7767e.f7791d0 = i12;
                                break;
                            case 59:
                                aVar.f7767e.f7793e0 = i12;
                                break;
                            default:
                                switch (i11) {
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                                        aVar.f7766d.f7830c = i12;
                                        break;
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                                        aVar.f7768f.f7856i = i12;
                                        break;
                                    case 84:
                                        aVar.f7766d.f7838k = i12;
                                        break;
                                    default:
                                        switch (i11) {
                                            case 87:
                                                break;
                                            case 88:
                                                aVar.f7766d.f7840m = i12;
                                                break;
                                            case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                                                aVar.f7766d.f7841n = i12;
                                                break;
                                            default:
                                                Log.w("ConstraintSet", "Unknown attribute 0x");
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void T(a aVar, int i11, String str) {
        if (i11 == 5) {
            aVar.f7767e.A = str;
            return;
        }
        if (i11 == 65) {
            aVar.f7766d.f7831d = str;
            return;
        }
        if (i11 == 74) {
            C0064b c0064b = aVar.f7767e;
            c0064b.f7807l0 = str;
            c0064b.f7805k0 = null;
        } else if (i11 == 77) {
            aVar.f7767e.f7809m0 = str;
        } else if (i11 != 87) {
            if (i11 != 90) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                aVar.f7766d.f7839l = str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void U(a aVar, int i11, boolean z10) {
        if (i11 == 44) {
            aVar.f7768f.f7860m = z10;
            return;
        }
        if (i11 == 75) {
            aVar.f7767e.f7815p0 = z10;
            return;
        }
        if (i11 != 87) {
            if (i11 == 80) {
                aVar.f7767e.f7811n0 = z10;
            } else if (i11 != 81) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                aVar.f7767e.f7813o0 = z10;
            }
        }
    }

    private String a0(int i11) {
        switch (i11) {
            case 1:
                return TtmlNode.LEFT;
            case 2:
                return TtmlNode.RIGHT;
            case 3:
                return IntegrationConstants.TAB_BAR_POSITION_TOP;
            case 4:
                return IntegrationConstants.TAB_BAR_POSITION_DEFAULT;
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return TtmlNode.END;
            default:
                return "undefined";
        }
    }

    public static a m(Context context, XmlPullParser xmlPullParser) {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R$styleable.ConstraintOverride);
        O(context, aVar, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private int[] x(View view, String str) {
        int iIntValue;
        Object designInformation;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i11 = 0;
        int i12 = 0;
        while (i11 < strArrSplit.length) {
            String strTrim = strArrSplit[i11].trim();
            try {
                iIntValue = R$id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
                iIntValue = ((Integer) designInformation).intValue();
            }
            iArr[i12] = iIntValue;
            i11++;
            i12++;
        }
        return i12 != strArrSplit.length ? Arrays.copyOf(iArr, i12) : iArr;
    }

    private a y(Context context, AttributeSet attributeSet, boolean z10) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z10 ? R$styleable.ConstraintOverride : R$styleable.Constraint);
        N(context, aVar, typedArrayObtainStyledAttributes, z10);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private a z(int i11) {
        if (!this.f7762g.containsKey(Integer.valueOf(i11))) {
            this.f7762g.put(Integer.valueOf(i11), new a());
        }
        return (a) this.f7762g.get(Integer.valueOf(i11));
    }

    public a A(int i11) {
        if (this.f7762g.containsKey(Integer.valueOf(i11))) {
            return (a) this.f7762g.get(Integer.valueOf(i11));
        }
        return null;
    }

    public int B(int i11) {
        return z(i11).f7767e.f7792e;
    }

    public int[] C() {
        Integer[] numArr = (Integer[]) this.f7762g.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = numArr[i11].intValue();
        }
        return iArr;
    }

    public a D(int i11) {
        return z(i11);
    }

    public int E(int i11) {
        return z(i11).f7765c.f7843b;
    }

    public int F(int i11) {
        return z(i11).f7765c.f7844c;
    }

    public int G(int i11) {
        return z(i11).f7767e.f7790d;
    }

    public void H(Context context, int i11) {
        XmlResourceParser xml = context.getResources().getXml(i11);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a aVarY = y(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarY.f7767e.f7784a = true;
                    }
                    this.f7762g.put(Integer.valueOf(aVarY.f7763a), aVarY);
                }
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        } catch (XmlPullParserException e12) {
            e12.printStackTrace();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void I(Context context, XmlPullParser xmlPullParser) {
        try {
            int eventType = xmlPullParser.getEventType();
            a aVarY = null;
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else if (eventType == 2) {
                    switch (xmlPullParser.getName()) {
                        case "Constraint":
                            aVarY = y(context, Xml.asAttributeSet(xmlPullParser), false);
                            break;
                        case "ConstraintOverride":
                            aVarY = y(context, Xml.asAttributeSet(xmlPullParser), true);
                            break;
                        case "Guideline":
                            aVarY = y(context, Xml.asAttributeSet(xmlPullParser), false);
                            C0064b c0064b = aVarY.f7767e;
                            c0064b.f7784a = true;
                            c0064b.f7786b = true;
                            break;
                        case "Barrier":
                            aVarY = y(context, Xml.asAttributeSet(xmlPullParser), false);
                            aVarY.f7767e.f7803j0 = 1;
                            break;
                        case "PropertySet":
                            if (aVarY == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVarY.f7765c.b(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                            break;
                        case "Transform":
                            if (aVarY == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVarY.f7768f.b(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                            break;
                        case "Layout":
                            if (aVarY == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVarY.f7767e.b(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                            break;
                        case "Motion":
                            if (aVarY == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            aVarY.f7766d.b(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                            break;
                        case "CustomAttribute":
                        case "CustomMethod":
                            if (aVarY == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            ConstraintAttribute.i(context, xmlPullParser, aVarY.f7769g);
                            break;
                            break;
                    }
                } else if (eventType == 3) {
                    String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                    switch (lowerCase.hashCode()) {
                        case -2075718416:
                            if (lowerCase.equals("guideline")) {
                            }
                            break;
                        case -190376483:
                            if (lowerCase.equals("constraint")) {
                            }
                            break;
                        case 426575017:
                            if (lowerCase.equals("constraintoverride")) {
                            }
                            break;
                        case 2146106725:
                            if (lowerCase.equals("constraintset")) {
                            }
                            break;
                    }
                    if (r4 == 0) {
                        return;
                    }
                    if (r4 == 1 || r4 == 2 || r4 == 3) {
                        this.f7762g.put(Integer.valueOf(aVarY.f7763a), aVarY);
                        aVarY = null;
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        } catch (XmlPullParserException e12) {
            e12.printStackTrace();
        }
    }

    public void P(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = constraintLayout.getChildAt(i11);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f7761f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f7762g.containsKey(Integer.valueOf(id2))) {
                this.f7762g.put(Integer.valueOf(id2), new a());
            }
            a aVar = (a) this.f7762g.get(Integer.valueOf(id2));
            if (aVar != null) {
                if (!aVar.f7767e.f7786b) {
                    aVar.g(id2, bVar);
                    if (childAt instanceof ConstraintHelper) {
                        aVar.f7767e.f7805k0 = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            aVar.f7767e.f7815p0 = barrier.getAllowsGoneWidget();
                            aVar.f7767e.f7799h0 = barrier.getType();
                            aVar.f7767e.f7801i0 = barrier.getMargin();
                        }
                    }
                    aVar.f7767e.f7786b = true;
                }
                d dVar = aVar.f7765c;
                if (!dVar.f7842a) {
                    dVar.f7843b = childAt.getVisibility();
                    aVar.f7765c.f7845d = childAt.getAlpha();
                    aVar.f7765c.f7842a = true;
                }
                e eVar = aVar.f7768f;
                if (!eVar.f7848a) {
                    eVar.f7848a = true;
                    eVar.f7849b = childAt.getRotation();
                    aVar.f7768f.f7850c = childAt.getRotationX();
                    aVar.f7768f.f7851d = childAt.getRotationY();
                    aVar.f7768f.f7852e = childAt.getScaleX();
                    aVar.f7768f.f7853f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        e eVar2 = aVar.f7768f;
                        eVar2.f7854g = pivotX;
                        eVar2.f7855h = pivotY;
                    }
                    aVar.f7768f.f7857j = childAt.getTranslationX();
                    aVar.f7768f.f7858k = childAt.getTranslationY();
                    aVar.f7768f.f7859l = childAt.getTranslationZ();
                    e eVar3 = aVar.f7768f;
                    if (eVar3.f7860m) {
                        eVar3.f7861n = childAt.getElevation();
                    }
                }
            }
        }
    }

    public void Q(b bVar) {
        for (Integer num : bVar.f7762g.keySet()) {
            num.intValue();
            a aVar = (a) bVar.f7762g.get(num);
            if (!this.f7762g.containsKey(num)) {
                this.f7762g.put(num, new a());
            }
            a aVar2 = (a) this.f7762g.get(num);
            if (aVar2 != null) {
                C0064b c0064b = aVar2.f7767e;
                if (!c0064b.f7786b) {
                    c0064b.a(aVar.f7767e);
                }
                d dVar = aVar2.f7765c;
                if (!dVar.f7842a) {
                    dVar.a(aVar.f7765c);
                }
                e eVar = aVar2.f7768f;
                if (!eVar.f7848a) {
                    eVar.a(aVar.f7768f);
                }
                c cVar = aVar2.f7766d;
                if (!cVar.f7828a) {
                    cVar.a(aVar.f7766d);
                }
                for (String str : aVar.f7769g.keySet()) {
                    if (!aVar2.f7769g.containsKey(str)) {
                        aVar2.f7769g.put(str, (ConstraintAttribute) aVar.f7769g.get(str));
                    }
                }
            }
        }
    }

    public void V(boolean z10) {
        this.f7761f = z10;
    }

    public void W(int i11, int i12) {
        z(i11).f7767e.f7796g = i12;
        z(i11).f7767e.f7794f = -1;
        z(i11).f7767e.f7798h = -1.0f;
    }

    public void X(int i11, int i12, int i13) {
        a aVarZ = z(i11);
        switch (i12) {
            case 1:
                aVarZ.f7767e.H = i13;
                return;
            case 2:
                aVarZ.f7767e.I = i13;
                return;
            case 3:
                aVarZ.f7767e.J = i13;
                return;
            case 4:
                aVarZ.f7767e.K = i13;
                return;
            case 5:
                aVarZ.f7767e.N = i13;
                return;
            case 6:
                aVarZ.f7767e.M = i13;
                return;
            case 7:
                aVarZ.f7767e.L = i13;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void Y(boolean z10) {
        this.f7756a = z10;
    }

    public void Z(int i11, float f11) {
        z(i11).f7767e.f7826z = f11;
    }

    public void g(ConstraintLayout constraintLayout) {
        a aVar;
        int childCount = constraintLayout.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = constraintLayout.getChildAt(i11);
            int id2 = childAt.getId();
            if (!this.f7762g.containsKey(Integer.valueOf(id2))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.d(childAt));
            } else {
                if (this.f7761f && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.f7762g.containsKey(Integer.valueOf(id2)) && (aVar = (a) this.f7762g.get(Integer.valueOf(id2))) != null) {
                    ConstraintAttribute.j(childAt, aVar.f7769g);
                }
            }
        }
    }

    public void h(b bVar) {
        for (a aVar : bVar.f7762g.values()) {
            if (aVar.f7770h != null) {
                if (aVar.f7764b != null) {
                    Iterator it = this.f7762g.keySet().iterator();
                    while (it.hasNext()) {
                        a aVarA = A(((Integer) it.next()).intValue());
                        String str = aVarA.f7767e.f7809m0;
                        if (str != null && aVar.f7764b.matches(str)) {
                            aVar.f7770h.e(aVarA);
                            aVarA.f7769g.putAll((HashMap) aVar.f7769g.clone());
                        }
                    }
                } else {
                    aVar.f7770h.e(A(aVar.f7763a));
                }
            }
        }
    }

    public void i(ConstraintLayout constraintLayout) {
        k(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void j(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout.b bVar, SparseArray sparseArray) {
        a aVar;
        int id2 = constraintHelper.getId();
        if (this.f7762g.containsKey(Integer.valueOf(id2)) && (aVar = (a) this.f7762g.get(Integer.valueOf(id2))) != null && (constraintWidget instanceof t0.b)) {
            constraintHelper.loadParameters(aVar, (t0.b) constraintWidget, bVar, sparseArray);
        }
    }

    void k(ConstraintLayout constraintLayout, boolean z10) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f7762g.keySet());
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = constraintLayout.getChildAt(i11);
            int id2 = childAt.getId();
            if (!this.f7762g.containsKey(Integer.valueOf(id2))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.d(childAt));
            } else {
                if (this.f7761f && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id2 != -1) {
                    if (this.f7762g.containsKey(Integer.valueOf(id2))) {
                        hashSet.remove(Integer.valueOf(id2));
                        a aVar = (a) this.f7762g.get(Integer.valueOf(id2));
                        if (aVar != null) {
                            if (childAt instanceof Barrier) {
                                aVar.f7767e.f7803j0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id2);
                                barrier.setType(aVar.f7767e.f7799h0);
                                barrier.setMargin(aVar.f7767e.f7801i0);
                                barrier.setAllowsGoneWidget(aVar.f7767e.f7815p0);
                                C0064b c0064b = aVar.f7767e;
                                int[] iArr = c0064b.f7805k0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = c0064b.f7807l0;
                                    if (str != null) {
                                        c0064b.f7805k0 = x(barrier, str);
                                        barrier.setReferencedIds(aVar.f7767e.f7805k0);
                                    }
                                }
                            }
                            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
                            bVar.c();
                            aVar.e(bVar);
                            if (z10) {
                                ConstraintAttribute.j(childAt, aVar.f7769g);
                            }
                            childAt.setLayoutParams(bVar);
                            d dVar = aVar.f7765c;
                            if (dVar.f7844c == 0) {
                                childAt.setVisibility(dVar.f7843b);
                            }
                            childAt.setAlpha(aVar.f7765c.f7845d);
                            childAt.setRotation(aVar.f7768f.f7849b);
                            childAt.setRotationX(aVar.f7768f.f7850c);
                            childAt.setRotationY(aVar.f7768f.f7851d);
                            childAt.setScaleX(aVar.f7768f.f7852e);
                            childAt.setScaleY(aVar.f7768f.f7853f);
                            e eVar = aVar.f7768f;
                            if (eVar.f7856i != -1) {
                                View viewFindViewById = ((View) childAt.getParent()).findViewById(aVar.f7768f.f7856i);
                                if (viewFindViewById != null) {
                                    float top = (viewFindViewById.getTop() + viewFindViewById.getBottom()) / 2.0f;
                                    float left = (viewFindViewById.getLeft() + viewFindViewById.getRight()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        float left2 = left - childAt.getLeft();
                                        float top2 = top - childAt.getTop();
                                        childAt.setPivotX(left2);
                                        childAt.setPivotY(top2);
                                    }
                                }
                            } else {
                                if (!Float.isNaN(eVar.f7854g)) {
                                    childAt.setPivotX(aVar.f7768f.f7854g);
                                }
                                if (!Float.isNaN(aVar.f7768f.f7855h)) {
                                    childAt.setPivotY(aVar.f7768f.f7855h);
                                }
                            }
                            childAt.setTranslationX(aVar.f7768f.f7857j);
                            childAt.setTranslationY(aVar.f7768f.f7858k);
                            childAt.setTranslationZ(aVar.f7768f.f7859l);
                            e eVar2 = aVar.f7768f;
                            if (eVar2.f7860m) {
                                childAt.setElevation(eVar2.f7861n);
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id2);
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            a aVar2 = (a) this.f7762g.get(num);
            if (aVar2 != null) {
                if (aVar2.f7767e.f7803j0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    C0064b c0064b2 = aVar2.f7767e;
                    int[] iArr2 = c0064b2.f7805k0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = c0064b2.f7807l0;
                        if (str2 != null) {
                            c0064b2.f7805k0 = x(barrier2, str2);
                            barrier2.setReferencedIds(aVar2.f7767e.f7805k0);
                        }
                    }
                    barrier2.setType(aVar2.f7767e.f7799h0);
                    barrier2.setMargin(aVar2.f7767e.f7801i0);
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.validateParams();
                    aVar2.e(bVarGenerateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, bVarGenerateDefaultLayoutParams);
                }
                if (aVar2.f7767e.f7784a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    aVar2.e(bVarGenerateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, bVarGenerateDefaultLayoutParams2);
                }
            }
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = constraintLayout.getChildAt(i12);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).f(constraintLayout);
            }
        }
    }

    public void l(int i11, ConstraintLayout.b bVar) {
        a aVar;
        if (!this.f7762g.containsKey(Integer.valueOf(i11)) || (aVar = (a) this.f7762g.get(Integer.valueOf(i11))) == null) {
            return;
        }
        aVar.e(bVar);
    }

    public void n(int i11) {
        this.f7762g.remove(Integer.valueOf(i11));
    }

    public void o(int i11, int i12) {
        a aVar;
        if (!this.f7762g.containsKey(Integer.valueOf(i11)) || (aVar = (a) this.f7762g.get(Integer.valueOf(i11))) == null) {
            return;
        }
        switch (i12) {
            case 1:
                C0064b c0064b = aVar.f7767e;
                c0064b.f7804k = -1;
                c0064b.f7802j = -1;
                c0064b.H = -1;
                c0064b.O = Integer.MIN_VALUE;
                return;
            case 2:
                C0064b c0064b2 = aVar.f7767e;
                c0064b2.f7808m = -1;
                c0064b2.f7806l = -1;
                c0064b2.I = -1;
                c0064b2.Q = Integer.MIN_VALUE;
                return;
            case 3:
                C0064b c0064b3 = aVar.f7767e;
                c0064b3.f7812o = -1;
                c0064b3.f7810n = -1;
                c0064b3.J = 0;
                c0064b3.P = Integer.MIN_VALUE;
                return;
            case 4:
                C0064b c0064b4 = aVar.f7767e;
                c0064b4.f7814p = -1;
                c0064b4.f7816q = -1;
                c0064b4.K = 0;
                c0064b4.R = Integer.MIN_VALUE;
                return;
            case 5:
                C0064b c0064b5 = aVar.f7767e;
                c0064b5.f7818r = -1;
                c0064b5.f7819s = -1;
                c0064b5.f7820t = -1;
                c0064b5.N = 0;
                c0064b5.U = Integer.MIN_VALUE;
                return;
            case 6:
                C0064b c0064b6 = aVar.f7767e;
                c0064b6.f7821u = -1;
                c0064b6.f7822v = -1;
                c0064b6.M = 0;
                c0064b6.T = Integer.MIN_VALUE;
                return;
            case 7:
                C0064b c0064b7 = aVar.f7767e;
                c0064b7.f7823w = -1;
                c0064b7.f7824x = -1;
                c0064b7.L = 0;
                c0064b7.S = Integer.MIN_VALUE;
                return;
            case 8:
                C0064b c0064b8 = aVar.f7767e;
                c0064b8.D = -1.0f;
                c0064b8.C = -1;
                c0064b8.B = -1;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void p(Context context, int i11) {
        q((ConstraintLayout) LayoutInflater.from(context).inflate(i11, (ViewGroup) null));
    }

    public void q(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f7762g.clear();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = constraintLayout.getChildAt(i11);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f7761f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f7762g.containsKey(Integer.valueOf(id2))) {
                this.f7762g.put(Integer.valueOf(id2), new a());
            }
            a aVar = (a) this.f7762g.get(Integer.valueOf(id2));
            if (aVar != null) {
                aVar.f7769g = ConstraintAttribute.b(this.f7760e, childAt);
                aVar.g(id2, bVar);
                aVar.f7765c.f7843b = childAt.getVisibility();
                aVar.f7765c.f7845d = childAt.getAlpha();
                aVar.f7768f.f7849b = childAt.getRotation();
                aVar.f7768f.f7850c = childAt.getRotationX();
                aVar.f7768f.f7851d = childAt.getRotationY();
                aVar.f7768f.f7852e = childAt.getScaleX();
                aVar.f7768f.f7853f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    e eVar = aVar.f7768f;
                    eVar.f7854g = pivotX;
                    eVar.f7855h = pivotY;
                }
                aVar.f7768f.f7857j = childAt.getTranslationX();
                aVar.f7768f.f7858k = childAt.getTranslationY();
                aVar.f7768f.f7859l = childAt.getTranslationZ();
                e eVar2 = aVar.f7768f;
                if (eVar2.f7860m) {
                    eVar2.f7861n = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    aVar.f7767e.f7815p0 = barrier.getAllowsGoneWidget();
                    aVar.f7767e.f7805k0 = barrier.getReferencedIds();
                    aVar.f7767e.f7799h0 = barrier.getType();
                    aVar.f7767e.f7801i0 = barrier.getMargin();
                }
            }
        }
    }

    public void r(b bVar) {
        this.f7762g.clear();
        for (Integer num : bVar.f7762g.keySet()) {
            a aVar = (a) bVar.f7762g.get(num);
            if (aVar != null) {
                this.f7762g.put(num, aVar.clone());
            }
        }
    }

    public void s(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f7762g.clear();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = constraints.getChildAt(i11);
            Constraints.a aVar = (Constraints.a) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f7761f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f7762g.containsKey(Integer.valueOf(id2))) {
                this.f7762g.put(Integer.valueOf(id2), new a());
            }
            a aVar2 = (a) this.f7762g.get(Integer.valueOf(id2));
            if (aVar2 != null) {
                if (childAt instanceof ConstraintHelper) {
                    aVar2.i((ConstraintHelper) childAt, id2, aVar);
                }
                aVar2.h(id2, aVar);
            }
        }
    }

    public void t(int i11, int i12, int i13, int i14) {
        if (!this.f7762g.containsKey(Integer.valueOf(i11))) {
            this.f7762g.put(Integer.valueOf(i11), new a());
        }
        a aVar = (a) this.f7762g.get(Integer.valueOf(i11));
        if (aVar == null) {
            return;
        }
        switch (i12) {
            case 1:
                if (i14 == 1) {
                    C0064b c0064b = aVar.f7767e;
                    c0064b.f7802j = i13;
                    c0064b.f7804k = -1;
                    return;
                } else if (i14 == 2) {
                    C0064b c0064b2 = aVar.f7767e;
                    c0064b2.f7804k = i13;
                    c0064b2.f7802j = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + a0(i14) + " undefined");
                }
            case 2:
                if (i14 == 1) {
                    C0064b c0064b3 = aVar.f7767e;
                    c0064b3.f7806l = i13;
                    c0064b3.f7808m = -1;
                    return;
                } else if (i14 == 2) {
                    C0064b c0064b4 = aVar.f7767e;
                    c0064b4.f7808m = i13;
                    c0064b4.f7806l = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + a0(i14) + " undefined");
                }
            case 3:
                if (i14 == 3) {
                    C0064b c0064b5 = aVar.f7767e;
                    c0064b5.f7810n = i13;
                    c0064b5.f7812o = -1;
                    c0064b5.f7818r = -1;
                    c0064b5.f7819s = -1;
                    c0064b5.f7820t = -1;
                    return;
                }
                if (i14 != 4) {
                    throw new IllegalArgumentException("right to " + a0(i14) + " undefined");
                }
                C0064b c0064b6 = aVar.f7767e;
                c0064b6.f7812o = i13;
                c0064b6.f7810n = -1;
                c0064b6.f7818r = -1;
                c0064b6.f7819s = -1;
                c0064b6.f7820t = -1;
                return;
            case 4:
                if (i14 == 4) {
                    C0064b c0064b7 = aVar.f7767e;
                    c0064b7.f7816q = i13;
                    c0064b7.f7814p = -1;
                    c0064b7.f7818r = -1;
                    c0064b7.f7819s = -1;
                    c0064b7.f7820t = -1;
                    return;
                }
                if (i14 != 3) {
                    throw new IllegalArgumentException("right to " + a0(i14) + " undefined");
                }
                C0064b c0064b8 = aVar.f7767e;
                c0064b8.f7814p = i13;
                c0064b8.f7816q = -1;
                c0064b8.f7818r = -1;
                c0064b8.f7819s = -1;
                c0064b8.f7820t = -1;
                return;
            case 5:
                if (i14 == 5) {
                    C0064b c0064b9 = aVar.f7767e;
                    c0064b9.f7818r = i13;
                    c0064b9.f7816q = -1;
                    c0064b9.f7814p = -1;
                    c0064b9.f7810n = -1;
                    c0064b9.f7812o = -1;
                    return;
                }
                if (i14 == 3) {
                    C0064b c0064b10 = aVar.f7767e;
                    c0064b10.f7819s = i13;
                    c0064b10.f7816q = -1;
                    c0064b10.f7814p = -1;
                    c0064b10.f7810n = -1;
                    c0064b10.f7812o = -1;
                    return;
                }
                if (i14 != 4) {
                    throw new IllegalArgumentException("right to " + a0(i14) + " undefined");
                }
                C0064b c0064b11 = aVar.f7767e;
                c0064b11.f7820t = i13;
                c0064b11.f7816q = -1;
                c0064b11.f7814p = -1;
                c0064b11.f7810n = -1;
                c0064b11.f7812o = -1;
                return;
            case 6:
                if (i14 == 6) {
                    C0064b c0064b12 = aVar.f7767e;
                    c0064b12.f7822v = i13;
                    c0064b12.f7821u = -1;
                    return;
                } else if (i14 == 7) {
                    C0064b c0064b13 = aVar.f7767e;
                    c0064b13.f7821u = i13;
                    c0064b13.f7822v = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + a0(i14) + " undefined");
                }
            case 7:
                if (i14 == 7) {
                    C0064b c0064b14 = aVar.f7767e;
                    c0064b14.f7824x = i13;
                    c0064b14.f7823w = -1;
                    return;
                } else if (i14 == 6) {
                    C0064b c0064b15 = aVar.f7767e;
                    c0064b15.f7823w = i13;
                    c0064b15.f7824x = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + a0(i14) + " undefined");
                }
            default:
                throw new IllegalArgumentException(a0(i12) + " to " + a0(i14) + " unknown");
        }
    }

    public void u(int i11, int i12, int i13, float f11) {
        C0064b c0064b = z(i11).f7767e;
        c0064b.B = i12;
        c0064b.C = i13;
        c0064b.D = f11;
    }

    public void v(int i11, int i12) {
        z(i11).f7767e.f7792e = i12;
    }

    public void w(int i11, boolean z10) {
        z(i11).f7767e.f7813o0 = z10;
    }
}
