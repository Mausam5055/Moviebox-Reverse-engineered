package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class k extends d {
    HashMap A;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7329g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f7330h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f7331i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f7332j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f7333k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f7334l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f7335m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f7336n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    float f7337o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f7338p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f7339q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f7340r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f7341s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f7342t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f7343u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f7344v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f7345w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f7346x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    RectF f7347y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    RectF f7348z;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f7349a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7349a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyTrigger_framePosition, 8);
            f7349a.append(R$styleable.KeyTrigger_onCross, 4);
            f7349a.append(R$styleable.KeyTrigger_onNegativeCross, 1);
            f7349a.append(R$styleable.KeyTrigger_onPositiveCross, 2);
            f7349a.append(R$styleable.KeyTrigger_motionTarget, 7);
            f7349a.append(R$styleable.KeyTrigger_triggerId, 6);
            f7349a.append(R$styleable.KeyTrigger_triggerSlack, 5);
            f7349a.append(R$styleable.KeyTrigger_motion_triggerOnCollision, 9);
            f7349a.append(R$styleable.KeyTrigger_motion_postLayoutCollision, 10);
            f7349a.append(R$styleable.KeyTrigger_triggerReceiver, 11);
            f7349a.append(R$styleable.KeyTrigger_viewTransitionOnCross, 12);
            f7349a.append(R$styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            f7349a.append(R$styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        public static void a(k kVar, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArray.getIndex(i11);
                switch (f7349a.get(index)) {
                    case 1:
                        kVar.f7332j = typedArray.getString(index);
                        break;
                    case 2:
                        kVar.f7333k = typedArray.getString(index);
                        break;
                    case 3:
                    default:
                        Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7349a.get(index));
                        break;
                    case 4:
                        kVar.f7330h = typedArray.getString(index);
                        break;
                    case 5:
                        kVar.f7337o = typedArray.getFloat(index, kVar.f7337o);
                        break;
                    case 6:
                        kVar.f7334l = typedArray.getResourceId(index, kVar.f7334l);
                        break;
                    case 7:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, kVar.f7251b);
                            kVar.f7251b = resourceId;
                            if (resourceId == -1) {
                                kVar.f7252c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            kVar.f7252c = typedArray.getString(index);
                        } else {
                            kVar.f7251b = typedArray.getResourceId(index, kVar.f7251b);
                        }
                        break;
                    case 8:
                        int integer = typedArray.getInteger(index, kVar.f7250a);
                        kVar.f7250a = integer;
                        kVar.f7341s = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        kVar.f7335m = typedArray.getResourceId(index, kVar.f7335m);
                        break;
                    case 10:
                        kVar.f7343u = typedArray.getBoolean(index, kVar.f7343u);
                        break;
                    case 11:
                        kVar.f7331i = typedArray.getResourceId(index, kVar.f7331i);
                        break;
                    case 12:
                        kVar.f7346x = typedArray.getResourceId(index, kVar.f7346x);
                        break;
                    case 13:
                        kVar.f7344v = typedArray.getResourceId(index, kVar.f7344v);
                        break;
                    case 14:
                        kVar.f7345w = typedArray.getResourceId(index, kVar.f7345w);
                        break;
                }
            }
        }
    }

    public k() {
        int i11 = d.f7249f;
        this.f7331i = i11;
        this.f7332j = null;
        this.f7333k = null;
        this.f7334l = i11;
        this.f7335m = i11;
        this.f7336n = null;
        this.f7337o = 0.1f;
        this.f7338p = true;
        this.f7339q = true;
        this.f7340r = true;
        this.f7341s = Float.NaN;
        this.f7343u = false;
        this.f7344v = i11;
        this.f7345w = i11;
        this.f7346x = i11;
        this.f7347y = new RectF();
        this.f7348z = new RectF();
        this.A = new HashMap();
        this.f7253d = 5;
        this.f7254e = new HashMap();
    }

    private void A(String str, View view) {
        boolean z10 = str.length() == 1;
        if (!z10) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.f7254e.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z10 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7254e.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.a(view);
                }
            }
        }
    }

    private void B(RectF rectF, View view, boolean z10) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z10) {
            view.getMatrix().mapRect(rectF);
        }
    }

    private void z(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            A(str, view);
            return;
        }
        if (this.A.containsKey(str)) {
            method = (Method) this.A.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, null);
                this.A.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.A.put(str, null);
                Log.e("KeyTrigger", "Could not find method \"" + str + "\"on class " + view.getClass().getSimpleName() + " " + androidx.constraintlayout.motion.widget.a.d(view));
                return;
            }
        }
        try {
            method.invoke(view, null);
        } catch (Exception unused2) {
            Log.e("KeyTrigger", "Exception in call \"" + this.f7330h + "\"on class " + view.getClass().getSimpleName() + " " + androidx.constraintlayout.motion.widget.a.d(view));
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new k().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        k kVar = (k) dVar;
        this.f7329g = kVar.f7329g;
        this.f7330h = kVar.f7330h;
        this.f7331i = kVar.f7331i;
        this.f7332j = kVar.f7332j;
        this.f7333k = kVar.f7333k;
        this.f7334l = kVar.f7334l;
        this.f7335m = kVar.f7335m;
        this.f7336n = kVar.f7336n;
        this.f7337o = kVar.f7337o;
        this.f7338p = kVar.f7338p;
        this.f7339q = kVar.f7339q;
        this.f7340r = kVar.f7340r;
        this.f7341s = kVar.f7341s;
        this.f7342t = kVar.f7342t;
        this.f7343u = kVar.f7343u;
        this.f7347y = kVar.f7347y;
        this.f7348z = kVar.f7348z;
        this.A = kVar.A;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet hashSet) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyTrigger), context);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008c  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:58:0x00dc  */
    public void y(float f11, View view) {
        boolean z10;
        boolean z11;
        boolean z12;
        float f12;
        float f13;
        boolean z13;
        boolean z14;
        float f14;
        float f15;
        boolean z15;
        if (this.f7335m != d.f7249f) {
            if (this.f7336n == null) {
                this.f7336n = ((ViewGroup) view.getParent()).findViewById(this.f7335m);
            }
            B(this.f7347y, this.f7336n, this.f7343u);
            B(this.f7348z, view, this.f7343u);
            if (this.f7347y.intersect(this.f7348z)) {
                if (this.f7338p) {
                    this.f7338p = false;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (this.f7340r) {
                    this.f7340r = false;
                    z15 = true;
                } else {
                    z15 = false;
                }
                this.f7339q = true;
                z14 = z15;
                z12 = false;
            } else {
                if (this.f7338p) {
                    z10 = false;
                } else {
                    this.f7338p = true;
                    z10 = true;
                }
                if (this.f7339q) {
                    this.f7339q = false;
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.f7340r = true;
                z14 = false;
            }
        } else {
            if (this.f7338p) {
                float f16 = this.f7341s;
                if ((f11 - f16) * (this.f7342t - f16) < 0.0f) {
                    this.f7338p = false;
                    z10 = true;
                }
                if (this.f7339q) {
                    f14 = this.f7341s;
                    f15 = f11 - f14;
                    if ((this.f7342t - f14) * f15 >= 0.0f && f15 < 0.0f) {
                        this.f7339q = false;
                        z11 = true;
                    }
                    if (this.f7340r) {
                        f12 = this.f7341s;
                        f13 = f11 - f12;
                        if ((this.f7342t - f12) * f13 < 0.0f || f13 <= 0.0f) {
                            z13 = false;
                        } else {
                            this.f7340r = false;
                            z13 = true;
                        }
                        boolean z16 = z11;
                        z14 = z13;
                        z12 = z16;
                    } else {
                        if (Math.abs(f11 - this.f7341s) > this.f7337o) {
                            this.f7340r = true;
                        }
                        z12 = z11;
                        z14 = false;
                    }
                } else if (Math.abs(f11 - this.f7341s) > this.f7337o) {
                    this.f7339q = true;
                }
                z11 = false;
                if (this.f7340r) {
                    f12 = this.f7341s;
                    f13 = f11 - f12;
                    if ((this.f7342t - f12) * f13 < 0.0f) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    boolean z17 = z11;
                    z14 = z13;
                    z12 = z17;
                } else {
                    if (Math.abs(f11 - this.f7341s) > this.f7337o) {
                        this.f7340r = true;
                    }
                    z12 = z11;
                    z14 = false;
                }
            } else if (Math.abs(f11 - this.f7341s) > this.f7337o) {
                this.f7338p = true;
            }
            z10 = false;
            if (this.f7339q) {
                f14 = this.f7341s;
                f15 = f11 - f14;
                if ((this.f7342t - f14) * f15 >= 0.0f) {
                }
                if (this.f7340r) {
                    f12 = this.f7341s;
                    f13 = f11 - f12;
                    if ((this.f7342t - f12) * f13 < 0.0f) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    boolean z18 = z11;
                    z14 = z13;
                    z12 = z18;
                } else {
                    if (Math.abs(f11 - this.f7341s) > this.f7337o) {
                        this.f7340r = true;
                    }
                    z12 = z11;
                    z14 = false;
                }
            } else if (Math.abs(f11 - this.f7341s) > this.f7337o) {
                this.f7339q = true;
            }
            z11 = false;
            if (this.f7340r) {
                f12 = this.f7341s;
                f13 = f11 - f12;
                if ((this.f7342t - f12) * f13 < 0.0f) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                boolean z19 = z11;
                z14 = z13;
                z12 = z19;
            } else {
                if (Math.abs(f11 - this.f7341s) > this.f7337o) {
                    this.f7340r = true;
                }
                z12 = z11;
                z14 = false;
            }
        }
        this.f7342t = f11;
        if (z12 || z10 || z14) {
            ((MotionLayout) view.getParent()).fireTrigger(this.f7334l, z14, f11);
        }
        View viewFindViewById = this.f7331i == d.f7249f ? view : ((MotionLayout) view.getParent()).findViewById(this.f7331i);
        if (z12) {
            String str = this.f7332j;
            if (str != null) {
                z(str, viewFindViewById);
            }
            if (this.f7344v != d.f7249f) {
                ((MotionLayout) view.getParent()).viewTransition(this.f7344v, viewFindViewById);
            }
        }
        if (z14) {
            String str2 = this.f7333k;
            if (str2 != null) {
                z(str2, viewFindViewById);
            }
            if (this.f7345w != d.f7249f) {
                ((MotionLayout) view.getParent()).viewTransition(this.f7345w, viewFindViewById);
            }
        }
        if (z10) {
            String str3 = this.f7330h;
            if (str3 != null) {
                z(str3, viewFindViewById);
            }
            if (this.f7346x != d.f7249f) {
                ((MotionLayout) view.getParent()).viewTransition(this.f7346x, viewFindViewById);
            }
        }
    }
}
