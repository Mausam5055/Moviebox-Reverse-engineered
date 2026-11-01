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
public class e extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7255g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7256h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f7257i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f7258j = Float.NaN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f7259k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f7260l = Float.NaN;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f7261m = Float.NaN;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7262n = Float.NaN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f7263o = Float.NaN;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f7264p = Float.NaN;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f7265q = Float.NaN;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f7266r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f7267s = Float.NaN;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f7268t = Float.NaN;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f7269u = Float.NaN;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f7270v = Float.NaN;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f7271w = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f7272a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7272a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyAttribute_android_alpha, 1);
            f7272a.append(R$styleable.KeyAttribute_android_elevation, 2);
            f7272a.append(R$styleable.KeyAttribute_android_rotation, 4);
            f7272a.append(R$styleable.KeyAttribute_android_rotationX, 5);
            f7272a.append(R$styleable.KeyAttribute_android_rotationY, 6);
            f7272a.append(R$styleable.KeyAttribute_android_transformPivotX, 19);
            f7272a.append(R$styleable.KeyAttribute_android_transformPivotY, 20);
            f7272a.append(R$styleable.KeyAttribute_android_scaleX, 7);
            f7272a.append(R$styleable.KeyAttribute_transitionPathRotate, 8);
            f7272a.append(R$styleable.KeyAttribute_transitionEasing, 9);
            f7272a.append(R$styleable.KeyAttribute_motionTarget, 10);
            f7272a.append(R$styleable.KeyAttribute_framePosition, 12);
            f7272a.append(R$styleable.KeyAttribute_curveFit, 13);
            f7272a.append(R$styleable.KeyAttribute_android_scaleY, 14);
            f7272a.append(R$styleable.KeyAttribute_android_translationX, 15);
            f7272a.append(R$styleable.KeyAttribute_android_translationY, 16);
            f7272a.append(R$styleable.KeyAttribute_android_translationZ, 17);
            f7272a.append(R$styleable.KeyAttribute_motionProgress, 18);
        }

        public static void a(e eVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArray.getIndex(i11);
                switch (f7272a.get(index)) {
                    case 1:
                        eVar.f7258j = typedArray.getFloat(index, eVar.f7258j);
                        break;
                    case 2:
                        eVar.f7259k = typedArray.getDimension(index, eVar.f7259k);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7272a.get(index));
                        break;
                    case 4:
                        eVar.f7260l = typedArray.getFloat(index, eVar.f7260l);
                        break;
                    case 5:
                        eVar.f7261m = typedArray.getFloat(index, eVar.f7261m);
                        break;
                    case 6:
                        eVar.f7262n = typedArray.getFloat(index, eVar.f7262n);
                        break;
                    case 7:
                        eVar.f7266r = typedArray.getFloat(index, eVar.f7266r);
                        break;
                    case 8:
                        eVar.f7265q = typedArray.getFloat(index, eVar.f7265q);
                        break;
                    case 9:
                        eVar.f7255g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, eVar.f7251b);
                            eVar.f7251b = resourceId;
                            if (resourceId == -1) {
                                eVar.f7252c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            eVar.f7252c = typedArray.getString(index);
                        } else {
                            eVar.f7251b = typedArray.getResourceId(index, eVar.f7251b);
                        }
                        break;
                    case 12:
                        eVar.f7250a = typedArray.getInt(index, eVar.f7250a);
                        break;
                    case 13:
                        eVar.f7256h = typedArray.getInteger(index, eVar.f7256h);
                        break;
                    case 14:
                        eVar.f7267s = typedArray.getFloat(index, eVar.f7267s);
                        break;
                    case 15:
                        eVar.f7268t = typedArray.getDimension(index, eVar.f7268t);
                        break;
                    case 16:
                        eVar.f7269u = typedArray.getDimension(index, eVar.f7269u);
                        break;
                    case 17:
                        eVar.f7270v = typedArray.getDimension(index, eVar.f7270v);
                        break;
                    case 18:
                        eVar.f7271w = typedArray.getFloat(index, eVar.f7271w);
                        break;
                    case 19:
                        eVar.f7263o = typedArray.getDimension(index, eVar.f7263o);
                        break;
                    case 20:
                        eVar.f7264p = typedArray.getDimension(index, eVar.f7264p);
                        break;
                }
            }
        }
    }

    public e() {
        this.f7253d = 1;
        this.f7254e = new HashMap();
    }

    public void R(String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "motionProgress":
                this.f7271w = k(obj);
                break;
            case "transitionEasing":
                this.f7255g = obj.toString();
                break;
            case "rotationX":
                this.f7261m = k(obj);
                break;
            case "rotationY":
                this.f7262n = k(obj);
                break;
            case "translationX":
                this.f7268t = k(obj);
                break;
            case "translationY":
                this.f7269u = k(obj);
                break;
            case "translationZ":
                this.f7270v = k(obj);
                break;
            case "scaleX":
                this.f7266r = k(obj);
                break;
            case "scaleY":
                this.f7267s = k(obj);
                break;
            case "transformPivotX":
                this.f7263o = k(obj);
                break;
            case "transformPivotY":
                this.f7264p = k(obj);
                break;
            case "rotation":
                this.f7260l = k(obj);
                break;
            case "elevation":
                this.f7259k = k(obj);
                break;
            case "transitionPathRotate":
                this.f7265q = k(obj);
                break;
            case "alpha":
                this.f7258j = k(obj);
                break;
            case "curveFit":
                this.f7256h = l(obj);
                break;
            case "visibility":
                this.f7257i = j(obj);
                break;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
        for (String str : map.keySet()) {
            androidx.constraintlayout.core.motion.utils.i iVar = (androidx.constraintlayout.core.motion.utils.i) map.get(str);
            if (iVar != null) {
                if (!str.startsWith("CUSTOM")) {
                    switch (str) {
                        case "rotationX":
                            if (Float.isNaN(this.f7261m)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7261m);
                                break;
                            }
                            break;
                        case "rotationY":
                            if (Float.isNaN(this.f7262n)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7262n);
                                break;
                            }
                            break;
                        case "translationX":
                            if (Float.isNaN(this.f7268t)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7268t);
                                break;
                            }
                            break;
                        case "translationY":
                            if (Float.isNaN(this.f7269u)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7269u);
                                break;
                            }
                            break;
                        case "translationZ":
                            if (Float.isNaN(this.f7270v)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7270v);
                                break;
                            }
                            break;
                        case "progress":
                            if (Float.isNaN(this.f7271w)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7271w);
                                break;
                            }
                            break;
                        case "scaleX":
                            if (Float.isNaN(this.f7266r)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7266r);
                                break;
                            }
                            break;
                        case "scaleY":
                            if (Float.isNaN(this.f7267s)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7267s);
                                break;
                            }
                            break;
                        case "transformPivotX":
                            if (Float.isNaN(this.f7261m)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7263o);
                                break;
                            }
                            break;
                        case "transformPivotY":
                            if (Float.isNaN(this.f7262n)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7264p);
                                break;
                            }
                            break;
                        case "rotation":
                            if (Float.isNaN(this.f7260l)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7260l);
                                break;
                            }
                            break;
                        case "elevation":
                            if (Float.isNaN(this.f7259k)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7259k);
                                break;
                            }
                            break;
                        case "transitionPathRotate":
                            if (Float.isNaN(this.f7265q)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7265q);
                                break;
                            }
                            break;
                        case "alpha":
                            if (Float.isNaN(this.f7258j)) {
                                break;
                            } else {
                                iVar.c(this.f7250a, this.f7258j);
                                break;
                            }
                            break;
                    }
                } else {
                    ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7254e.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ((v0.d.b) iVar).i(this.f7250a, constraintAttribute);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new e().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        e eVar = (e) dVar;
        this.f7256h = eVar.f7256h;
        this.f7257i = eVar.f7257i;
        this.f7258j = eVar.f7258j;
        this.f7259k = eVar.f7259k;
        this.f7260l = eVar.f7260l;
        this.f7261m = eVar.f7261m;
        this.f7262n = eVar.f7262n;
        this.f7263o = eVar.f7263o;
        this.f7264p = eVar.f7264p;
        this.f7265q = eVar.f7265q;
        this.f7266r = eVar.f7266r;
        this.f7267s = eVar.f7267s;
        this.f7268t = eVar.f7268t;
        this.f7269u = eVar.f7269u;
        this.f7270v = eVar.f7270v;
        this.f7271w = eVar.f7271w;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f7258j)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f7259k)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f7260l)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f7261m)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f7262n)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f7263o)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f7264p)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f7268t)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f7269u)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f7270v)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f7265q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f7266r)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f7267s)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f7271w)) {
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
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void h(HashMap map) {
        if (this.f7256h == -1) {
            return;
        }
        if (!Float.isNaN(this.f7258j)) {
            map.put("alpha", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7259k)) {
            map.put("elevation", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7260l)) {
            map.put("rotation", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7261m)) {
            map.put("rotationX", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7262n)) {
            map.put("rotationY", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7263o)) {
            map.put("transformPivotX", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7264p)) {
            map.put("transformPivotY", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7268t)) {
            map.put("translationX", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7269u)) {
            map.put("translationY", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7270v)) {
            map.put("translationZ", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7265q)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7266r)) {
            map.put("scaleX", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7267s)) {
            map.put("scaleY", Integer.valueOf(this.f7256h));
        }
        if (!Float.isNaN(this.f7271w)) {
            map.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(this.f7256h));
        }
        if (this.f7254e.size() > 0) {
            Iterator it = this.f7254e.keySet().iterator();
            while (it.hasNext()) {
                map.put("CUSTOM," + ((String) it.next()), Integer.valueOf(this.f7256h));
            }
        }
    }
}
