package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.j;
import androidx.constraintlayout.core.widgets.analyzer.l;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidget {
    public static float U0 = 0.5f;
    int A0;
    int B0;
    boolean C0;
    boolean D0;
    boolean E0;
    public boolean F;
    boolean F0;
    public boolean G;
    boolean G0;
    boolean H0;
    boolean I0;
    int J0;
    int K0;
    boolean L0;
    private boolean M;
    boolean M0;
    public float[] N0;
    protected ConstraintWidget[] O0;
    protected ConstraintWidget[] P0;
    ConstraintWidget Q0;
    ConstraintWidget R0;
    public int S0;
    public int T0;
    public ConstraintAnchor X;
    public ConstraintAnchor[] Y;
    protected ArrayList Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean[] f6857a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public DimensionBehaviour[] f6859b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.constraintlayout.core.widgets.analyzer.c f6860c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public ConstraintWidget f6861c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.constraintlayout.core.widgets.analyzer.c f6862d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    int f6863d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    int f6865e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public float f6867f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    protected int f6869g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    protected int f6871h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    protected int f6873i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    int f6875j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    int f6877k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    protected int f6879l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    protected int f6881m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    int f6883n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f6884o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    protected int f6885o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    protected int f6887p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    float f6889q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    float f6891r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private Object f6893s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f6895t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private int f6897u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private boolean f6899v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private String f6901w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private String f6903x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    int f6905y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    int f6907z0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f6856a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WidgetRun[] f6858b = new WidgetRun[2];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j f6864e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public l f6866f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean[] f6868g = {true, true};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f6870h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f6872i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f6874j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f6876k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f6878l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f6880m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public s0.a f6882n = new s0.a(this);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f6886p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f6888q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f6890r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f6892s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f6894t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f6896u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f6898v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f6900w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f6902x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int[] f6904y = new int[2];

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f6906z = 0;
    public int A = 0;
    public float B = 1.0f;
    public int C = 0;
    public int D = 0;
    public float E = 1.0f;
    int H = -1;
    float I = 1.0f;
    private int[] J = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float K = 0.0f;
    private boolean L = false;
    private boolean N = false;
    private int O = 0;
    private int P = 0;
    public ConstraintAnchor Q = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
    public ConstraintAnchor R = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
    public ConstraintAnchor S = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
    public ConstraintAnchor T = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
    public ConstraintAnchor U = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
    ConstraintAnchor V = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
    ConstraintAnchor W = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6908a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f6909b;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            f6909b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6909b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6909b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6909b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f6908a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6908a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6908a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6908a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6908a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6908a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f6908a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f6908a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f6908a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public ConstraintWidget() {
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.X = constraintAnchor;
        this.Y = new ConstraintAnchor[]{this.Q, this.S, this.R, this.T, this.U, constraintAnchor};
        this.Z = new ArrayList();
        this.f6857a0 = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.f6859b0 = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.f6861c0 = null;
        this.f6863d0 = 0;
        this.f6865e0 = 0;
        this.f6867f0 = 0.0f;
        this.f6869g0 = -1;
        this.f6871h0 = 0;
        this.f6873i0 = 0;
        this.f6875j0 = 0;
        this.f6877k0 = 0;
        this.f6879l0 = 0;
        this.f6881m0 = 0;
        this.f6883n0 = 0;
        float f11 = U0;
        this.f6889q0 = f11;
        this.f6891r0 = f11;
        this.f6895t0 = 0;
        this.f6897u0 = 0;
        this.f6899v0 = false;
        this.f6901w0 = null;
        this.f6903x0 = null;
        this.I0 = false;
        this.J0 = 0;
        this.K0 = 0;
        this.N0 = new float[]{-1.0f, -1.0f};
        this.O0 = new ConstraintWidget[]{null, null};
        this.P0 = new ConstraintWidget[]{null, null};
        this.Q0 = null;
        this.R0 = null;
        this.S0 = -1;
        this.T0 = -1;
        d();
    }

    private void A0(StringBuilder sb2, String str, float f11, float f12) {
        if (f11 == f12) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(f11);
        sb2.append(",\n");
    }

    private void B0(StringBuilder sb2, String str, int i11, int i12) {
        if (i11 == i12) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(i11);
        sb2.append(",\n");
    }

    private void C0(StringBuilder sb2, String str, float f11, int i11) {
        if (f11 == 0.0f) {
            return;
        }
        sb2.append(str);
        sb2.append(" :  [");
        sb2.append(f11);
        sb2.append(",");
        sb2.append(i11);
        sb2.append("");
        sb2.append("],\n");
    }

    private void R(StringBuilder sb2, String str, int i11, int i12, int i13, int i14, int i15, int i16, float f11, float f12) {
        sb2.append(str);
        sb2.append(" :  {\n");
        B0(sb2, "      size", i11, 0);
        B0(sb2, "      min", i12, 0);
        B0(sb2, "      max", i13, Integer.MAX_VALUE);
        B0(sb2, "      matchMin", i15, 0);
        B0(sb2, "      matchDef", i16, 0);
        A0(sb2, "      matchPercent", f11, 1.0f);
        sb2.append("    },\n");
    }

    private void S(StringBuilder sb2, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.f6851f == null) {
            return;
        }
        sb2.append("    ");
        sb2.append(str);
        sb2.append(" : [ '");
        sb2.append(constraintAnchor.f6851f);
        sb2.append("'");
        if (constraintAnchor.f6853h != Integer.MIN_VALUE || constraintAnchor.f6852g != 0) {
            sb2.append(",");
            sb2.append(constraintAnchor.f6852g);
            if (constraintAnchor.f6853h != Integer.MIN_VALUE) {
                sb2.append(",");
                sb2.append(constraintAnchor.f6853h);
                sb2.append(",");
            }
        }
        sb2.append(" ] ,\n");
    }

    private void d() {
        this.Z.add(this.Q);
        this.Z.add(this.R);
        this.Z.add(this.S);
        this.Z.add(this.T);
        this.Z.add(this.V);
        this.Z.add(this.W);
        this.Z.add(this.X);
        this.Z.add(this.U);
    }

    private boolean h0(int i11) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i12 = i11 * 2;
        ConstraintAnchor[] constraintAnchorArr = this.Y;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i12];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6851f;
        return (constraintAnchor4 == null || constraintAnchor4.f6851f == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i12 + 1]).f6851f) == null || constraintAnchor2.f6851f != constraintAnchor) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0197  */
    /* JADX WARN: Code duplicated, block: B:107:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:109:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:235:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:237:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:243:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:245:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:252:0x040d  */
    /* JADX WARN: Code duplicated, block: B:261:0x042f  */
    /* JADX WARN: Code duplicated, block: B:271:0x0447  */
    /* JADX WARN: Code duplicated, block: B:274:0x044d  */
    /* JADX WARN: Code duplicated, block: B:275:0x044f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:278:0x0455 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:281:0x045a  */
    /* JADX WARN: Code duplicated, block: B:284:0x0460  */
    /* JADX WARN: Code duplicated, block: B:286:0x0464  */
    /* JADX WARN: Code duplicated, block: B:289:0x0469  */
    /* JADX WARN: Code duplicated, block: B:291:0x046d  */
    /* JADX WARN: Code duplicated, block: B:293:0x0470  */
    /* JADX WARN: Code duplicated, block: B:296:0x0477  */
    /* JADX WARN: Code duplicated, block: B:298:0x047d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:302:0x0485  */
    /* JADX WARN: Code duplicated, block: B:305:0x0497  */
    /* JADX WARN: Code duplicated, block: B:307:0x049b  */
    /* JADX WARN: Code duplicated, block: B:308:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:310:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:312:0x04a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:31:0x008c  */
    /* JADX WARN: Code duplicated, block: B:320:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:364:0x053e  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:48:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:67:0x0113  */
    /* JADX WARN: Code duplicated, block: B:69:0x0116  */
    /* JADX WARN: Code duplicated, block: B:70:0x0118  */
    /* JADX WARN: Code duplicated, block: B:72:0x011b  */
    /* JADX WARN: Code duplicated, block: B:73:0x011d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0120  */
    /* JADX WARN: Code duplicated, block: B:80:0x0128  */
    /* JADX WARN: Code duplicated, block: B:83:0x0132  */
    /* JADX WARN: Code duplicated, block: B:84:0x0134 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x0137  */
    /* JADX WARN: Code duplicated, block: B:89:0x0140 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x0142  */
    /* JADX WARN: Code duplicated, block: B:91:0x0147 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0149  */
    /* JADX WARN: Code duplicated, block: B:93:0x0151  */
    /* JADX WARN: Code duplicated, block: B:95:0x0166  */
    /* JADX WARN: Code duplicated, block: B:97:0x016a  */
    /* JADX WARN: Code duplicated, block: B:99:0x0172  */
    private void i(androidx.constraintlayout.core.d dVar, boolean z10, boolean z11, boolean z12, boolean z13, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z14, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i11, int i12, int i13, int i14, float f11, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i15, int i16, int i17, int i18, float f12, boolean z20) {
        int i19;
        boolean z21;
        int iMin;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z22;
        boolean z23;
        ConstraintAnchor.Type typeK;
        ConstraintAnchor.Type type;
        SolverVariable solverVariableQ;
        SolverVariable solverVariableQ2;
        int i25;
        char c11;
        int i26;
        ConstraintAnchor constraintAnchor3;
        int i27;
        int i28;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        int i29;
        ConstraintWidget constraintWidget;
        boolean z28;
        ConstraintWidget constraintWidget2;
        int iMax;
        int i30;
        int i31;
        int iF;
        int iMin2;
        int i32;
        int i33;
        boolean z29;
        int i34;
        int i35;
        int i36;
        boolean z30;
        int i37;
        boolean z31;
        ConstraintWidget constraintWidget3;
        int i38;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariableQ3 = dVar.q(constraintAnchor);
        SolverVariable solverVariableQ4 = dVar.q(constraintAnchor2);
        SolverVariable solverVariableQ5 = dVar.q(constraintAnchor.j());
        SolverVariable solverVariableQ6 = dVar.q(constraintAnchor2.j());
        if (androidx.constraintlayout.core.d.x() != null) {
            androidx.constraintlayout.core.d.x().f6695w++;
        }
        boolean zO = constraintAnchor.o();
        boolean zO2 = constraintAnchor2.o();
        boolean zO3 = this.X.o();
        int i39 = zO2 ? (zO ? 1 : 0) + 1 : zO ? 1 : 0;
        if (zO3) {
            i39++;
        }
        int i40 = z15 ? 3 : i15;
        int i41 = a.f6909b[dimensionBehaviour.ordinal()];
        if (i41 != 1 && i41 != 2 && i41 != 3 && i41 == 4) {
            i19 = i40;
            z21 = i19 != 4;
            iMin = this.f6878l;
            if (iMin == -1 && z10) {
                this.f6878l = -1;
                z21 = false;
            } else {
                iMin = i12;
            }
            i20 = this.f6880m;
            if (i20 != -1 && !z10) {
                this.f6880m = -1;
                iMin = i20;
                z21 = false;
            }
            if (this.f6897u0 == 8) {
                iMin = 0;
                z21 = false;
            }
            if (z20) {
                if (zO && !zO2 && !zO3) {
                    dVar.f(solverVariableQ3, i11);
                } else if (zO && !zO2) {
                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                }
            }
            if (!z21) {
                if (z14) {
                    dVar.e(solverVariableQ4, solverVariableQ3, 0, 3);
                    if (i13 > 0) {
                        dVar.h(solverVariableQ4, solverVariableQ3, i13, 8);
                    }
                    if (i14 < Integer.MAX_VALUE) {
                        dVar.j(solverVariableQ4, solverVariableQ3, i14, 8);
                    }
                } else {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i22 = i18;
                i23 = i39;
                z22 = z21;
                z23 = z13;
                i24 = i17;
            } else if (i39 == 2 && !z15 && (i19 == 1 || i19 == 0)) {
                int iMax2 = Math.max(i17, iMin);
                if (i18 > 0) {
                    iMax2 = Math.min(i18, iMax2);
                }
                dVar.e(solverVariableQ4, solverVariableQ3, iMax2, 8);
                z23 = z13;
                i22 = i18;
                i23 = i39;
                z22 = false;
                i24 = i17;
            } else {
                if (i17 == -2) {
                    i21 = iMin;
                } else {
                    i21 = i17;
                }
                if (i18 == -2) {
                    i22 = iMin;
                } else {
                    i22 = i18;
                }
                if (iMin > 0 && i19 != 1) {
                    iMin = 0;
                }
                if (i21 > 0) {
                    dVar.h(solverVariableQ4, solverVariableQ3, i21, 8);
                    iMin = Math.max(iMin, i21);
                }
                if (i22 > 0) {
                    if (z11 || i19 != 1) {
                        dVar.j(solverVariableQ4, solverVariableQ3, i22, 8);
                    }
                    iMin = Math.min(iMin, i22);
                }
                if (i19 == 1) {
                    if (z11) {
                        dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                    } else if (z17) {
                        dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                        dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                    } else {
                        dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                        dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                    }
                    i23 = i39;
                    z22 = z21;
                    z23 = z13;
                    i24 = i21;
                } else if (i19 == 2) {
                    typeK = constraintAnchor.k();
                    type = ConstraintAnchor.Type.TOP;
                    if (typeK != type || constraintAnchor.k() == ConstraintAnchor.Type.BOTTOM) {
                        solverVariableQ = dVar.q(this.f6861c0.q(type));
                        solverVariableQ2 = dVar.q(this.f6861c0.q(ConstraintAnchor.Type.BOTTOM));
                    } else {
                        solverVariableQ = dVar.q(this.f6861c0.q(ConstraintAnchor.Type.LEFT));
                        solverVariableQ2 = dVar.q(this.f6861c0.q(ConstraintAnchor.Type.RIGHT));
                    }
                    SolverVariable solverVariable3 = solverVariableQ;
                    SolverVariable solverVariable4 = solverVariableQ2;
                    androidx.constraintlayout.core.b bVarR = dVar.r();
                    i23 = i39 == true ? 1 : 0;
                    i24 = i21;
                    dVar.d(bVarR.k(solverVariableQ4, solverVariableQ3, solverVariable4, solverVariable3, f12));
                    if (z11) {
                        z21 = false;
                    }
                    z22 = z21;
                    z23 = z13;
                } else {
                    i23 = i39;
                    i24 = i21;
                    z22 = z21;
                    z23 = true;
                }
            }
            if (z20 || z17) {
                i25 = 0;
                c11 = 2;
                if (i23 >= c11 && z11 && z23) {
                    dVar.h(solverVariableQ3, solverVariable, i25, 8);
                    int i42 = (z10 || this.U.f6851f == null) ? 1 : i25;
                    if (z10 || (constraintAnchor3 = this.U.f6851f) == null) {
                        i26 = i42;
                    } else {
                        ConstraintWidget constraintWidget5 = constraintAnchor3.f6849d;
                        if (constraintWidget5.f6867f0 != 0.0f) {
                            DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.f6859b0;
                            DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[i25];
                            DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                            if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                                i26 = 1;
                            } else {
                                i26 = i25;
                            }
                        } else {
                            i26 = i25;
                        }
                    }
                    if (i26 != 0) {
                        dVar.h(solverVariable2, solverVariableQ4, i25, 8);
                        return;
                    }
                    return;
                }
                return;
            }
            if (zO || zO2 || zO3) {
                if (!zO || zO2) {
                    if (zO || !zO2) {
                        if (zO && zO2) {
                            ConstraintWidget constraintWidget6 = constraintAnchor.f6851f.f6849d;
                            ConstraintWidget constraintWidget7 = constraintAnchor2.f6851f.f6849d;
                            ConstraintWidget constraintWidgetM = M();
                            int i43 = 6;
                            if (z22) {
                                if (i19 == 0) {
                                    if (i22 != 0 || i24 != 0) {
                                        z30 = false;
                                        i35 = 5;
                                        i37 = 5;
                                        z31 = true;
                                        z24 = true;
                                    } else if (solverVariableQ5.f6613g && solverVariableQ6.f6613g) {
                                        dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                                        dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), 8);
                                        return;
                                    } else {
                                        z31 = false;
                                        z24 = false;
                                        i35 = 8;
                                        i37 = 8;
                                        z30 = true;
                                    }
                                    if ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                        solverVariable2 = solverVariable2;
                                        i27 = i35;
                                        i43 = 6;
                                        z26 = z30;
                                        z25 = z31;
                                        i28 = 4;
                                    } else {
                                        z26 = z30;
                                        z25 = z31;
                                        i28 = i37;
                                        i27 = i35;
                                        i43 = 6;
                                    }
                                } else if (i19 == 2) {
                                    if (!(constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) && !(constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                        solverVariable2 = solverVariable2;
                                        i43 = 6;
                                        i27 = 5;
                                        i28 = 5;
                                    }
                                    z25 = true;
                                    z24 = true;
                                    z26 = false;
                                } else if (i19 == 1) {
                                    i27 = 8;
                                    i28 = 4;
                                    z25 = true;
                                    z24 = true;
                                    z26 = false;
                                } else if (i19 == 3) {
                                    if (this.H == -1) {
                                        if (z18) {
                                            solverVariable2 = solverVariable2;
                                            i43 = z11 ? 5 : 4;
                                        } else {
                                            solverVariable2 = solverVariable2;
                                            i43 = 8;
                                        }
                                        i27 = 8;
                                    } else if (z15) {
                                        if (i16 == 2 || i16 == 1) {
                                            i35 = 5;
                                            i36 = 4;
                                        } else {
                                            i35 = 8;
                                            i36 = 5;
                                        }
                                        i28 = i36;
                                        z25 = true;
                                        z24 = true;
                                        z26 = true;
                                        i27 = i35;
                                        i43 = 6;
                                    } else {
                                        if (i22 > 0) {
                                            solverVariable2 = solverVariable2;
                                            i43 = 6;
                                            i27 = 5;
                                        } else {
                                            if (i22 != 0 || i24 != 0) {
                                                i27 = 5;
                                            } else if (z18) {
                                                i27 = (constraintWidget6 == constraintWidgetM || constraintWidget7 == constraintWidgetM) ? 5 : 4;
                                            } else {
                                                solverVariable2 = solverVariable2;
                                                i43 = 6;
                                                i27 = 5;
                                                i28 = 8;
                                            }
                                            i28 = 4;
                                        }
                                        z25 = true;
                                        z24 = true;
                                        z26 = true;
                                    }
                                    i28 = 5;
                                    z25 = true;
                                    z24 = true;
                                    z26 = true;
                                } else {
                                    solverVariable2 = solverVariable2;
                                    i43 = 6;
                                    i27 = 5;
                                    i28 = 4;
                                    z25 = false;
                                    z24 = false;
                                    z26 = false;
                                }
                                if (z24 || solverVariableQ5 != solverVariableQ6 || constraintWidget6 == constraintWidgetM) {
                                    z27 = true;
                                } else {
                                    z24 = false;
                                    z27 = false;
                                }
                                if (z25) {
                                    if (z22 && !z16 && !z18 && solverVariableQ5 == solverVariable && solverVariableQ6 == solverVariable2) {
                                        z28 = false;
                                        i34 = 8;
                                        i33 = 8;
                                        z29 = false;
                                    } else {
                                        z28 = z11;
                                        i33 = i43;
                                        z29 = z27;
                                        i34 = i27;
                                    }
                                    i29 = i19;
                                    constraintWidget = constraintWidgetM;
                                    dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f11, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), i33);
                                    i27 = i34;
                                    z27 = z29;
                                } else {
                                    i29 = i19;
                                    constraintWidget = constraintWidgetM;
                                    z28 = z11;
                                }
                                if (this.f6897u0 != 8 && !constraintAnchor2.m()) {
                                    return;
                                }
                                if (z24) {
                                    if (z28 && solverVariableQ5 != solverVariableQ6 && !z22 && ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a))) {
                                        i27 = 6;
                                    }
                                    dVar.h(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), i27);
                                    solverVariableQ4 = solverVariableQ4;
                                    dVar.j(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), i27);
                                } else {
                                    solverVariableQ4 = solverVariableQ4;
                                }
                                if (z28 || !z19 || (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                    constraintWidget2 = constraintWidget;
                                } else {
                                    constraintWidget2 = constraintWidget;
                                    if (constraintWidget7 != constraintWidget2) {
                                        i27 = 6;
                                        iMax = 6;
                                        z27 = true;
                                    }
                                    if (z27) {
                                        if (z26 && (!z18 || z12)) {
                                            if (constraintWidget6 != constraintWidget2 || constraintWidget7 == constraintWidget2) {
                                                i32 = 6;
                                            } else {
                                                i32 = iMax;
                                            }
                                            if ((constraintWidget6 instanceof f) || (constraintWidget7 instanceof f)) {
                                                i32 = 5;
                                            }
                                            if ((constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) || (constraintWidget7 instanceof androidx.constraintlayout.core.widgets.a)) {
                                                i32 = 5;
                                            }
                                            if (z18) {
                                                i32 = 5;
                                            }
                                            iMax = Math.max(i32, iMax);
                                        }
                                        if (z28) {
                                            iMin2 = Math.min(i27, iMax);
                                            if (z15 || z18 || !(constraintWidget6 == constraintWidget2 || constraintWidget7 == constraintWidget2)) {
                                                iMax = iMin2;
                                            } else {
                                                iMax = 4;
                                            }
                                        }
                                        dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                        dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                                    }
                                    if (z28) {
                                        if (solverVariable == solverVariableQ5) {
                                            iF = constraintAnchor.f();
                                        } else {
                                            iF = 0;
                                        }
                                        if (solverVariableQ5 != solverVariable) {
                                            dVar.h(solverVariableQ3, solverVariable, iF, 5);
                                        }
                                    }
                                    if (z28 || !z22 || i13 != 0 || i24 != 0) {
                                        i30 = 5;
                                        i31 = 0;
                                    } else if (z22 && i29 == 3) {
                                        i31 = 0;
                                        dVar.h(solverVariableQ4, solverVariableQ3, 0, 8);
                                        i30 = 5;
                                    } else {
                                        i31 = 0;
                                        i30 = 5;
                                        dVar.h(solverVariableQ4, solverVariableQ3, 0, 5);
                                    }
                                }
                                iMax = i28;
                                if (z27) {
                                    if (z26) {
                                        if (constraintWidget6 != constraintWidget2) {
                                            i32 = 6;
                                        } else {
                                            i32 = 6;
                                        }
                                        if (constraintWidget6 instanceof f) {
                                            i32 = 5;
                                        } else {
                                            i32 = 5;
                                        }
                                        if (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) {
                                            i32 = 5;
                                        } else {
                                            i32 = 5;
                                        }
                                        if (z18) {
                                            i32 = 5;
                                        }
                                        iMax = Math.max(i32, iMax);
                                    }
                                    if (z28) {
                                        iMin2 = Math.min(i27, iMax);
                                        if (z15) {
                                            iMax = iMin2;
                                        } else {
                                            iMax = iMin2;
                                        }
                                    }
                                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                    dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                                }
                                if (z28) {
                                    if (solverVariable == solverVariableQ5) {
                                        iF = constraintAnchor.f();
                                    } else {
                                        iF = 0;
                                    }
                                    if (solverVariableQ5 != solverVariable) {
                                        dVar.h(solverVariableQ3, solverVariable, iF, 5);
                                    }
                                }
                                if (z28) {
                                    i30 = 5;
                                    i31 = 0;
                                } else {
                                    i30 = 5;
                                    i31 = 0;
                                }
                            } else if (solverVariableQ5.f6613g && solverVariableQ6.f6613g) {
                                dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f11, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), 8);
                                if (z11 && z23) {
                                    int iF2 = constraintAnchor2.f6851f != null ? constraintAnchor2.f() : 0;
                                    if (solverVariableQ6 != solverVariable2) {
                                        dVar.h(solverVariable2, solverVariableQ4, iF2, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i27 = 5;
                            i28 = 4;
                            z25 = true;
                            z24 = true;
                            z26 = false;
                            if (z24) {
                                z27 = true;
                            } else {
                                z27 = true;
                            }
                            if (z25) {
                                if (z22) {
                                    z28 = z11;
                                    i33 = i43;
                                    z29 = z27;
                                    i34 = i27;
                                } else {
                                    z28 = z11;
                                    i33 = i43;
                                    z29 = z27;
                                    i34 = i27;
                                }
                                i29 = i19;
                                constraintWidget = constraintWidgetM;
                                dVar.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f11, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), i33);
                                i27 = i34;
                                z27 = z29;
                            } else {
                                i29 = i19;
                                constraintWidget = constraintWidgetM;
                                z28 = z11;
                            }
                            if (this.f6897u0 != 8) {
                            }
                            if (z24) {
                                if (z28) {
                                    i27 = 6;
                                }
                                dVar.h(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), i27);
                                solverVariableQ4 = solverVariableQ4;
                                dVar.j(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), i27);
                            } else {
                                solverVariableQ4 = solverVariableQ4;
                            }
                            if (z28) {
                                constraintWidget2 = constraintWidget;
                                iMax = i28;
                            } else {
                                constraintWidget2 = constraintWidget;
                                iMax = i28;
                            }
                            if (z27) {
                                if (z26) {
                                    if (constraintWidget6 != constraintWidget2) {
                                        i32 = 6;
                                    } else {
                                        i32 = 6;
                                    }
                                    if (constraintWidget6 instanceof f) {
                                        i32 = 5;
                                    } else {
                                        i32 = 5;
                                    }
                                    if (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) {
                                        i32 = 5;
                                    } else {
                                        i32 = 5;
                                    }
                                    if (z18) {
                                        i32 = 5;
                                    }
                                    iMax = Math.max(i32, iMax);
                                }
                                if (z28) {
                                    iMin2 = Math.min(i27, iMax);
                                    if (z15) {
                                        iMax = iMin2;
                                    } else {
                                        iMax = iMin2;
                                    }
                                }
                                dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                            }
                            if (z28) {
                                if (solverVariable == solverVariableQ5) {
                                    iF = constraintAnchor.f();
                                } else {
                                    iF = 0;
                                }
                                if (solverVariableQ5 != solverVariable) {
                                    dVar.h(solverVariableQ3, solverVariable, iF, 5);
                                }
                            }
                            if (z28) {
                                i30 = 5;
                                i31 = 0;
                            } else {
                                i30 = 5;
                                i31 = 0;
                            }
                        }
                        i38 = i30;
                    } else {
                        dVar.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), 8);
                        if (z11) {
                            if (this.f6874j && solverVariableQ3.f6613g && (constraintWidget3 = this.f6861c0) != null) {
                                d dVar2 = (d) constraintWidget3;
                                if (z10) {
                                    dVar2.D1(constraintAnchor);
                                } else {
                                    dVar2.I1(constraintAnchor);
                                }
                            } else {
                                i30 = 5;
                                dVar.h(solverVariableQ3, solverVariable, 0, 5);
                                i31 = 0;
                            }
                        }
                    }
                    i31 = 0;
                    i30 = 5;
                } else {
                    z28 = z11;
                    i31 = 0;
                    i38 = (z11 && (constraintAnchor.f6851f.f6849d instanceof androidx.constraintlayout.core.widgets.a)) ? 8 : 5;
                    solverVariableQ4 = solverVariableQ4;
                }
                if (z28 || !z23) {
                    return;
                }
                int iF3 = constraintAnchor2.f6851f != null ? constraintAnchor2.f() : i31;
                if (solverVariableQ6 != solverVariable2) {
                    if (!this.f6874j || !solverVariableQ4.f6613g || (constraintWidget4 = this.f6861c0) == null) {
                        dVar.h(solverVariable2, solverVariableQ4, iF3, i38);
                        return;
                    }
                    d dVar3 = (d) constraintWidget4;
                    if (z10) {
                        dVar3.C1(constraintAnchor2);
                        return;
                    } else {
                        dVar3.H1(constraintAnchor2);
                        return;
                    }
                }
                return;
            }
            i30 = 5;
            i31 = 0;
            z28 = z11;
            i38 = i30;
            if (z28) {
                return;
            } else {
                return;
            }
        }
        i19 = i40;
        iMin = this.f6878l;
        if (iMin == -1) {
            iMin = i12;
        } else {
            iMin = i12;
        }
        i20 = this.f6880m;
        if (i20 != -1) {
            this.f6880m = -1;
            iMin = i20;
            z21 = false;
        }
        if (this.f6897u0 == 8) {
            iMin = 0;
            z21 = false;
        }
        if (z20) {
            if (zO) {
                if (zO) {
                    dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                }
            } else if (zO) {
                dVar.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
            }
        }
        if (!z21) {
            if (z14) {
                dVar.e(solverVariableQ4, solverVariableQ3, 0, 3);
                if (i13 > 0) {
                    dVar.h(solverVariableQ4, solverVariableQ3, i13, 8);
                }
                if (i14 < Integer.MAX_VALUE) {
                    dVar.j(solverVariableQ4, solverVariableQ3, i14, 8);
                }
            } else {
                dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
            }
            i22 = i18;
            i23 = i39;
            z22 = z21;
            z23 = z13;
            i24 = i17;
        } else if (i39 == 2) {
            if (i17 == -2) {
                i21 = iMin;
            } else {
                i21 = i17;
            }
            if (i18 == -2) {
                i22 = iMin;
            } else {
                i22 = i18;
            }
            if (iMin > 0) {
                iMin = 0;
            }
            if (i21 > 0) {
                dVar.h(solverVariableQ4, solverVariableQ3, i21, 8);
                iMin = Math.max(iMin, i21);
            }
            if (i22 > 0) {
                if (z11) {
                    dVar.j(solverVariableQ4, solverVariableQ3, i22, 8);
                } else {
                    dVar.j(solverVariableQ4, solverVariableQ3, i22, 8);
                }
                iMin = Math.min(iMin, i22);
            }
            if (i19 == 1) {
                if (z11) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else if (z17) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i23 = i39;
                z22 = z21;
                z23 = z13;
                i24 = i21;
            } else if (i19 == 2) {
                typeK = constraintAnchor.k();
                type = ConstraintAnchor.Type.TOP;
                if (typeK != type) {
                    solverVariableQ = dVar.q(this.f6861c0.q(type));
                    solverVariableQ2 = dVar.q(this.f6861c0.q(ConstraintAnchor.Type.BOTTOM));
                } else {
                    solverVariableQ = dVar.q(this.f6861c0.q(type));
                    solverVariableQ2 = dVar.q(this.f6861c0.q(ConstraintAnchor.Type.BOTTOM));
                }
                SolverVariable solverVariable5 = solverVariableQ;
                SolverVariable solverVariable6 = solverVariableQ2;
                androidx.constraintlayout.core.b bVarR2 = dVar.r();
                i23 = i39 == true ? 1 : 0;
                i24 = i21;
                dVar.d(bVarR2.k(solverVariableQ4, solverVariableQ3, solverVariable6, solverVariable5, f12));
                if (z11) {
                    z21 = false;
                }
                z22 = z21;
                z23 = z13;
            } else {
                i23 = i39;
                i24 = i21;
                z22 = z21;
                z23 = true;
            }
        } else {
            if (i17 == -2) {
                i21 = iMin;
            } else {
                i21 = i17;
            }
            if (i18 == -2) {
                i22 = iMin;
            } else {
                i22 = i18;
            }
            if (iMin > 0) {
                iMin = 0;
            }
            if (i21 > 0) {
                dVar.h(solverVariableQ4, solverVariableQ3, i21, 8);
                iMin = Math.max(iMin, i21);
            }
            if (i22 > 0) {
                if (z11) {
                    dVar.j(solverVariableQ4, solverVariableQ3, i22, 8);
                } else {
                    dVar.j(solverVariableQ4, solverVariableQ3, i22, 8);
                }
                iMin = Math.min(iMin, i22);
            }
            if (i19 == 1) {
                if (z11) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else if (z17) {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else {
                    dVar.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    dVar.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i23 = i39;
                z22 = z21;
                z23 = z13;
                i24 = i21;
            } else if (i19 == 2) {
                typeK = constraintAnchor.k();
                type = ConstraintAnchor.Type.TOP;
                if (typeK != type) {
                    solverVariableQ = dVar.q(this.f6861c0.q(type));
                    solverVariableQ2 = dVar.q(this.f6861c0.q(ConstraintAnchor.Type.BOTTOM));
                } else {
                    solverVariableQ = dVar.q(this.f6861c0.q(type));
                    solverVariableQ2 = dVar.q(this.f6861c0.q(ConstraintAnchor.Type.BOTTOM));
                }
                SolverVariable solverVariable7 = solverVariableQ;
                SolverVariable solverVariable8 = solverVariableQ2;
                androidx.constraintlayout.core.b bVarR3 = dVar.r();
                i23 = i39 == true ? 1 : 0;
                i24 = i21;
                dVar.d(bVarR3.k(solverVariableQ4, solverVariableQ3, solverVariable8, solverVariable7, f12));
                if (z11) {
                    z21 = false;
                }
                z22 = z21;
                z23 = z13;
            } else {
                i23 = i39;
                i24 = i21;
                z22 = z21;
                z23 = true;
            }
        }
        if (z20) {
            i25 = 0;
            c11 = 2;
        } else {
            i25 = 0;
            c11 = 2;
        }
        if (i23 >= c11) {
        }
    }

    public float A() {
        return this.f6889q0;
    }

    public int B() {
        return this.J0;
    }

    public DimensionBehaviour C() {
        return this.f6859b0[0];
    }

    public int D() {
        ConstraintAnchor constraintAnchor = this.Q;
        int i11 = constraintAnchor != null ? constraintAnchor.f6852g : 0;
        ConstraintAnchor constraintAnchor2 = this.S;
        return constraintAnchor2 != null ? i11 + constraintAnchor2.f6852g : i11;
    }

    public void D0(boolean z10) {
        this.f6899v0 = z10;
    }

    public int E() {
        return this.O;
    }

    public void E0(int i11) {
        this.f6883n0 = i11;
        this.L = i11 > 0;
    }

    public int F() {
        return this.P;
    }

    public void F0(Object obj) {
        this.f6893s0 = obj;
    }

    public int G(int i11) {
        if (i11 == 0) {
            return Y();
        }
        if (i11 == 1) {
            return z();
        }
        return 0;
    }

    public void G0(String str) {
        this.f6901w0 = str;
    }

    public int H() {
        return this.J[1];
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[PHI: r0
  0x0086: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:46:0x0086, B:36:0x007f, B:24:0x0051, B:26:0x0057, B:28:0x0063, B:30:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please report as a decompilation issue!!! */
    public void H0(String str) {
        float fAbs;
        int i11 = 0;
        if (str == null || str.length() == 0) {
            this.f6867f0 = 0.0f;
            return;
        }
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i12 = 0;
        int i13 = -1;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (!strSubstring.equalsIgnoreCase("W")) {
                i12 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
            }
            i13 = i12;
            i12 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i12);
                if (strSubstring2.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring2);
                } else {
                    fAbs = i11;
                }
            } else {
                String strSubstring3 = str.substring(i12, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = i11;
                } else {
                    float f11 = Float.parseFloat(strSubstring3);
                    float f12 = Float.parseFloat(strSubstring4);
                    if (f11 <= 0.0f || f12 <= 0.0f) {
                        fAbs = i11;
                    } else {
                        fAbs = i13 == 1 ? Math.abs(f12 / f11) : Math.abs(f11 / f12);
                    }
                }
            }
        } catch (NumberFormatException unused) {
        }
        i11 = (fAbs > i11 ? 1 : (fAbs == i11 ? 0 : -1));
        if (i11 > 0) {
            this.f6867f0 = fAbs;
            this.f6869g0 = i13;
        }
    }

    public int I() {
        return this.J[0];
    }

    public void I0(int i11) {
        if (this.L) {
            int i12 = i11 - this.f6883n0;
            int i13 = this.f6865e0 + i12;
            this.f6873i0 = i12;
            this.R.t(i12);
            this.T.t(i13);
            this.U.t(i11);
            this.f6888q = true;
        }
    }

    public int J() {
        return this.f6887p0;
    }

    public void J0(int i11, int i12) {
        if (this.f6886p) {
            return;
        }
        this.Q.t(i11);
        this.S.t(i12);
        this.f6871h0 = i11;
        this.f6863d0 = i12 - i11;
        this.f6886p = true;
    }

    public int K() {
        return this.f6885o0;
    }

    public void K0(int i11) {
        this.Q.t(i11);
        this.f6871h0 = i11;
    }

    public ConstraintWidget L(int i11) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i11 != 0) {
            if (i11 == 1 && (constraintAnchor2 = (constraintAnchor = this.T).f6851f) != null && constraintAnchor2.f6851f == constraintAnchor) {
                return constraintAnchor2.f6849d;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.S;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6851f;
        if (constraintAnchor4 == null || constraintAnchor4.f6851f != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.f6849d;
    }

    public void L0(int i11) {
        this.R.t(i11);
        this.f6873i0 = i11;
    }

    public ConstraintWidget M() {
        return this.f6861c0;
    }

    public void M0(int i11, int i12) {
        if (this.f6888q) {
            return;
        }
        this.R.t(i11);
        this.T.t(i12);
        this.f6873i0 = i11;
        this.f6865e0 = i12 - i11;
        if (this.L) {
            this.U.t(i11 + this.f6883n0);
        }
        this.f6888q = true;
    }

    public ConstraintWidget N(int i11) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i11 != 0) {
            if (i11 == 1 && (constraintAnchor2 = (constraintAnchor = this.R).f6851f) != null && constraintAnchor2.f6851f == constraintAnchor) {
                return constraintAnchor2.f6849d;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.Q;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6851f;
        if (constraintAnchor4 == null || constraintAnchor4.f6851f != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.f6849d;
    }

    public void N0(int i11, int i12, int i13, int i14) {
        int i15;
        int i16;
        int i17 = i13 - i11;
        int i18 = i14 - i12;
        this.f6871h0 = i11;
        this.f6873i0 = i12;
        if (this.f6897u0 == 8) {
            this.f6863d0 = 0;
            this.f6865e0 = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.f6859b0;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i17 < (i16 = this.f6863d0)) {
            i17 = i16;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i18 < (i15 = this.f6865e0)) {
            i18 = i15;
        }
        this.f6863d0 = i17;
        this.f6865e0 = i18;
        int i19 = this.f6887p0;
        if (i18 < i19) {
            this.f6865e0 = i19;
        }
        int i20 = this.f6885o0;
        if (i17 < i20) {
            this.f6863d0 = i20;
        }
        int i21 = this.A;
        if (i21 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f6863d0 = Math.min(this.f6863d0, i21);
        }
        int i22 = this.D;
        if (i22 > 0 && this.f6859b0[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f6865e0 = Math.min(this.f6865e0, i22);
        }
        int i23 = this.f6863d0;
        if (i17 != i23) {
            this.f6878l = i23;
        }
        int i24 = this.f6865e0;
        if (i18 != i24) {
            this.f6880m = i24;
        }
    }

    public int O() {
        return Z() + this.f6863d0;
    }

    public void O0(boolean z10) {
        this.L = z10;
    }

    public WidgetRun P(int i11) {
        if (i11 == 0) {
            return this.f6864e;
        }
        if (i11 == 1) {
            return this.f6866f;
        }
        return null;
    }

    public void P0(int i11) {
        this.f6865e0 = i11;
        int i12 = this.f6887p0;
        if (i11 < i12) {
            this.f6865e0 = i12;
        }
    }

    public void Q(StringBuilder sb2) {
        sb2.append("  " + this.f6884o + ":{\n");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("    actualWidth:");
        sb3.append(this.f6863d0);
        sb2.append(sb3.toString());
        sb2.append("\n");
        sb2.append("    actualHeight:" + this.f6865e0);
        sb2.append("\n");
        sb2.append("    actualLeft:" + this.f6871h0);
        sb2.append("\n");
        sb2.append("    actualTop:" + this.f6873i0);
        sb2.append("\n");
        S(sb2, TtmlNode.LEFT, this.Q);
        S(sb2, IntegrationConstants.TAB_BAR_POSITION_TOP, this.R);
        S(sb2, TtmlNode.RIGHT, this.S);
        S(sb2, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, this.T);
        S(sb2, "baseline", this.U);
        S(sb2, "centerX", this.V);
        S(sb2, "centerY", this.W);
        R(sb2, "    width", this.f6863d0, this.f6885o0, this.J[0], this.f6878l, this.f6906z, this.f6900w, this.B, this.N0[0]);
        R(sb2, "    height", this.f6865e0, this.f6887p0, this.J[1], this.f6880m, this.C, this.f6902x, this.E, this.N0[1]);
        C0(sb2, "    dimensionRatio", this.f6867f0, this.f6869g0);
        A0(sb2, "    horizontalBias", this.f6889q0, U0);
        A0(sb2, "    verticalBias", this.f6891r0, U0);
        B0(sb2, "    horizontalChainStyle", this.J0, 0);
        B0(sb2, "    verticalChainStyle", this.K0, 0);
        sb2.append("  }");
    }

    public void Q0(float f11) {
        this.f6889q0 = f11;
    }

    public void R0(int i11) {
        this.J0 = i11;
    }

    public void S0(int i11, int i12) {
        this.f6871h0 = i11;
        int i13 = i12 - i11;
        this.f6863d0 = i13;
        int i14 = this.f6885o0;
        if (i13 < i14) {
            this.f6863d0 = i14;
        }
    }

    public float T() {
        return this.f6891r0;
    }

    public void T0(DimensionBehaviour dimensionBehaviour) {
        this.f6859b0[0] = dimensionBehaviour;
    }

    public int U() {
        return this.K0;
    }

    public void U0(int i11, int i12, int i13, float f11) {
        this.f6900w = i11;
        this.f6906z = i12;
        if (i13 == Integer.MAX_VALUE) {
            i13 = 0;
        }
        this.A = i13;
        this.B = f11;
        if (f11 <= 0.0f || f11 >= 1.0f || i11 != 0) {
            return;
        }
        this.f6900w = 2;
    }

    public DimensionBehaviour V() {
        return this.f6859b0[1];
    }

    public void V0(float f11) {
        this.N0[0] = f11;
    }

    public int W() {
        int i11 = this.Q != null ? this.R.f6852g : 0;
        return this.S != null ? i11 + this.T.f6852g : i11;
    }

    protected void W0(int i11, boolean z10) {
        this.f6857a0[i11] = z10;
    }

    public int X() {
        return this.f6897u0;
    }

    public void X0(boolean z10) {
        this.M = z10;
    }

    public int Y() {
        if (this.f6897u0 == 8) {
            return 0;
        }
        return this.f6863d0;
    }

    public void Y0(boolean z10) {
        this.N = z10;
    }

    public int Z() {
        ConstraintWidget constraintWidget = this.f6861c0;
        return (constraintWidget == null || !(constraintWidget instanceof d)) ? this.f6871h0 : ((d) constraintWidget).f7018d1 + this.f6871h0;
    }

    public void Z0(int i11, int i12) {
        this.O = i11;
        this.P = i12;
        c1(false);
    }

    public int a0() {
        ConstraintWidget constraintWidget = this.f6861c0;
        return (constraintWidget == null || !(constraintWidget instanceof d)) ? this.f6873i0 : ((d) constraintWidget).f7019e1 + this.f6873i0;
    }

    public void a1(int i11) {
        this.J[1] = i11;
    }

    public boolean b0() {
        return this.L;
    }

    public void b1(int i11) {
        this.J[0] = i11;
    }

    public boolean c0(int i11) {
        if (i11 == 0) {
            return (this.Q.f6851f != null ? 1 : 0) + (this.S.f6851f != null ? 1 : 0) < 2;
        }
        return ((this.R.f6851f != null ? 1 : 0) + (this.T.f6851f != null ? 1 : 0)) + (this.U.f6851f != null ? 1 : 0) < 2;
    }

    public void c1(boolean z10) {
        this.f6872i = z10;
    }

    public boolean d0() {
        int size = this.Z.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((ConstraintAnchor) this.Z.get(i11)).m()) {
                return true;
            }
        }
        return false;
    }

    public void d1(int i11) {
        if (i11 < 0) {
            this.f6887p0 = 0;
        } else {
            this.f6887p0 = i11;
        }
    }

    public void e(d dVar, androidx.constraintlayout.core.d dVar2, HashSet hashSet, int i11, boolean z10) {
        if (z10) {
            if (!hashSet.contains(this)) {
                return;
            }
            g.a(dVar, dVar2, this);
            hashSet.remove(this);
            g(dVar2, dVar.Y1(64));
        }
        if (i11 == 0) {
            HashSet hashSetD = this.Q.d();
            if (hashSetD != null) {
                Iterator it = hashSetD.iterator();
                while (it.hasNext()) {
                    ((ConstraintAnchor) it.next()).f6849d.e(dVar, dVar2, hashSet, i11, true);
                }
            }
            HashSet hashSetD2 = this.S.d();
            if (hashSetD2 != null) {
                Iterator it2 = hashSetD2.iterator();
                while (it2.hasNext()) {
                    ((ConstraintAnchor) it2.next()).f6849d.e(dVar, dVar2, hashSet, i11, true);
                }
                return;
            }
            return;
        }
        HashSet hashSetD3 = this.R.d();
        if (hashSetD3 != null) {
            Iterator it3 = hashSetD3.iterator();
            while (it3.hasNext()) {
                ((ConstraintAnchor) it3.next()).f6849d.e(dVar, dVar2, hashSet, i11, true);
            }
        }
        HashSet hashSetD4 = this.T.d();
        if (hashSetD4 != null) {
            Iterator it4 = hashSetD4.iterator();
            while (it4.hasNext()) {
                ((ConstraintAnchor) it4.next()).f6849d.e(dVar, dVar2, hashSet, i11, true);
            }
        }
        HashSet hashSetD5 = this.U.d();
        if (hashSetD5 != null) {
            Iterator it5 = hashSetD5.iterator();
            while (it5.hasNext()) {
                ((ConstraintAnchor) it5.next()).f6849d.e(dVar, dVar2, hashSet, i11, true);
            }
        }
    }

    public boolean e0() {
        return (this.f6878l == -1 && this.f6880m == -1) ? false : true;
    }

    public void e1(int i11) {
        if (i11 < 0) {
            this.f6885o0 = 0;
        } else {
            this.f6885o0 = i11;
        }
    }

    boolean f() {
        return (this instanceof i) || (this instanceof f);
    }

    public boolean f0(int i11, int i12) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i11 == 0) {
            ConstraintAnchor constraintAnchor3 = this.Q.f6851f;
            return constraintAnchor3 != null && constraintAnchor3.n() && (constraintAnchor2 = this.S.f6851f) != null && constraintAnchor2.n() && (this.S.f6851f.e() - this.S.f()) - (this.Q.f6851f.e() + this.Q.f()) >= i12;
        }
        ConstraintAnchor constraintAnchor4 = this.R.f6851f;
        return constraintAnchor4 != null && constraintAnchor4.n() && (constraintAnchor = this.T.f6851f) != null && constraintAnchor.n() && (this.T.f6851f.e() - this.T.f()) - (this.R.f6851f.e() + this.R.f()) >= i12;
        return false;
    }

    public void f1(int i11, int i12) {
        this.f6871h0 = i11;
        this.f6873i0 = i12;
    }

    /* JADX WARN: Code duplicated, block: B:190:0x02db  */
    /* JADX WARN: Code duplicated, block: B:192:0x02e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:194:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:197:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:19:0x004f  */
    /* JADX WARN: Code duplicated, block: B:201:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:204:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:207:0x0305  */
    /* JADX WARN: Code duplicated, block: B:209:0x0308  */
    /* JADX WARN: Code duplicated, block: B:210:0x030b  */
    /* JADX WARN: Code duplicated, block: B:213:0x0324  */
    /* JADX WARN: Code duplicated, block: B:222:0x033a  */
    /* JADX WARN: Code duplicated, block: B:234:0x0392  */
    /* JADX WARN: Code duplicated, block: B:237:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:238:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:241:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:242:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:245:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:246:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:249:0x044b  */
    /* JADX WARN: Code duplicated, block: B:251:0x0451  */
    /* JADX WARN: Code duplicated, block: B:253:0x0457  */
    /* JADX WARN: Code duplicated, block: B:266:0x04af  */
    /* JADX WARN: Code duplicated, block: B:270:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:271:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:273:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:311:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:314:0x05af  */
    /* JADX WARN: Code duplicated, block: B:316:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:317:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:320:0x05dd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r15v5, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r53v0, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v6 */
    public void g(androidx.constraintlayout.core.d dVar, boolean z10) {
        boolean z11;
        boolean z12;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        boolean z13;
        boolean z14;
        int i11;
        boolean z15;
        int i12;
        boolean z16;
        DimensionBehaviour dimensionBehaviour;
        DimensionBehaviour dimensionBehaviour2;
        boolean z17;
        int i13;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        int i14;
        int i15;
        int i16;
        ?? r15;
        int i17;
        ?? r16;
        int i18;
        ?? r27;
        l lVar;
        DependencyNode dependencyNode;
        ConstraintWidget constraintWidget3;
        SolverVariable solverVariableQ;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariableQ2;
        DimensionBehaviour[] dimensionBehaviourArr;
        boolean z18;
        j jVar;
        int i19;
        int i20;
        boolean zK0;
        boolean zM0;
        j jVar2;
        l lVar2;
        SolverVariable solverVariableQ3 = dVar.q(this.Q);
        SolverVariable solverVariableQ4 = dVar.q(this.S);
        SolverVariable solverVariableQ5 = dVar.q(this.R);
        SolverVariable solverVariableQ6 = dVar.q(this.T);
        SolverVariable solverVariableQ7 = dVar.q(this.U);
        ConstraintWidget constraintWidget5 = this.f6861c0;
        if (constraintWidget5 == null) {
            z11 = false;
            z12 = false;
        } else {
            boolean z19 = constraintWidget5 != null && constraintWidget5.f6859b0[0] == DimensionBehaviour.WRAP_CONTENT;
            boolean z20 = constraintWidget5 != null && constraintWidget5.f6859b0[1] == DimensionBehaviour.WRAP_CONTENT;
            int i21 = this.f6898v;
            if (i21 == 1) {
                z11 = z19;
                z12 = false;
            } else if (i21 == 2) {
                z12 = z20;
                z11 = false;
            } else if (i21 != 3) {
                z12 = z20;
                z11 = z19;
            } else {
                z11 = false;
                z12 = false;
            }
        }
        if (this.f6897u0 == 8 && !this.f6899v0 && !d0()) {
            boolean[] zArr = this.f6857a0;
            if (!zArr[0] && !zArr[1]) {
                return;
            }
        }
        boolean z21 = this.f6886p;
        if (z21 || this.f6888q) {
            if (z21) {
                dVar.f(solverVariableQ3, this.f6871h0);
                dVar.f(solverVariableQ4, this.f6871h0 + this.f6863d0);
                if (z11 && (constraintWidget2 = this.f6861c0) != null) {
                    if (this.f6876k) {
                        d dVar2 = (d) constraintWidget2;
                        dVar2.D1(this.Q);
                        dVar2.C1(this.S);
                    } else {
                        dVar.h(dVar.q(constraintWidget2.S), solverVariableQ4, 0, 5);
                    }
                }
            }
            if (this.f6888q) {
                dVar.f(solverVariableQ5, this.f6873i0);
                dVar.f(solverVariableQ6, this.f6873i0 + this.f6865e0);
                if (this.U.m()) {
                    dVar.f(solverVariableQ7, this.f6873i0 + this.f6883n0);
                }
                if (z12 && (constraintWidget = this.f6861c0) != null) {
                    if (this.f6876k) {
                        d dVar3 = (d) constraintWidget;
                        dVar3.I1(this.R);
                        dVar3.H1(this.T);
                    } else {
                        dVar.h(dVar.q(constraintWidget.T), solverVariableQ6, 0, 5);
                    }
                }
            }
            if (this.f6886p && this.f6888q) {
                this.f6886p = false;
                this.f6888q = false;
                return;
            }
        }
        androidx.constraintlayout.core.e eVar = androidx.constraintlayout.core.d.f6652x;
        if (eVar != null) {
            eVar.f6698z++;
        }
        if (z10 && (jVar2 = this.f6864e) != null && (lVar2 = this.f6866f) != null) {
            DependencyNode dependencyNode2 = jVar2.f6930h;
            if (dependencyNode2.f6920j && jVar2.f6931i.f6920j && lVar2.f6930h.f6920j && lVar2.f6931i.f6920j) {
                if (eVar != null) {
                    eVar.f6690r++;
                }
                dVar.f(solverVariableQ3, dependencyNode2.f6917g);
                dVar.f(solverVariableQ4, this.f6864e.f6931i.f6917g);
                dVar.f(solverVariableQ5, this.f6866f.f6930h.f6917g);
                dVar.f(solverVariableQ6, this.f6866f.f6931i.f6917g);
                dVar.f(solverVariableQ7, this.f6866f.f6975k.f6917g);
                if (this.f6861c0 != null) {
                    if (z11 && this.f6868g[0] && !k0()) {
                        dVar.h(dVar.q(this.f6861c0.S), solverVariableQ4, 0, 8);
                    }
                    if (z12 && this.f6868g[1] && !m0()) {
                        dVar.h(dVar.q(this.f6861c0.T), solverVariableQ6, 0, 8);
                    }
                }
                this.f6886p = false;
                this.f6888q = false;
                return;
            }
        }
        if (eVar != null) {
            eVar.f6691s++;
        }
        if (this.f6861c0 != null) {
            if (h0(0)) {
                ((d) this.f6861c0).z1(this, 0);
                zK0 = true;
            } else {
                zK0 = k0();
            }
            if (h0(1)) {
                ((d) this.f6861c0).z1(this, 1);
                zM0 = true;
            } else {
                zM0 = m0();
            }
            if (!zK0 && z11 && this.f6897u0 != 8 && this.Q.f6851f == null && this.S.f6851f == null) {
                dVar.h(dVar.q(this.f6861c0.S), solverVariableQ4, 0, 1);
            }
            if (!zM0 && z12 && this.f6897u0 != 8 && this.R.f6851f == null && this.T.f6851f == null && this.U == null) {
                dVar.h(dVar.q(this.f6861c0.T), solverVariableQ6, 0, 1);
            }
            z14 = zK0;
            z13 = zM0;
        } else {
            z13 = false;
            z14 = false;
        }
        int i22 = this.f6863d0;
        int i23 = this.f6885o0;
        if (i22 >= i23) {
            i23 = i22;
        }
        int i24 = this.f6865e0;
        int i25 = this.f6887p0;
        if (i24 >= i25) {
            i25 = i24;
        }
        DimensionBehaviour[] dimensionBehaviourArr2 = this.f6859b0;
        DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr2[0];
        DimensionBehaviour dimensionBehaviour4 = DimensionBehaviour.MATCH_CONSTRAINT;
        int i26 = i23;
        boolean z22 = dimensionBehaviour3 != dimensionBehaviour4;
        DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr2[1];
        int i27 = i25;
        SolverVariable solverVariable3 = solverVariableQ7;
        boolean z23 = dimensionBehaviour5 != dimensionBehaviour4;
        int i28 = this.f6869g0;
        this.H = i28;
        SolverVariable solverVariable4 = solverVariableQ6;
        float f11 = this.f6867f0;
        this.I = f11;
        SolverVariable solverVariable5 = solverVariableQ5;
        int i29 = this.f6900w;
        int i30 = this.f6902x;
        if (f11 > 0.0f && this.f6897u0 != 8) {
            if (dimensionBehaviour3 == dimensionBehaviour4 && i29 == 0) {
                i29 = 3;
            }
            if (dimensionBehaviour5 == dimensionBehaviour4 && i30 == 0) {
                i30 = 3;
            }
            if (dimensionBehaviour3 == dimensionBehaviour4 && dimensionBehaviour5 == dimensionBehaviour4) {
                i20 = 3;
                if (i29 == 3 && i30 == 3) {
                    s1(z11, z12, z22, z23);
                }
                i26 = i26;
                i11 = i27;
                z15 = true;
                int[] iArr = this.f6904y;
                iArr[0] = i29;
                iArr[1] = i30;
                this.f6870h = z15;
                if (z15) {
                    int i31 = this.H;
                    i12 = -1;
                    boolean z24 = i31 != 0 || i31 == -1;
                    if (z15 || !((i19 = this.H) == 1 || i19 == i12)) {
                        z16 = false;
                    } else {
                        z16 = true;
                    }
                    dimensionBehaviour = this.f6859b0[0];
                    dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour2 || !(this instanceof d)) {
                        z17 = false;
                    } else {
                        z17 = true;
                    }
                    if (z17) {
                        i13 = 0;
                    } else {
                        i13 = i26;
                    }
                    boolean z25 = !this.X.o();
                    boolean[] zArr2 = this.f6857a0;
                    boolean z26 = zArr2[0];
                    boolean z27 = zArr2[1];
                    if (this.f6894t != 2 || this.f6886p) {
                        solverVariable = solverVariableQ4;
                        solverVariable2 = solverVariableQ3;
                    } else if (!z10 || (jVar = this.f6864e) == null) {
                        constraintWidget3 = this.f6861c0;
                        if (constraintWidget3 != null) {
                            solverVariableQ = dVar.q(constraintWidget3.S);
                        } else {
                            solverVariableQ = null;
                        }
                        constraintWidget4 = this.f6861c0;
                        if (constraintWidget4 != null) {
                            solverVariableQ2 = dVar.q(constraintWidget4.Q);
                        } else {
                            solverVariableQ2 = null;
                        }
                        boolean z28 = this.f6868g[0];
                        dimensionBehaviourArr = this.f6859b0;
                        DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[0];
                        ConstraintAnchor constraintAnchor = this.Q;
                        ConstraintAnchor constraintAnchor2 = this.S;
                        int i32 = this.f6871h0;
                        int i33 = this.f6885o0;
                        int i34 = this.J[0];
                        float f12 = this.f6889q0;
                        if (dimensionBehaviourArr[1] == dimensionBehaviour4) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        solverVariable = solverVariableQ4;
                        solverVariable2 = solverVariableQ3;
                        i(dVar, true, z11, z12, z28, solverVariableQ2, solverVariableQ, dimensionBehaviour6, z17, constraintAnchor, constraintAnchor2, i32, i13, i33, i34, f12, z24, z18, z14, z13, z26, i29, i30, this.f6906z, this.A, this.B, z25);
                    } else {
                        DependencyNode dependencyNode3 = jVar.f6930h;
                        if (!dependencyNode3.f6920j || !jVar.f6931i.f6920j) {
                            constraintWidget3 = this.f6861c0;
                            if (constraintWidget3 != null) {
                                solverVariableQ = dVar.q(constraintWidget3.S);
                            } else {
                                solverVariableQ = null;
                            }
                            constraintWidget4 = this.f6861c0;
                            if (constraintWidget4 != null) {
                                solverVariableQ2 = dVar.q(constraintWidget4.Q);
                            } else {
                                solverVariableQ2 = null;
                            }
                            boolean z29 = this.f6868g[0];
                            dimensionBehaviourArr = this.f6859b0;
                            DimensionBehaviour dimensionBehaviour7 = dimensionBehaviourArr[0];
                            ConstraintAnchor constraintAnchor3 = this.Q;
                            ConstraintAnchor constraintAnchor4 = this.S;
                            int i35 = this.f6871h0;
                            int i36 = this.f6885o0;
                            int i37 = this.J[0];
                            float f13 = this.f6889q0;
                            if (dimensionBehaviourArr[1] == dimensionBehaviour4) {
                                z18 = true;
                            } else {
                                z18 = false;
                            }
                            solverVariable = solverVariableQ4;
                            solverVariable2 = solverVariableQ3;
                            i(dVar, true, z11, z12, z29, solverVariableQ2, solverVariableQ, dimensionBehaviour7, z17, constraintAnchor3, constraintAnchor4, i35, i13, i36, i37, f13, z24, z18, z14, z13, z26, i29, i30, this.f6906z, this.A, this.B, z25);
                        } else if (z10) {
                            dVar.f(solverVariableQ3, dependencyNode3.f6917g);
                            dVar.f(solverVariableQ4, this.f6864e.f6931i.f6917g);
                            if (this.f6861c0 != null && z11 && this.f6868g[0] && !k0()) {
                                dVar.h(dVar.q(this.f6861c0.S), solverVariableQ4, 0, 8);
                            }
                            solverVariable = solverVariableQ4;
                            solverVariable2 = solverVariableQ3;
                        } else {
                            solverVariable = solverVariableQ4;
                            solverVariable2 = solverVariableQ3;
                        }
                    }
                    if (z10) {
                        ?? r17 = this;
                        lVar = r17.f6866f;
                        if (lVar != null) {
                            dependencyNode = lVar.f6930h;
                            if (!dependencyNode.f6920j && lVar.f6931i.f6920j) {
                                dVar = dVar;
                                solverVariable5 = solverVariable5;
                                dVar.f(solverVariable5, dependencyNode.f6917g);
                                solverVariable4 = solverVariable4;
                                dVar.f(solverVariable4, r17.f6866f.f6931i.f6917g);
                                solverVariable3 = solverVariable3;
                                dVar.f(solverVariable3, r17.f6866f.f6975k.f6917g);
                                ConstraintWidget constraintWidget6 = r17.f6861c0;
                                if (constraintWidget6 == null || z13 || !z12) {
                                    i14 = 8;
                                    i15 = 0;
                                    i16 = 1;
                                } else {
                                    i16 = 1;
                                    if (r17.f6868g[1]) {
                                        i14 = 8;
                                        i15 = 0;
                                        dVar.h(dVar.q(constraintWidget6.T), solverVariable4, 0, 8);
                                    } else {
                                        i14 = 8;
                                        i15 = 0;
                                    }
                                }
                                i17 = i15;
                                r16 = r17;
                            }
                            if (r16.f6896u == 2) {
                                i18 = i15;
                            } else {
                                i18 = i17;
                            }
                            if (i18 == 0 && !r16.f6888q) {
                                ?? r11 = (r16.f6859b0[i16] == dimensionBehaviour2 && (r16 instanceof d)) ? i16 : i15;
                                if (r11 != 0) {
                                    i11 = i15;
                                }
                                ConstraintWidget constraintWidget7 = r16.f6861c0;
                                SolverVariable solverVariableQ8 = constraintWidget7 != null ? dVar.q(constraintWidget7.T) : null;
                                ConstraintWidget constraintWidget8 = r16.f6861c0;
                                SolverVariable solverVariableQ9 = constraintWidget8 != null ? dVar.q(constraintWidget8.R) : null;
                                if (r16.f6883n0 > 0 || r16.f6897u0 == i14) {
                                    ConstraintAnchor constraintAnchor5 = r16.U;
                                    if (constraintAnchor5.f6851f != null) {
                                        dVar.e(solverVariable3, solverVariable5, r(), i14);
                                        dVar.e(solverVariable3, dVar.q(r16.U.f6851f), r16.U.f(), i14);
                                        if (z12 != 0) {
                                            dVar.h(solverVariableQ8, dVar.q(r16.T), i15, 5);
                                        }
                                        r27 = i15;
                                    } else {
                                        if (r16.f6897u0 == i14) {
                                            dVar.e(solverVariable3, solverVariable5, constraintAnchor5.f(), i14);
                                        } else {
                                            dVar.e(solverVariable3, solverVariable5, r(), i14);
                                        }
                                        r27 = z25;
                                    }
                                } else {
                                    r27 = z25;
                                }
                                boolean z30 = r16.f6868g[i16];
                                DimensionBehaviour[] dimensionBehaviourArr3 = r16.f6859b0;
                                i(dVar, false, z12, z11, z30, solverVariableQ9, solverVariableQ8, dimensionBehaviourArr3[i16], r11, r16.R, r16.T, r16.f6873i0, i11, r16.f6887p0, r16.J[i16], r16.f6891r0, z16, dimensionBehaviourArr3[0] == dimensionBehaviour4, z13, z14, z27, i30, i29, r16.C, r16.D, r16.E, r27);
                            }
                            if (z15) {
                                if (this.H == 1) {
                                    dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                                } else {
                                    dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                                }
                            }
                            if (this.X.o()) {
                                dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
                            }
                            this.f6886p = false;
                            this.f6888q = false;
                        }
                        i14 = 8;
                        i15 = 0;
                        i16 = 1;
                        r15 = r17;
                    } else {
                        i14 = 8;
                        i15 = 0;
                        i16 = 1;
                        r15 = this;
                    }
                    i17 = i16;
                    r16 = r15;
                    if (r16.f6896u == 2) {
                        i18 = i15;
                    } else {
                        i18 = i17;
                    }
                    if (i18 == 0) {
                    }
                    if (z15) {
                        if (this.H == 1) {
                            dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                        } else {
                            dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                        }
                    }
                    if (this.X.o()) {
                        dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
                    }
                    this.f6886p = false;
                    this.f6888q = false;
                }
                i12 = -1;
                if (z15) {
                    z16 = false;
                } else {
                    z16 = false;
                }
                dimensionBehaviour = this.f6859b0[0];
                dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour == dimensionBehaviour2) {
                    z17 = false;
                } else {
                    z17 = false;
                }
                if (z17) {
                    i13 = 0;
                } else {
                    i13 = i26;
                }
                boolean z210 = !this.X.o();
                boolean[] zArr3 = this.f6857a0;
                boolean z211 = zArr3[0];
                boolean z212 = zArr3[1];
                if (this.f6894t != 2) {
                    solverVariable = solverVariableQ4;
                    solverVariable2 = solverVariableQ3;
                } else {
                    solverVariable = solverVariableQ4;
                    solverVariable2 = solverVariableQ3;
                }
                if (z10) {
                    ?? r18 = this;
                    lVar = r18.f6866f;
                    if (lVar != null) {
                        dependencyNode = lVar.f6930h;
                        if (!dependencyNode.f6920j) {
                        }
                    }
                    i14 = 8;
                    i15 = 0;
                    i16 = 1;
                    r15 = r18;
                } else {
                    i14 = 8;
                    i15 = 0;
                    i16 = 1;
                    r15 = this;
                }
                i17 = i16;
                r16 = r15;
                if (r16.f6896u == 2) {
                    i18 = i15;
                } else {
                    i18 = i17;
                }
                if (i18 == 0) {
                }
                if (z15) {
                    if (this.H == 1) {
                        dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                    } else {
                        dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                    }
                }
                if (this.X.o()) {
                    dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
                }
                this.f6886p = false;
                this.f6888q = false;
            }
            i20 = 3;
            if (dimensionBehaviour3 == dimensionBehaviour4 && i29 == i20) {
                this.H = 0;
                int i38 = (int) (f11 * i24);
                if (dimensionBehaviour5 != dimensionBehaviour4) {
                    i29 = 4;
                    i30 = i30;
                    i11 = i27;
                    z15 = false;
                    i26 = i38;
                } else {
                    i26 = i38;
                    i11 = i27;
                    z15 = true;
                }
            } else {
                if (dimensionBehaviour5 == dimensionBehaviour4 && i30 == i20) {
                    this.H = 1;
                    if (i28 == -1) {
                        this.I = 1.0f / f11;
                    }
                    int i39 = (int) (this.I * i22);
                    if (dimensionBehaviour3 != dimensionBehaviour4) {
                        i30 = 4;
                        i11 = i39;
                        i29 = i29;
                    } else {
                        i11 = i39;
                        i29 = i29;
                        i30 = i30;
                        i26 = i26;
                    }
                } else {
                    i26 = i26;
                    i11 = i27;
                }
                z15 = true;
            }
            int[] iArr2 = this.f6904y;
            iArr2[0] = i29;
            iArr2[1] = i30;
            this.f6870h = z15;
            if (z15) {
                int i310 = this.H;
                i12 = -1;
                if (i310 != 0) {
                }
                if (z15) {
                    z16 = false;
                } else {
                    z16 = false;
                }
                dimensionBehaviour = this.f6859b0[0];
                dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour == dimensionBehaviour2) {
                    z17 = false;
                } else {
                    z17 = false;
                }
                if (z17) {
                    i13 = 0;
                } else {
                    i13 = i26;
                }
                boolean z213 = !this.X.o();
                boolean[] zArr4 = this.f6857a0;
                boolean z214 = zArr4[0];
                boolean z215 = zArr4[1];
                if (this.f6894t != 2) {
                    solverVariable = solverVariableQ4;
                    solverVariable2 = solverVariableQ3;
                } else {
                    solverVariable = solverVariableQ4;
                    solverVariable2 = solverVariableQ3;
                }
                if (z10) {
                    ?? r19 = this;
                    lVar = r19.f6866f;
                    if (lVar != null) {
                        dependencyNode = lVar.f6930h;
                        if (!dependencyNode.f6920j) {
                        }
                    }
                    i14 = 8;
                    i15 = 0;
                    i16 = 1;
                    r15 = r19;
                } else {
                    i14 = 8;
                    i15 = 0;
                    i16 = 1;
                    r15 = this;
                }
                i17 = i16;
                r16 = r15;
                if (r16.f6896u == 2) {
                    i18 = i15;
                } else {
                    i18 = i17;
                }
                if (i18 == 0) {
                }
                if (z15) {
                    if (this.H == 1) {
                        dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                    } else {
                        dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                    }
                }
                if (this.X.o()) {
                    dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
                }
                this.f6886p = false;
                this.f6888q = false;
            }
            i12 = -1;
            if (z15) {
                z16 = false;
            } else {
                z16 = false;
            }
            dimensionBehaviour = this.f6859b0[0];
            dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z17 = false;
            } else {
                z17 = false;
            }
            if (z17) {
                i13 = 0;
            } else {
                i13 = i26;
            }
            boolean z216 = !this.X.o();
            boolean[] zArr5 = this.f6857a0;
            boolean z217 = zArr5[0];
            boolean z218 = zArr5[1];
            if (this.f6894t != 2) {
                solverVariable = solverVariableQ4;
                solverVariable2 = solverVariableQ3;
            } else {
                solverVariable = solverVariableQ4;
                solverVariable2 = solverVariableQ3;
            }
            if (z10) {
                ?? r110 = this;
                lVar = r110.f6866f;
                if (lVar != null) {
                    dependencyNode = lVar.f6930h;
                    if (!dependencyNode.f6920j) {
                    }
                }
                i14 = 8;
                i15 = 0;
                i16 = 1;
                r15 = r110;
            } else {
                i14 = 8;
                i15 = 0;
                i16 = 1;
                r15 = this;
            }
            i17 = i16;
            r16 = r15;
            if (r16.f6896u == 2) {
                i18 = i15;
            } else {
                i18 = i17;
            }
            if (i18 == 0) {
            }
            if (z15) {
                if (this.H == 1) {
                    dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                } else {
                    dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                }
            }
            if (this.X.o()) {
                dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
            }
            this.f6886p = false;
            this.f6888q = false;
        }
        i29 = i29;
        i30 = i30;
        i11 = i27;
        z15 = false;
        int[] iArr3 = this.f6904y;
        iArr3[0] = i29;
        iArr3[1] = i30;
        this.f6870h = z15;
        if (z15) {
            int i311 = this.H;
            i12 = -1;
            if (i311 != 0) {
            }
            if (z15) {
                z16 = false;
            } else {
                z16 = false;
            }
            dimensionBehaviour = this.f6859b0[0];
            dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour == dimensionBehaviour2) {
                z17 = false;
            } else {
                z17 = false;
            }
            if (z17) {
                i13 = 0;
            } else {
                i13 = i26;
            }
            boolean z219 = !this.X.o();
            boolean[] zArr6 = this.f6857a0;
            boolean z2110 = zArr6[0];
            boolean z2111 = zArr6[1];
            if (this.f6894t != 2) {
                solverVariable = solverVariableQ4;
                solverVariable2 = solverVariableQ3;
            } else {
                solverVariable = solverVariableQ4;
                solverVariable2 = solverVariableQ3;
            }
            if (z10) {
                ?? r111 = this;
                lVar = r111.f6866f;
                if (lVar != null) {
                    dependencyNode = lVar.f6930h;
                    if (!dependencyNode.f6920j) {
                    }
                }
                i14 = 8;
                i15 = 0;
                i16 = 1;
                r15 = r111;
            } else {
                i14 = 8;
                i15 = 0;
                i16 = 1;
                r15 = this;
            }
            i17 = i16;
            r16 = r15;
            if (r16.f6896u == 2) {
                i18 = i15;
            } else {
                i18 = i17;
            }
            if (i18 == 0) {
            }
            if (z15) {
                if (this.H == 1) {
                    dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
                } else {
                    dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
                }
            }
            if (this.X.o()) {
                dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
            }
            this.f6886p = false;
            this.f6888q = false;
        }
        i12 = -1;
        if (z15) {
            z16 = false;
        } else {
            z16 = false;
        }
        dimensionBehaviour = this.f6859b0[0];
        dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour == dimensionBehaviour2) {
            z17 = false;
        } else {
            z17 = false;
        }
        if (z17) {
            i13 = 0;
        } else {
            i13 = i26;
        }
        boolean z2112 = !this.X.o();
        boolean[] zArr7 = this.f6857a0;
        boolean z2113 = zArr7[0];
        boolean z2114 = zArr7[1];
        if (this.f6894t != 2) {
            solverVariable = solverVariableQ4;
            solverVariable2 = solverVariableQ3;
        } else {
            solverVariable = solverVariableQ4;
            solverVariable2 = solverVariableQ3;
        }
        if (z10) {
            ?? r112 = this;
            lVar = r112.f6866f;
            if (lVar != null) {
                dependencyNode = lVar.f6930h;
                if (!dependencyNode.f6920j) {
                }
            }
            i14 = 8;
            i15 = 0;
            i16 = 1;
            r15 = r112;
        } else {
            i14 = 8;
            i15 = 0;
            i16 = 1;
            r15 = this;
        }
        i17 = i16;
        r16 = r15;
        if (r16.f6896u == 2) {
            i18 = i15;
        } else {
            i18 = i17;
        }
        if (i18 == 0) {
        }
        if (z15) {
            if (this.H == 1) {
                dVar.k(solverVariable4, solverVariable5, solverVariable, solverVariable2, this.I, 8);
            } else {
                dVar.k(solverVariable, solverVariable2, solverVariable4, solverVariable5, this.I, 8);
            }
        }
        if (this.X.o()) {
            dVar.b(this, this.X.j().h(), (float) Math.toRadians(this.K + 90.0f), this.X.f());
        }
        this.f6886p = false;
        this.f6888q = false;
    }

    public void g0(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i11, int i12) {
        q(type).b(constraintWidget.q(type2), i11, i12, true);
    }

    public void g1(ConstraintWidget constraintWidget) {
        this.f6861c0 = constraintWidget;
    }

    public boolean h() {
        return this.f6897u0 != 8;
    }

    public void h1(float f11) {
        this.f6891r0 = f11;
    }

    public boolean i0() {
        return this.f6890r;
    }

    public void i1(int i11) {
        this.K0 = i11;
    }

    public void j(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        k(type, constraintWidget, type2, 0);
    }

    public boolean j0(int i11) {
        return this.f6857a0[i11];
    }

    public void j1(int i11, int i12) {
        this.f6873i0 = i11;
        int i13 = i12 - i11;
        this.f6865e0 = i13;
        int i14 = this.f6887p0;
        if (i13 < i14) {
            this.f6865e0 = i14;
        }
    }

    public void k(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i11) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z10;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 != type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                if (type2 == type6 || type2 == ConstraintAnchor.Type.RIGHT) {
                    k(type6, constraintWidget, type2, 0);
                    k(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
                    q(type5).a(constraintWidget.q(type2), 0);
                    return;
                }
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.TOP;
                if (type2 == type7 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    k(type7, constraintWidget, type2, 0);
                    k(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    q(type5).a(constraintWidget.q(type2), 0);
                    return;
                }
                return;
            }
            ConstraintAnchor.Type type8 = ConstraintAnchor.Type.LEFT;
            ConstraintAnchor constraintAnchorQ = q(type8);
            ConstraintAnchor.Type type9 = ConstraintAnchor.Type.RIGHT;
            ConstraintAnchor constraintAnchorQ2 = q(type9);
            ConstraintAnchor.Type type10 = ConstraintAnchor.Type.TOP;
            ConstraintAnchor constraintAnchorQ3 = q(type10);
            ConstraintAnchor.Type type11 = ConstraintAnchor.Type.BOTTOM;
            ConstraintAnchor constraintAnchorQ4 = q(type11);
            boolean z11 = true;
            if ((constraintAnchorQ == null || !constraintAnchorQ.o()) && (constraintAnchorQ2 == null || !constraintAnchorQ2.o())) {
                k(type8, constraintWidget, type8, 0);
                k(type9, constraintWidget, type9, 0);
                z10 = true;
            } else {
                z10 = false;
            }
            if ((constraintAnchorQ3 == null || !constraintAnchorQ3.o()) && (constraintAnchorQ4 == null || !constraintAnchorQ4.o())) {
                k(type10, constraintWidget, type10, 0);
                k(type11, constraintWidget, type11, 0);
            } else {
                z11 = false;
            }
            if (z10 && z11) {
                q(type5).a(constraintWidget.q(type5), 0);
                return;
            }
            if (z10) {
                ConstraintAnchor.Type type12 = ConstraintAnchor.Type.CENTER_X;
                q(type12).a(constraintWidget.q(type12), 0);
                return;
            } else {
                if (z11) {
                    ConstraintAnchor.Type type13 = ConstraintAnchor.Type.CENTER_Y;
                    q(type13).a(constraintWidget.q(type13), 0);
                    return;
                }
                return;
            }
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor constraintAnchorQ5 = q(type4);
            ConstraintAnchor constraintAnchorQ6 = constraintWidget.q(type2);
            ConstraintAnchor constraintAnchorQ7 = q(ConstraintAnchor.Type.RIGHT);
            constraintAnchorQ5.a(constraintAnchorQ6, 0);
            constraintAnchorQ7.a(constraintAnchorQ6, 0);
            q(type14).a(constraintAnchorQ6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor constraintAnchorQ8 = constraintWidget.q(type2);
            q(type3).a(constraintAnchorQ8, 0);
            q(ConstraintAnchor.Type.BOTTOM).a(constraintAnchorQ8, 0);
            q(type15).a(constraintAnchorQ8, 0);
            return;
        }
        if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            q(type16).a(constraintWidget.q(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            q(type17).a(constraintWidget.q(type17), 0);
            q(type14).a(constraintWidget.q(type2), 0);
            return;
        }
        if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            q(type18).a(constraintWidget.q(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            q(type19).a(constraintWidget.q(type19), 0);
            q(type15).a(constraintWidget.q(type2), 0);
            return;
        }
        ConstraintAnchor constraintAnchorQ9 = q(type);
        ConstraintAnchor constraintAnchorQ10 = constraintWidget.q(type2);
        if (constraintAnchorQ9.p(constraintAnchorQ10)) {
            ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
            if (type == type20) {
                ConstraintAnchor constraintAnchorQ11 = q(ConstraintAnchor.Type.TOP);
                ConstraintAnchor constraintAnchorQ12 = q(ConstraintAnchor.Type.BOTTOM);
                if (constraintAnchorQ11 != null) {
                    constraintAnchorQ11.q();
                }
                if (constraintAnchorQ12 != null) {
                    constraintAnchorQ12.q();
                }
            } else if (type == ConstraintAnchor.Type.TOP || type == ConstraintAnchor.Type.BOTTOM) {
                ConstraintAnchor constraintAnchorQ13 = q(type20);
                if (constraintAnchorQ13 != null) {
                    constraintAnchorQ13.q();
                }
                ConstraintAnchor constraintAnchorQ14 = q(type5);
                if (constraintAnchorQ14.j() != constraintAnchorQ10) {
                    constraintAnchorQ14.q();
                }
                ConstraintAnchor constraintAnchorG = q(type).g();
                ConstraintAnchor constraintAnchorQ15 = q(type15);
                if (constraintAnchorQ15.o()) {
                    constraintAnchorG.q();
                    constraintAnchorQ15.q();
                }
            } else if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor constraintAnchorQ16 = q(type5);
                if (constraintAnchorQ16.j() != constraintAnchorQ10) {
                    constraintAnchorQ16.q();
                }
                ConstraintAnchor constraintAnchorG2 = q(type).g();
                ConstraintAnchor constraintAnchorQ17 = q(type14);
                if (constraintAnchorQ17.o()) {
                    constraintAnchorG2.q();
                    constraintAnchorQ17.q();
                }
            }
            constraintAnchorQ9.a(constraintAnchorQ10, i11);
        }
    }

    public boolean k0() {
        ConstraintAnchor constraintAnchor = this.Q;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f6851f;
        if (constraintAnchor2 != null && constraintAnchor2.f6851f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.S;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6851f;
        return constraintAnchor4 != null && constraintAnchor4.f6851f == constraintAnchor3;
    }

    public void k1(DimensionBehaviour dimensionBehaviour) {
        this.f6859b0[1] = dimensionBehaviour;
    }

    public void l(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i11) {
        if (constraintAnchor.h() == this) {
            k(constraintAnchor.k(), constraintAnchor2.h(), constraintAnchor2.k(), i11);
        }
    }

    public boolean l0() {
        return this.M;
    }

    public void l1(int i11, int i12, int i13, float f11) {
        this.f6902x = i11;
        this.C = i12;
        if (i13 == Integer.MAX_VALUE) {
            i13 = 0;
        }
        this.D = i13;
        this.E = f11;
        if (f11 <= 0.0f || f11 >= 1.0f || i11 != 0) {
            return;
        }
        this.f6902x = 2;
    }

    public void m(ConstraintWidget constraintWidget, float f11, int i11) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        g0(type, constraintWidget, type, i11, 0);
        this.K = f11;
    }

    public boolean m0() {
        ConstraintAnchor constraintAnchor = this.R;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f6851f;
        if (constraintAnchor2 != null && constraintAnchor2.f6851f == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.T;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f6851f;
        return constraintAnchor4 != null && constraintAnchor4.f6851f == constraintAnchor3;
    }

    public void m1(float f11) {
        this.N0[1] = f11;
    }

    public void n(ConstraintWidget constraintWidget, HashMap map) {
        this.f6894t = constraintWidget.f6894t;
        this.f6896u = constraintWidget.f6896u;
        this.f6900w = constraintWidget.f6900w;
        this.f6902x = constraintWidget.f6902x;
        int[] iArr = this.f6904y;
        int[] iArr2 = constraintWidget.f6904y;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.f6906z = constraintWidget.f6906z;
        this.A = constraintWidget.A;
        this.C = constraintWidget.C;
        this.D = constraintWidget.D;
        this.E = constraintWidget.E;
        this.F = constraintWidget.F;
        this.G = constraintWidget.G;
        this.H = constraintWidget.H;
        this.I = constraintWidget.I;
        int[] iArr3 = constraintWidget.J;
        this.J = Arrays.copyOf(iArr3, iArr3.length);
        this.K = constraintWidget.K;
        this.L = constraintWidget.L;
        this.M = constraintWidget.M;
        this.Q.q();
        this.R.q();
        this.S.q();
        this.T.q();
        this.U.q();
        this.V.q();
        this.W.q();
        this.X.q();
        this.f6859b0 = (DimensionBehaviour[]) Arrays.copyOf(this.f6859b0, 2);
        this.f6861c0 = this.f6861c0 == null ? null : (ConstraintWidget) map.get(constraintWidget.f6861c0);
        this.f6863d0 = constraintWidget.f6863d0;
        this.f6865e0 = constraintWidget.f6865e0;
        this.f6867f0 = constraintWidget.f6867f0;
        this.f6869g0 = constraintWidget.f6869g0;
        this.f6871h0 = constraintWidget.f6871h0;
        this.f6873i0 = constraintWidget.f6873i0;
        this.f6875j0 = constraintWidget.f6875j0;
        this.f6877k0 = constraintWidget.f6877k0;
        this.f6879l0 = constraintWidget.f6879l0;
        this.f6881m0 = constraintWidget.f6881m0;
        this.f6883n0 = constraintWidget.f6883n0;
        this.f6885o0 = constraintWidget.f6885o0;
        this.f6887p0 = constraintWidget.f6887p0;
        this.f6889q0 = constraintWidget.f6889q0;
        this.f6891r0 = constraintWidget.f6891r0;
        this.f6893s0 = constraintWidget.f6893s0;
        this.f6895t0 = constraintWidget.f6895t0;
        this.f6897u0 = constraintWidget.f6897u0;
        this.f6899v0 = constraintWidget.f6899v0;
        this.f6901w0 = constraintWidget.f6901w0;
        this.f6903x0 = constraintWidget.f6903x0;
        this.f6905y0 = constraintWidget.f6905y0;
        this.f6907z0 = constraintWidget.f6907z0;
        this.A0 = constraintWidget.A0;
        this.B0 = constraintWidget.B0;
        this.C0 = constraintWidget.C0;
        this.D0 = constraintWidget.D0;
        this.E0 = constraintWidget.E0;
        this.F0 = constraintWidget.F0;
        this.G0 = constraintWidget.G0;
        this.H0 = constraintWidget.H0;
        this.J0 = constraintWidget.J0;
        this.K0 = constraintWidget.K0;
        this.L0 = constraintWidget.L0;
        this.M0 = constraintWidget.M0;
        float[] fArr = this.N0;
        float[] fArr2 = constraintWidget.N0;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.O0;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.O0;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.P0;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.P0;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.Q0;
        this.Q0 = constraintWidget2 == null ? null : (ConstraintWidget) map.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.R0;
        this.R0 = constraintWidget3 != null ? (ConstraintWidget) map.get(constraintWidget3) : null;
    }

    public boolean n0() {
        return this.N;
    }

    public void n1(int i11) {
        this.f6897u0 = i11;
    }

    public void o(androidx.constraintlayout.core.d dVar) {
        dVar.q(this.Q);
        dVar.q(this.R);
        dVar.q(this.S);
        dVar.q(this.T);
        if (this.f6883n0 > 0) {
            dVar.q(this.U);
        }
    }

    public boolean o0() {
        return this.f6872i && this.f6897u0 != 8;
    }

    public void o1(int i11) {
        this.f6863d0 = i11;
        int i12 = this.f6885o0;
        if (i11 < i12) {
            this.f6863d0 = i12;
        }
    }

    public void p() {
        if (this.f6864e == null) {
            this.f6864e = new j(this);
        }
        if (this.f6866f == null) {
            this.f6866f = new l(this);
        }
    }

    public boolean p0() {
        return this.f6886p || (this.Q.n() && this.S.n());
    }

    public void p1(int i11) {
        if (i11 < 0 || i11 > 3) {
            return;
        }
        this.f6898v = i11;
    }

    public ConstraintAnchor q(ConstraintAnchor.Type type) {
        switch (a.f6908a[type.ordinal()]) {
            case 1:
                return this.Q;
            case 2:
                return this.R;
            case 3:
                return this.S;
            case 4:
                return this.T;
            case 5:
                return this.U;
            case 6:
                return this.X;
            case 7:
                return this.V;
            case 8:
                return this.W;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public boolean q0() {
        return this.f6888q || (this.R.n() && this.T.n());
    }

    public void q1(int i11) {
        this.f6871h0 = i11;
    }

    public int r() {
        return this.f6883n0;
    }

    public boolean r0() {
        return this.f6892s;
    }

    public void r1(int i11) {
        this.f6873i0 = i11;
    }

    public float s(int i11) {
        if (i11 == 0) {
            return this.f6889q0;
        }
        if (i11 == 1) {
            return this.f6891r0;
        }
        return -1.0f;
    }

    public void s0() {
        this.f6890r = true;
    }

    public void s1(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (this.H == -1) {
            if (z12 && !z13) {
                this.H = 0;
            } else if (!z12 && z13) {
                this.H = 1;
                if (this.f6869g0 == -1) {
                    this.I = 1.0f / this.I;
                }
            }
        }
        if (this.H == 0 && (!this.R.o() || !this.T.o())) {
            this.H = 1;
        } else if (this.H == 1 && (!this.Q.o() || !this.S.o())) {
            this.H = 0;
        }
        if (this.H == -1 && (!this.R.o() || !this.T.o() || !this.Q.o() || !this.S.o())) {
            if (this.R.o() && this.T.o()) {
                this.H = 0;
            } else if (this.Q.o() && this.S.o()) {
                this.I = 1.0f / this.I;
                this.H = 1;
            }
        }
        if (this.H == -1) {
            int i11 = this.f6906z;
            if (i11 > 0 && this.C == 0) {
                this.H = 0;
            } else {
                if (i11 != 0 || this.C <= 0) {
                    return;
                }
                this.I = 1.0f / this.I;
                this.H = 1;
            }
        }
    }

    public int t() {
        return a0() + this.f6865e0;
    }

    public void t0() {
        this.f6892s = true;
    }

    public void t1(boolean z10, boolean z11) {
        int i11;
        int i12;
        boolean zK = z10 & this.f6864e.k();
        boolean zK2 = z11 & this.f6866f.k();
        j jVar = this.f6864e;
        int i13 = jVar.f6930h.f6917g;
        l lVar = this.f6866f;
        int i14 = lVar.f6930h.f6917g;
        int i15 = jVar.f6931i.f6917g;
        int i16 = lVar.f6931i.f6917g;
        int i17 = i16 - i14;
        if (i15 - i13 < 0 || i17 < 0 || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE || i16 == Integer.MIN_VALUE || i16 == Integer.MAX_VALUE) {
            i15 = 0;
            i13 = 0;
            i16 = 0;
            i14 = 0;
        }
        int i18 = i15 - i13;
        int i19 = i16 - i14;
        if (zK) {
            this.f6871h0 = i13;
        }
        if (zK2) {
            this.f6873i0 = i14;
        }
        if (this.f6897u0 == 8) {
            this.f6863d0 = 0;
            this.f6865e0 = 0;
            return;
        }
        if (zK) {
            if (this.f6859b0[0] == DimensionBehaviour.FIXED && i18 < (i12 = this.f6863d0)) {
                i18 = i12;
            }
            this.f6863d0 = i18;
            int i20 = this.f6885o0;
            if (i18 < i20) {
                this.f6863d0 = i20;
            }
        }
        if (zK2) {
            if (this.f6859b0[1] == DimensionBehaviour.FIXED && i19 < (i11 = this.f6865e0)) {
                i19 = i11;
            }
            this.f6865e0 = i19;
            int i21 = this.f6887p0;
            if (i19 < i21) {
                this.f6865e0 = i21;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        String str2 = "";
        if (this.f6903x0 != null) {
            str = "type: " + this.f6903x0 + " ";
        } else {
            str = "";
        }
        sb2.append(str);
        if (this.f6901w0 != null) {
            str2 = "id: " + this.f6901w0 + " ";
        }
        sb2.append(str2);
        sb2.append("(");
        sb2.append(this.f6871h0);
        sb2.append(", ");
        sb2.append(this.f6873i0);
        sb2.append(") - (");
        sb2.append(this.f6863d0);
        sb2.append(" x ");
        sb2.append(this.f6865e0);
        sb2.append(")");
        return sb2.toString();
    }

    public Object u() {
        return this.f6893s0;
    }

    public boolean u0() {
        DimensionBehaviour[] dimensionBehaviourArr = this.f6859b0;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
    }

    public void u1(androidx.constraintlayout.core.d dVar, boolean z10) {
        l lVar;
        j jVar;
        int iY = dVar.y(this.Q);
        int iY2 = dVar.y(this.R);
        int iY3 = dVar.y(this.S);
        int iY4 = dVar.y(this.T);
        if (z10 && (jVar = this.f6864e) != null) {
            DependencyNode dependencyNode = jVar.f6930h;
            if (dependencyNode.f6920j) {
                DependencyNode dependencyNode2 = jVar.f6931i;
                if (dependencyNode2.f6920j) {
                    iY = dependencyNode.f6917g;
                    iY3 = dependencyNode2.f6917g;
                }
            }
        }
        if (z10 && (lVar = this.f6866f) != null) {
            DependencyNode dependencyNode3 = lVar.f6930h;
            if (dependencyNode3.f6920j) {
                DependencyNode dependencyNode4 = lVar.f6931i;
                if (dependencyNode4.f6920j) {
                    iY2 = dependencyNode3.f6917g;
                    iY4 = dependencyNode4.f6917g;
                }
            }
        }
        int i11 = iY4 - iY2;
        if (iY3 - iY < 0 || i11 < 0 || iY == Integer.MIN_VALUE || iY == Integer.MAX_VALUE || iY2 == Integer.MIN_VALUE || iY2 == Integer.MAX_VALUE || iY3 == Integer.MIN_VALUE || iY3 == Integer.MAX_VALUE || iY4 == Integer.MIN_VALUE || iY4 == Integer.MAX_VALUE) {
            iY = 0;
            iY4 = 0;
            iY2 = 0;
            iY3 = 0;
        }
        N0(iY, iY2, iY3, iY4);
    }

    public String v() {
        return this.f6901w0;
    }

    public void v0() {
        this.Q.q();
        this.R.q();
        this.S.q();
        this.T.q();
        this.U.q();
        this.V.q();
        this.W.q();
        this.X.q();
        this.f6861c0 = null;
        this.K = 0.0f;
        this.f6863d0 = 0;
        this.f6865e0 = 0;
        this.f6867f0 = 0.0f;
        this.f6869g0 = -1;
        this.f6871h0 = 0;
        this.f6873i0 = 0;
        this.f6879l0 = 0;
        this.f6881m0 = 0;
        this.f6883n0 = 0;
        this.f6885o0 = 0;
        this.f6887p0 = 0;
        float f11 = U0;
        this.f6889q0 = f11;
        this.f6891r0 = f11;
        DimensionBehaviour[] dimensionBehaviourArr = this.f6859b0;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.f6893s0 = null;
        this.f6895t0 = 0;
        this.f6897u0 = 0;
        this.f6903x0 = null;
        this.G0 = false;
        this.H0 = false;
        this.J0 = 0;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        float[] fArr = this.N0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f6894t = -1;
        this.f6896u = -1;
        int[] iArr = this.J;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f6900w = 0;
        this.f6902x = 0;
        this.B = 1.0f;
        this.E = 1.0f;
        this.A = Integer.MAX_VALUE;
        this.D = Integer.MAX_VALUE;
        this.f6906z = 0;
        this.C = 0;
        this.f6870h = false;
        this.H = -1;
        this.I = 1.0f;
        this.I0 = false;
        boolean[] zArr = this.f6868g;
        zArr[0] = true;
        zArr[1] = true;
        this.N = false;
        boolean[] zArr2 = this.f6857a0;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f6872i = true;
        int[] iArr2 = this.f6904y;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f6878l = -1;
        this.f6880m = -1;
    }

    public DimensionBehaviour w(int i11) {
        if (i11 == 0) {
            return C();
        }
        if (i11 == 1) {
            return V();
        }
        return null;
    }

    public void w0() {
        x0();
        h1(U0);
        Q0(U0);
    }

    public float x() {
        return this.f6867f0;
    }

    public void x0() {
        ConstraintWidget constraintWidgetM = M();
        if (constraintWidgetM != null && (constraintWidgetM instanceof d) && ((d) M()).Q1()) {
            return;
        }
        int size = this.Z.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((ConstraintAnchor) this.Z.get(i11)).q();
        }
    }

    public int y() {
        return this.f6869g0;
    }

    public void y0() {
        this.f6886p = false;
        this.f6888q = false;
        this.f6890r = false;
        this.f6892s = false;
        int size = this.Z.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((ConstraintAnchor) this.Z.get(i11)).r();
        }
    }

    public int z() {
        if (this.f6897u0 == 8) {
            return 0;
        }
        return this.f6865e0;
    }

    public void z0(androidx.constraintlayout.core.c cVar) {
        this.Q.s(cVar);
        this.R.s(cVar);
        this.S.s(cVar);
        this.T.s(cVar);
        this.U.s(cVar);
        this.X.s(cVar);
        this.V.s(cVar);
        this.W.s(cVar);
    }
}
