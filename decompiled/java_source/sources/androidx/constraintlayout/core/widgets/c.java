package androidx.constraintlayout.core.widgets;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ConstraintWidget f6993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ConstraintWidget f6994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected ConstraintWidget f6995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ConstraintWidget f6996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected ConstraintWidget f6997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected ConstraintWidget f6998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected ConstraintWidget f6999g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected ArrayList f7000h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f7001i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f7002j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected float f7003k = 0.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f7004l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f7005m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f7006n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f7007o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7008p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f7009q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f7010r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f7011s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f7012t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f7013u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f7014v;

    public c(ConstraintWidget constraintWidget, int i11, boolean z10) {
        this.f6993a = constraintWidget;
        this.f7008p = i11;
        this.f7009q = z10;
    }

    private void b() {
        int i11 = this.f7008p * 2;
        ConstraintWidget constraintWidget = this.f6993a;
        this.f7007o = true;
        ConstraintWidget constraintWidget2 = constraintWidget;
        boolean z10 = false;
        while (!z10) {
            this.f7001i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.P0;
            int i12 = this.f7008p;
            ConstraintWidget constraintWidget3 = null;
            constraintWidgetArr[i12] = null;
            constraintWidget.O0[i12] = null;
            if (constraintWidget.X() != 8) {
                this.f7004l++;
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget.w(this.f7008p);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourW != dimensionBehaviour) {
                    this.f7005m += constraintWidget.G(this.f7008p);
                }
                int iF = this.f7005m + constraintWidget.Y[i11].f();
                this.f7005m = iF;
                int i13 = i11 + 1;
                this.f7005m = iF + constraintWidget.Y[i13].f();
                int iF2 = this.f7006n + constraintWidget.Y[i11].f();
                this.f7006n = iF2;
                this.f7006n = iF2 + constraintWidget.Y[i13].f();
                if (this.f6994b == null) {
                    this.f6994b = constraintWidget;
                }
                this.f6996d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f6859b0;
                int i14 = this.f7008p;
                if (dimensionBehaviourArr[i14] == dimensionBehaviour) {
                    int i15 = constraintWidget.f6904y[i14];
                    if (i15 == 0 || i15 == 3 || i15 == 2) {
                        this.f7002j++;
                        float f11 = constraintWidget.N0[i14];
                        if (f11 > 0.0f) {
                            this.f7003k += f11;
                        }
                        if (c(constraintWidget, i14)) {
                            if (f11 < 0.0f) {
                                this.f7010r = true;
                            } else {
                                this.f7011s = true;
                            }
                            if (this.f7000h == null) {
                                this.f7000h = new ArrayList();
                            }
                            this.f7000h.add(constraintWidget);
                        }
                        if (this.f6998f == null) {
                            this.f6998f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget4 = this.f6999g;
                        if (constraintWidget4 != null) {
                            constraintWidget4.O0[this.f7008p] = constraintWidget;
                        }
                        this.f6999g = constraintWidget;
                    }
                    if (this.f7008p == 0) {
                        if (constraintWidget.f6900w != 0 || constraintWidget.f6906z != 0 || constraintWidget.A != 0) {
                            this.f7007o = false;
                        }
                    } else if (constraintWidget.f6902x != 0 || constraintWidget.C != 0 || constraintWidget.D != 0) {
                        this.f7007o = false;
                    }
                    if (constraintWidget.f6867f0 != 0.0f) {
                        this.f7007o = false;
                        this.f7013u = true;
                    }
                }
            }
            if (constraintWidget2 != constraintWidget) {
                constraintWidget2.P0[this.f7008p] = constraintWidget;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.Y[i11 + 1].f6851f;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget5 = constraintAnchor.f6849d;
                ConstraintAnchor constraintAnchor2 = constraintWidget5.Y[i11].f6851f;
                if (constraintAnchor2 != null && constraintAnchor2.f6849d == constraintWidget) {
                    constraintWidget3 = constraintWidget5;
                }
            }
            if (constraintWidget3 == null) {
                constraintWidget3 = constraintWidget;
                z10 = true;
            }
            constraintWidget2 = constraintWidget;
            constraintWidget = constraintWidget3;
        }
        ConstraintWidget constraintWidget6 = this.f6994b;
        if (constraintWidget6 != null) {
            this.f7005m -= constraintWidget6.Y[i11].f();
        }
        ConstraintWidget constraintWidget7 = this.f6996d;
        if (constraintWidget7 != null) {
            this.f7005m -= constraintWidget7.Y[i11 + 1].f();
        }
        this.f6995c = constraintWidget;
        if (this.f7008p == 0 && this.f7009q) {
            this.f6997e = constraintWidget;
        } else {
            this.f6997e = this.f6993a;
        }
        this.f7012t = this.f7011s && this.f7010r;
    }

    private static boolean c(ConstraintWidget constraintWidget, int i11) {
        int i12;
        return constraintWidget.X() != 8 && constraintWidget.f6859b0[i11] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && ((i12 = constraintWidget.f6904y[i11]) == 0 || i12 == 3);
    }

    public void a() {
        if (!this.f7014v) {
            b();
        }
        this.f7014v = true;
    }
}
