package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class f extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7273g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7274h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f7275i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f7276j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f7277k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f7278l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f7279m = 0.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7280n = Float.NaN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f7281o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f7282p = Float.NaN;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f7283q = Float.NaN;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f7284r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f7285s = Float.NaN;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f7286t = Float.NaN;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f7287u = Float.NaN;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f7288v = Float.NaN;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f7289w = Float.NaN;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f7290x = Float.NaN;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f7291y = Float.NaN;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f7292z = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f7293a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7293a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyCycle_motionTarget, 1);
            f7293a.append(R$styleable.KeyCycle_framePosition, 2);
            f7293a.append(R$styleable.KeyCycle_transitionEasing, 3);
            f7293a.append(R$styleable.KeyCycle_curveFit, 4);
            f7293a.append(R$styleable.KeyCycle_waveShape, 5);
            f7293a.append(R$styleable.KeyCycle_wavePeriod, 6);
            f7293a.append(R$styleable.KeyCycle_waveOffset, 7);
            f7293a.append(R$styleable.KeyCycle_waveVariesBy, 8);
            f7293a.append(R$styleable.KeyCycle_android_alpha, 9);
            f7293a.append(R$styleable.KeyCycle_android_elevation, 10);
            f7293a.append(R$styleable.KeyCycle_android_rotation, 11);
            f7293a.append(R$styleable.KeyCycle_android_rotationX, 12);
            f7293a.append(R$styleable.KeyCycle_android_rotationY, 13);
            f7293a.append(R$styleable.KeyCycle_transitionPathRotate, 14);
            f7293a.append(R$styleable.KeyCycle_android_scaleX, 15);
            f7293a.append(R$styleable.KeyCycle_android_scaleY, 16);
            f7293a.append(R$styleable.KeyCycle_android_translationX, 17);
            f7293a.append(R$styleable.KeyCycle_android_translationY, 18);
            f7293a.append(R$styleable.KeyCycle_android_translationZ, 19);
            f7293a.append(R$styleable.KeyCycle_motionProgress, 20);
            f7293a.append(R$styleable.KeyCycle_wavePhase, 21);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(f fVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArray.getIndex(i11);
                switch (f7293a.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, fVar.f7251b);
                            fVar.f7251b = resourceId;
                            if (resourceId == -1) {
                                fVar.f7252c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            fVar.f7252c = typedArray.getString(index);
                        } else {
                            fVar.f7251b = typedArray.getResourceId(index, fVar.f7251b);
                        }
                        break;
                    case 2:
                        fVar.f7250a = typedArray.getInt(index, fVar.f7250a);
                        break;
                    case 3:
                        fVar.f7273g = typedArray.getString(index);
                        break;
                    case 4:
                        fVar.f7274h = typedArray.getInteger(index, fVar.f7274h);
                        break;
                    case 5:
                        if (typedArray.peekValue(index).type == 3) {
                            fVar.f7276j = typedArray.getString(index);
                            fVar.f7275i = 7;
                        } else {
                            fVar.f7275i = typedArray.getInt(index, fVar.f7275i);
                        }
                        break;
                    case 6:
                        fVar.f7277k = typedArray.getFloat(index, fVar.f7277k);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            fVar.f7278l = typedArray.getDimension(index, fVar.f7278l);
                        } else {
                            fVar.f7278l = typedArray.getFloat(index, fVar.f7278l);
                        }
                        break;
                    case 8:
                        fVar.f7281o = typedArray.getInt(index, fVar.f7281o);
                        break;
                    case 9:
                        fVar.f7282p = typedArray.getFloat(index, fVar.f7282p);
                        break;
                    case 10:
                        fVar.f7283q = typedArray.getDimension(index, fVar.f7283q);
                        break;
                    case 11:
                        fVar.f7284r = typedArray.getFloat(index, fVar.f7284r);
                        break;
                    case 12:
                        fVar.f7286t = typedArray.getFloat(index, fVar.f7286t);
                        break;
                    case 13:
                        fVar.f7287u = typedArray.getFloat(index, fVar.f7287u);
                        break;
                    case 14:
                        fVar.f7285s = typedArray.getFloat(index, fVar.f7285s);
                        break;
                    case 15:
                        fVar.f7288v = typedArray.getFloat(index, fVar.f7288v);
                        break;
                    case 16:
                        fVar.f7289w = typedArray.getFloat(index, fVar.f7289w);
                        break;
                    case 17:
                        fVar.f7290x = typedArray.getDimension(index, fVar.f7290x);
                        break;
                    case 18:
                        fVar.f7291y = typedArray.getDimension(index, fVar.f7291y);
                        break;
                    case 19:
                        fVar.f7292z = typedArray.getDimension(index, fVar.f7292z);
                        break;
                    case 20:
                        fVar.f7280n = typedArray.getFloat(index, fVar.f7280n);
                        break;
                    case 21:
                        fVar.f7279m = typedArray.getFloat(index, fVar.f7279m) / 360.0f;
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7293a.get(index));
                        break;
                }
            }
        }
    }

    public f() {
        this.f7253d = 4;
        this.f7254e = new HashMap();
    }

    public void Y(HashMap map) {
        v0.c cVar;
        v0.c cVar2;
        for (String str : map.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7254e.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.d() == ConstraintAttribute.AttributeType.FLOAT_TYPE && (cVar = (v0.c) map.get(str)) != null) {
                    cVar.e(this.f7250a, this.f7275i, this.f7276j, this.f7281o, this.f7277k, this.f7278l, this.f7279m, constraintAttribute.e(), constraintAttribute);
                }
            } else {
                float fZ = Z(str);
                if (!Float.isNaN(fZ) && (cVar2 = (v0.c) map.get(str)) != null) {
                    cVar2.d(this.f7250a, this.f7275i, this.f7276j, this.f7281o, this.f7277k, this.f7278l, this.f7279m, fZ);
                }
            }
        }
    }

    public float Z(String str) {
        str.hashCode();
        switch (str) {
            case "rotationX":
                return this.f7286t;
            case "rotationY":
                return this.f7287u;
            case "translationX":
                return this.f7290x;
            case "translationY":
                return this.f7291y;
            case "translationZ":
                return this.f7292z;
            case "progress":
                return this.f7280n;
            case "scaleX":
                return this.f7288v;
            case "scaleY":
                return this.f7289w;
            case "rotation":
                return this.f7284r;
            case "elevation":
                return this.f7283q;
            case "transitionPathRotate":
                return this.f7285s;
            case "alpha":
                return this.f7282p;
            case "waveOffset":
                return this.f7278l;
            case "wavePhase":
                return this.f7279m;
            default:
                if (str.startsWith("CUSTOM")) {
                    return Float.NaN;
                }
                Log.v("WARNING! KeyCycle", "  UNKNOWN  " + str);
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
        androidx.constraintlayout.motion.widget.a.g("KeyCycle", "add " + map.size() + " values", 2);
        for (String str : map.keySet()) {
            androidx.constraintlayout.core.motion.utils.i iVar = (androidx.constraintlayout.core.motion.utils.i) map.get(str);
            if (iVar != null) {
                str.hashCode();
                switch (str) {
                    case "rotationX":
                        iVar.c(this.f7250a, this.f7286t);
                        break;
                    case "rotationY":
                        iVar.c(this.f7250a, this.f7287u);
                        break;
                    case "translationX":
                        iVar.c(this.f7250a, this.f7290x);
                        break;
                    case "translationY":
                        iVar.c(this.f7250a, this.f7291y);
                        break;
                    case "translationZ":
                        iVar.c(this.f7250a, this.f7292z);
                        break;
                    case "progress":
                        iVar.c(this.f7250a, this.f7280n);
                        break;
                    case "scaleX":
                        iVar.c(this.f7250a, this.f7288v);
                        break;
                    case "scaleY":
                        iVar.c(this.f7250a, this.f7289w);
                        break;
                    case "rotation":
                        iVar.c(this.f7250a, this.f7284r);
                        break;
                    case "elevation":
                        iVar.c(this.f7250a, this.f7283q);
                        break;
                    case "transitionPathRotate":
                        iVar.c(this.f7250a, this.f7285s);
                        break;
                    case "alpha":
                        iVar.c(this.f7250a, this.f7282p);
                        break;
                    case "waveOffset":
                        iVar.c(this.f7250a, this.f7278l);
                        break;
                    case "wavePhase":
                        iVar.c(this.f7250a, this.f7279m);
                        break;
                    default:
                        if (str.startsWith("CUSTOM")) {
                            break;
                        } else {
                            Log.v("WARNING KeyCycle", "  UNKNOWN  " + str);
                            break;
                        }
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new f().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        f fVar = (f) dVar;
        this.f7273g = fVar.f7273g;
        this.f7274h = fVar.f7274h;
        this.f7275i = fVar.f7275i;
        this.f7276j = fVar.f7276j;
        this.f7277k = fVar.f7277k;
        this.f7278l = fVar.f7278l;
        this.f7279m = fVar.f7279m;
        this.f7280n = fVar.f7280n;
        this.f7281o = fVar.f7281o;
        this.f7282p = fVar.f7282p;
        this.f7283q = fVar.f7283q;
        this.f7284r = fVar.f7284r;
        this.f7285s = fVar.f7285s;
        this.f7286t = fVar.f7286t;
        this.f7287u = fVar.f7287u;
        this.f7288v = fVar.f7288v;
        this.f7289w = fVar.f7289w;
        this.f7290x = fVar.f7290x;
        this.f7291y = fVar.f7291y;
        this.f7292z = fVar.f7292z;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f7282p)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f7283q)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f7284r)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f7286t)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f7287u)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f7288v)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f7289w)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f7285s)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f7290x)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f7291y)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f7292z)) {
            hashSet.add("translationZ");
        }
        if (this.f7254e.size() > 0) {
            Iterator it = this.f7254e.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + ((String) it.next()));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyCycle));
    }
}
