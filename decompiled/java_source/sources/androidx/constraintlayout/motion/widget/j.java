package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class j extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7310g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7311h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f7312i = Float.NaN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f7313j = Float.NaN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f7314k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f7315l = Float.NaN;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f7316m = Float.NaN;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7317n = Float.NaN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f7318o = Float.NaN;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f7319p = Float.NaN;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f7320q = Float.NaN;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f7321r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f7322s = Float.NaN;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f7323t = Float.NaN;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f7324u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f7325v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f7326w = Float.NaN;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f7327x = 0.0f;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f7328a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7328a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyTimeCycle_android_alpha, 1);
            f7328a.append(R$styleable.KeyTimeCycle_android_elevation, 2);
            f7328a.append(R$styleable.KeyTimeCycle_android_rotation, 4);
            f7328a.append(R$styleable.KeyTimeCycle_android_rotationX, 5);
            f7328a.append(R$styleable.KeyTimeCycle_android_rotationY, 6);
            f7328a.append(R$styleable.KeyTimeCycle_android_scaleX, 7);
            f7328a.append(R$styleable.KeyTimeCycle_transitionPathRotate, 8);
            f7328a.append(R$styleable.KeyTimeCycle_transitionEasing, 9);
            f7328a.append(R$styleable.KeyTimeCycle_motionTarget, 10);
            f7328a.append(R$styleable.KeyTimeCycle_framePosition, 12);
            f7328a.append(R$styleable.KeyTimeCycle_curveFit, 13);
            f7328a.append(R$styleable.KeyTimeCycle_android_scaleY, 14);
            f7328a.append(R$styleable.KeyTimeCycle_android_translationX, 15);
            f7328a.append(R$styleable.KeyTimeCycle_android_translationY, 16);
            f7328a.append(R$styleable.KeyTimeCycle_android_translationZ, 17);
            f7328a.append(R$styleable.KeyTimeCycle_motionProgress, 18);
            f7328a.append(R$styleable.KeyTimeCycle_wavePeriod, 20);
            f7328a.append(R$styleable.KeyTimeCycle_waveOffset, 21);
            f7328a.append(R$styleable.KeyTimeCycle_waveShape, 19);
        }

        public static void a(j jVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArray.getIndex(i11);
                switch (f7328a.get(index)) {
                    case 1:
                        jVar.f7312i = typedArray.getFloat(index, jVar.f7312i);
                        break;
                    case 2:
                        jVar.f7313j = typedArray.getDimension(index, jVar.f7313j);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7328a.get(index));
                        break;
                    case 4:
                        jVar.f7314k = typedArray.getFloat(index, jVar.f7314k);
                        break;
                    case 5:
                        jVar.f7315l = typedArray.getFloat(index, jVar.f7315l);
                        break;
                    case 6:
                        jVar.f7316m = typedArray.getFloat(index, jVar.f7316m);
                        break;
                    case 7:
                        jVar.f7318o = typedArray.getFloat(index, jVar.f7318o);
                        break;
                    case 8:
                        jVar.f7317n = typedArray.getFloat(index, jVar.f7317n);
                        break;
                    case 9:
                        jVar.f7310g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, jVar.f7251b);
                            jVar.f7251b = resourceId;
                            if (resourceId == -1) {
                                jVar.f7252c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            jVar.f7252c = typedArray.getString(index);
                        } else {
                            jVar.f7251b = typedArray.getResourceId(index, jVar.f7251b);
                        }
                        break;
                    case 12:
                        jVar.f7250a = typedArray.getInt(index, jVar.f7250a);
                        break;
                    case 13:
                        jVar.f7311h = typedArray.getInteger(index, jVar.f7311h);
                        break;
                    case 14:
                        jVar.f7319p = typedArray.getFloat(index, jVar.f7319p);
                        break;
                    case 15:
                        jVar.f7320q = typedArray.getDimension(index, jVar.f7320q);
                        break;
                    case 16:
                        jVar.f7321r = typedArray.getDimension(index, jVar.f7321r);
                        break;
                    case 17:
                        jVar.f7322s = typedArray.getDimension(index, jVar.f7322s);
                        break;
                    case 18:
                        jVar.f7323t = typedArray.getFloat(index, jVar.f7323t);
                        break;
                    case 19:
                        if (typedArray.peekValue(index).type == 3) {
                            jVar.f7325v = typedArray.getString(index);
                            jVar.f7324u = 7;
                        } else {
                            jVar.f7324u = typedArray.getInt(index, jVar.f7324u);
                        }
                        break;
                    case 20:
                        jVar.f7326w = typedArray.getFloat(index, jVar.f7326w);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            jVar.f7327x = typedArray.getDimension(index, jVar.f7327x);
                        } else {
                            jVar.f7327x = typedArray.getFloat(index, jVar.f7327x);
                        }
                        break;
                }
            }
        }
    }

    public j() {
        this.f7253d = 3;
        this.f7254e = new HashMap();
    }

    public void U(HashMap map) {
        for (String str : map.keySet()) {
            v0.f fVar = (v0.f) map.get(str);
            if (fVar != null) {
                if (!str.startsWith("CUSTOM")) {
                    switch (str) {
                        case "rotationX":
                            if (Float.isNaN(this.f7315l)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7315l, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "rotationY":
                            if (Float.isNaN(this.f7316m)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7316m, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "translationX":
                            if (Float.isNaN(this.f7320q)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7320q, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "translationY":
                            if (Float.isNaN(this.f7321r)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7321r, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "translationZ":
                            if (Float.isNaN(this.f7322s)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7322s, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "progress":
                            if (Float.isNaN(this.f7323t)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7323t, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "scaleX":
                            if (Float.isNaN(this.f7318o)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7318o, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "scaleY":
                            if (Float.isNaN(this.f7319p)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7319p, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "rotation":
                            if (Float.isNaN(this.f7314k)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7314k, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "elevation":
                            if (Float.isNaN(this.f7313j)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7313j, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "transitionPathRotate":
                            if (Float.isNaN(this.f7317n)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7317n, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        case "alpha":
                            if (Float.isNaN(this.f7312i)) {
                                break;
                            } else {
                                fVar.b(this.f7250a, this.f7312i, this.f7326w, this.f7324u, this.f7327x);
                                break;
                            }
                            break;
                        default:
                            Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + str + "\"");
                            break;
                    }
                } else {
                    ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7254e.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ((v0.f.b) fVar).j(this.f7250a, constraintAttribute, this.f7326w, this.f7324u, this.f7327x);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new j().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        j jVar = (j) dVar;
        this.f7310g = jVar.f7310g;
        this.f7311h = jVar.f7311h;
        this.f7324u = jVar.f7324u;
        this.f7326w = jVar.f7326w;
        this.f7327x = jVar.f7327x;
        this.f7323t = jVar.f7323t;
        this.f7312i = jVar.f7312i;
        this.f7313j = jVar.f7313j;
        this.f7314k = jVar.f7314k;
        this.f7317n = jVar.f7317n;
        this.f7315l = jVar.f7315l;
        this.f7316m = jVar.f7316m;
        this.f7318o = jVar.f7318o;
        this.f7319p = jVar.f7319p;
        this.f7320q = jVar.f7320q;
        this.f7321r = jVar.f7321r;
        this.f7322s = jVar.f7322s;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f7312i)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f7313j)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f7314k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f7315l)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f7316m)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f7320q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f7321r)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f7322s)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f7317n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f7318o)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f7319p)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f7323t)) {
            hashSet.add(NotificationCompat.CATEGORY_PROGRESS);
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
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void h(HashMap map) {
        if (this.f7311h == -1) {
            return;
        }
        if (!Float.isNaN(this.f7312i)) {
            map.put("alpha", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7313j)) {
            map.put("elevation", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7314k)) {
            map.put("rotation", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7315l)) {
            map.put("rotationX", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7316m)) {
            map.put("rotationY", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7320q)) {
            map.put("translationX", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7321r)) {
            map.put("translationY", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7322s)) {
            map.put("translationZ", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7317n)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7318o)) {
            map.put("scaleX", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7318o)) {
            map.put("scaleY", Integer.valueOf(this.f7311h));
        }
        if (!Float.isNaN(this.f7323t)) {
            map.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(this.f7311h));
        }
        if (this.f7254e.size() > 0) {
            Iterator it = this.f7254e.keySet().iterator();
            while (it.hasNext()) {
                map.put("CUSTOM," + ((String) it.next()), Integer.valueOf(this.f7311h));
            }
        }
    }
}
