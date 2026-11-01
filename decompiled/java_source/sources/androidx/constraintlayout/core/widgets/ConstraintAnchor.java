package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintAnchor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConstraintWidget f6849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Type f6850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ConstraintAnchor f6851f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    SolverVariable f6854i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet f6846a = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6852g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f6853h = Integer.MIN_VALUE;

    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6855a;

        static {
            int[] iArr = new int[Type.values().length];
            f6855a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6855a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6855a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6855a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6855a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6855a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6855a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6855a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6855a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.f6849d = constraintWidget;
        this.f6850e = type;
    }

    public boolean a(ConstraintAnchor constraintAnchor, int i11) {
        return b(constraintAnchor, i11, Integer.MIN_VALUE, false);
    }

    public boolean b(ConstraintAnchor constraintAnchor, int i11, int i12, boolean z10) {
        if (constraintAnchor == null) {
            q();
            return true;
        }
        if (!z10 && !p(constraintAnchor)) {
            return false;
        }
        this.f6851f = constraintAnchor;
        if (constraintAnchor.f6846a == null) {
            constraintAnchor.f6846a = new HashSet();
        }
        HashSet hashSet = this.f6851f.f6846a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f6852g = i11;
        this.f6853h = i12;
        return true;
    }

    public void c(int i11, ArrayList arrayList, m mVar) {
        HashSet hashSet = this.f6846a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                androidx.constraintlayout.core.widgets.analyzer.g.a(((ConstraintAnchor) it.next()).f6849d, i11, arrayList, mVar);
            }
        }
    }

    public HashSet d() {
        return this.f6846a;
    }

    public int e() {
        if (this.f6848c) {
            return this.f6847b;
        }
        return 0;
    }

    public int f() {
        ConstraintAnchor constraintAnchor;
        if (this.f6849d.X() == 8) {
            return 0;
        }
        return (this.f6853h == Integer.MIN_VALUE || (constraintAnchor = this.f6851f) == null || constraintAnchor.f6849d.X() != 8) ? this.f6852g : this.f6853h;
    }

    public final ConstraintAnchor g() {
        switch (a.f6855a[this.f6850e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f6849d.S;
            case 3:
                return this.f6849d.Q;
            case 4:
                return this.f6849d.T;
            case 5:
                return this.f6849d.R;
            default:
                throw new AssertionError(this.f6850e.name());
        }
    }

    public ConstraintWidget h() {
        return this.f6849d;
    }

    public SolverVariable i() {
        return this.f6854i;
    }

    public ConstraintAnchor j() {
        return this.f6851f;
    }

    public Type k() {
        return this.f6850e;
    }

    public boolean l() {
        HashSet hashSet = this.f6846a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((ConstraintAnchor) it.next()).g().o()) {
                return true;
            }
        }
        return false;
    }

    public boolean m() {
        HashSet hashSet = this.f6846a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean n() {
        return this.f6848c;
    }

    public boolean o() {
        return this.f6851f != null;
    }

    public boolean p(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor == null) {
            return false;
        }
        Type typeK = constraintAnchor.k();
        Type type = this.f6850e;
        if (typeK == type) {
            return type != Type.BASELINE || (constraintAnchor.h().b0() && h().b0());
        }
        switch (a.f6855a[type.ordinal()]) {
            case 1:
                return (typeK == Type.BASELINE || typeK == Type.CENTER_X || typeK == Type.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z10 = typeK == Type.LEFT || typeK == Type.RIGHT;
                if (constraintAnchor.h() instanceof f) {
                    return z10 || typeK == Type.CENTER_X;
                }
                return z10;
            case 4:
            case 5:
                boolean z11 = typeK == Type.TOP || typeK == Type.BOTTOM;
                if (constraintAnchor.h() instanceof f) {
                    return z11 || typeK == Type.CENTER_Y;
                }
                return z11;
            case 6:
                return (typeK == Type.LEFT || typeK == Type.RIGHT) ? false : true;
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f6850e.name());
        }
    }

    public void q() {
        HashSet hashSet;
        ConstraintAnchor constraintAnchor = this.f6851f;
        if (constraintAnchor != null && (hashSet = constraintAnchor.f6846a) != null) {
            hashSet.remove(this);
            if (this.f6851f.f6846a.size() == 0) {
                this.f6851f.f6846a = null;
            }
        }
        this.f6846a = null;
        this.f6851f = null;
        this.f6852g = 0;
        this.f6853h = Integer.MIN_VALUE;
        this.f6848c = false;
        this.f6847b = 0;
    }

    public void r() {
        this.f6848c = false;
        this.f6847b = 0;
    }

    public void s(androidx.constraintlayout.core.c cVar) {
        SolverVariable solverVariable = this.f6854i;
        if (solverVariable == null) {
            this.f6854i = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
        } else {
            solverVariable.f();
        }
    }

    public void t(int i11) {
        this.f6847b = i11;
        this.f6848c = true;
    }

    public String toString() {
        return this.f6849d.v() + ":" + this.f6850e.toString();
    }

    public void u(int i11) {
        if (o()) {
            this.f6853h = i11;
        }
    }
}
