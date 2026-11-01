package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class h extends i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f7296h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f7297i = d.f7249f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f7298j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float f7299k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float f7300l = Float.NaN;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f7301m = Float.NaN;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f7302n = Float.NaN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    float f7303o = Float.NaN;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f7304p = Float.NaN;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f7305q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f7306r = Float.NaN;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f7307s = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f7308a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7308a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyPosition_motionTarget, 1);
            f7308a.append(R$styleable.KeyPosition_framePosition, 2);
            f7308a.append(R$styleable.KeyPosition_transitionEasing, 3);
            f7308a.append(R$styleable.KeyPosition_curveFit, 4);
            f7308a.append(R$styleable.KeyPosition_drawPath, 5);
            f7308a.append(R$styleable.KeyPosition_percentX, 6);
            f7308a.append(R$styleable.KeyPosition_percentY, 7);
            f7308a.append(R$styleable.KeyPosition_keyPositionType, 9);
            f7308a.append(R$styleable.KeyPosition_sizePercent, 8);
            f7308a.append(R$styleable.KeyPosition_percentWidth, 11);
            f7308a.append(R$styleable.KeyPosition_percentHeight, 12);
            f7308a.append(R$styleable.KeyPosition_pathMotionArc, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(h hVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArray.getIndex(i11);
                switch (f7308a.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, hVar.f7251b);
                            hVar.f7251b = resourceId;
                            if (resourceId == -1) {
                                hVar.f7252c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            hVar.f7252c = typedArray.getString(index);
                        } else {
                            hVar.f7251b = typedArray.getResourceId(index, hVar.f7251b);
                        }
                        break;
                    case 2:
                        hVar.f7250a = typedArray.getInt(index, hVar.f7250a);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            hVar.f7296h = typedArray.getString(index);
                        } else {
                            hVar.f7296h = androidx.constraintlayout.core.motion.utils.c.f6768c[typedArray.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        hVar.f7309g = typedArray.getInteger(index, hVar.f7309g);
                        break;
                    case 5:
                        hVar.f7298j = typedArray.getInt(index, hVar.f7298j);
                        break;
                    case 6:
                        hVar.f7301m = typedArray.getFloat(index, hVar.f7301m);
                        break;
                    case 7:
                        hVar.f7302n = typedArray.getFloat(index, hVar.f7302n);
                        break;
                    case 8:
                        float f11 = typedArray.getFloat(index, hVar.f7300l);
                        hVar.f7299k = f11;
                        hVar.f7300l = f11;
                        break;
                    case 9:
                        hVar.f7305q = typedArray.getInt(index, hVar.f7305q);
                        break;
                    case 10:
                        hVar.f7297i = typedArray.getInt(index, hVar.f7297i);
                        break;
                    case 11:
                        hVar.f7299k = typedArray.getFloat(index, hVar.f7299k);
                        break;
                    case 12:
                        hVar.f7300l = typedArray.getFloat(index, hVar.f7300l);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7308a.get(index));
                        break;
                }
            }
            if (hVar.f7250a == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    public h() {
        this.f7253d = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap map) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        return new h().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        h hVar = (h) dVar;
        this.f7296h = hVar.f7296h;
        this.f7297i = hVar.f7297i;
        this.f7298j = hVar.f7298j;
        this.f7299k = hVar.f7299k;
        this.f7300l = Float.NaN;
        this.f7301m = hVar.f7301m;
        this.f7302n = hVar.f7302n;
        this.f7303o = hVar.f7303o;
        this.f7304p = hVar.f7304p;
        this.f7306r = hVar.f7306r;
        this.f7307s = hVar.f7307s;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyPosition));
    }

    public void m(int i11) {
        this.f7305q = i11;
    }

    public void n(String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "transitionEasing":
                this.f7296h = obj.toString();
                break;
            case "percentWidth":
                this.f7299k = k(obj);
                break;
            case "percentHeight":
                this.f7300l = k(obj);
                break;
            case "drawPath":
                this.f7298j = l(obj);
                break;
            case "sizePercent":
                float fK = k(obj);
                this.f7299k = fK;
                this.f7300l = fK;
                break;
            case "percentX":
                this.f7301m = k(obj);
                break;
            case "percentY":
                this.f7302n = k(obj);
                break;
        }
    }
}
