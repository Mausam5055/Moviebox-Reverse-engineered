package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;
import androidx.constraintlayout.widget.b;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class CircularFlow extends VirtualLayout {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static int f7103v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static float f7104w;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ConstraintLayout f7105l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f7106m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float[] f7107n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f7108o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7109p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f7110q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f7111r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f7112s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Float f7113t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Integer f7114u;

    public CircularFlow(Context context) {
        super(context);
    }

    public CircularFlow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CircularFlow(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    private void l(String str) {
        float[] fArr;
        if (str == null || str.length() == 0 || this.f7654c == null || (fArr = this.f7107n) == null) {
            return;
        }
        if (this.f7110q + 1 > fArr.length) {
            this.f7107n = Arrays.copyOf(fArr, fArr.length + 1);
        }
        this.f7107n[this.f7110q] = Integer.parseInt(str);
        this.f7110q++;
    }

    private void m(String str) {
        int[] iArr;
        if (str == null || str.length() == 0 || this.f7654c == null || (iArr = this.f7108o) == null) {
            return;
        }
        if (this.f7109p + 1 > iArr.length) {
            this.f7108o = Arrays.copyOf(iArr, iArr.length + 1);
        }
        this.f7108o[this.f7109p] = (int) (Integer.parseInt(str) * this.f7654c.getResources().getDisplayMetrics().density);
        this.f7109p++;
    }

    private void n() {
        this.f7105l = (ConstraintLayout) getParent();
        for (int i11 = 0; i11 < this.f7653b; i11++) {
            View viewById = this.f7105l.getViewById(this.f7652a[i11]);
            if (viewById != null) {
                int i12 = f7103v;
                float f11 = f7104w;
                int[] iArr = this.f7108o;
                if (iArr == null || i11 >= iArr.length) {
                    Integer num = this.f7114u;
                    if (num == null || num.intValue() == -1) {
                        Log.e("CircularFlow", "Added radius to view with id: " + ((String) this.f7660i.get(Integer.valueOf(viewById.getId()))));
                    } else {
                        this.f7109p++;
                        if (this.f7108o == null) {
                            this.f7108o = new int[1];
                        }
                        int[] radius = getRadius();
                        this.f7108o = radius;
                        radius[this.f7109p - 1] = i12;
                    }
                } else {
                    i12 = iArr[i11];
                }
                float[] fArr = this.f7107n;
                if (fArr == null || i11 >= fArr.length) {
                    Float f12 = this.f7113t;
                    if (f12 == null || f12.floatValue() == -1.0f) {
                        Log.e("CircularFlow", "Added angle to view with id: " + ((String) this.f7660i.get(Integer.valueOf(viewById.getId()))));
                    } else {
                        this.f7110q++;
                        if (this.f7107n == null) {
                            this.f7107n = new float[1];
                        }
                        float[] angles = getAngles();
                        this.f7107n = angles;
                        angles[this.f7110q - 1] = f11;
                    }
                } else {
                    f11 = fArr[i11];
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) viewById.getLayoutParams();
                bVar.f7696r = f11;
                bVar.f7692p = this.f7106m;
                bVar.f7694q = i12;
                viewById.setLayoutParams(bVar);
            }
        }
        d();
    }

    private float[] o(float[] fArr, int i11) {
        return (fArr == null || i11 < 0 || i11 >= this.f7110q) ? fArr : removeElementFromArray(fArr, i11);
    }

    private int[] p(int[] iArr, int i11) {
        return (iArr == null || i11 < 0 || i11 >= this.f7109p) ? iArr : removeElementFromArray(iArr, i11);
    }

    public static float[] removeElementFromArray(float[] fArr, int i11) {
        float[] fArr2 = new float[fArr.length - 1];
        int i12 = 0;
        for (int i13 = 0; i13 < fArr.length; i13++) {
            if (i13 != i11) {
                fArr2[i12] = fArr[i13];
                i12++;
            }
        }
        return fArr2;
    }

    public static int[] removeElementFromArray(int[] iArr, int i11) {
        int[] iArr2 = new int[iArr.length - 1];
        int i12 = 0;
        for (int i13 = 0; i13 < iArr.length; i13++) {
            if (i13 != i11) {
                iArr2[i12] = iArr[i13];
                i12++;
            }
        }
        return iArr2;
    }

    private void setAngles(String str) {
        if (str == null) {
            return;
        }
        int i11 = 0;
        this.f7110q = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i11);
            if (iIndexOf == -1) {
                l(str.substring(i11).trim());
                return;
            } else {
                l(str.substring(i11, iIndexOf).trim());
                i11 = iIndexOf + 1;
            }
        }
    }

    private void setRadius(String str) {
        if (str == null) {
            return;
        }
        int i11 = 0;
        this.f7109p = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i11);
            if (iIndexOf == -1) {
                m(str.substring(i11).trim());
                return;
            } else {
                m(str.substring(i11, iIndexOf).trim());
                i11 = iIndexOf + 1;
            }
        }
    }

    public void addViewToCircularFlow(View view, int i11, float f11) {
        if (containsId(view.getId())) {
            return;
        }
        addView(view);
        this.f7110q++;
        float[] angles = getAngles();
        this.f7107n = angles;
        angles[this.f7110q - 1] = f11;
        this.f7109p++;
        int[] radius = getRadius();
        this.f7108o = radius;
        radius[this.f7109p - 1] = (int) (i11 * this.f7654c.getResources().getDisplayMetrics().density);
        n();
    }

    public float[] getAngles() {
        return Arrays.copyOf(this.f7107n, this.f7110q);
    }

    public int[] getRadius() {
        return Arrays.copyOf(this.f7108o, this.f7109p);
    }

    public boolean isUpdatable(View view) {
        return containsId(view.getId()) && indexFromId(view.getId()) != -1;
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ConstraintLayout_Layout_circularflow_viewCenter) {
                    this.f7106m = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_angles) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f7111r = string;
                    setAngles(string);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_radiusInDP) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f7112s = string2;
                    setRadius(string2);
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_defaultAngle) {
                    Float fValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, f7104w));
                    this.f7113t = fValueOf;
                    setDefaultAngle(fValueOf.floatValue());
                } else if (index == R$styleable.ConstraintLayout_Layout_circularflow_defaultRadius) {
                    Integer numValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, f7103v));
                    this.f7114u = numValueOf;
                    setDefaultRadius(numValueOf.intValue());
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f7111r;
        if (str != null) {
            this.f7107n = new float[1];
            setAngles(str);
        }
        String str2 = this.f7112s;
        if (str2 != null) {
            this.f7108o = new int[1];
            setRadius(str2);
        }
        Float f11 = this.f7113t;
        if (f11 != null) {
            setDefaultAngle(f11.floatValue());
        }
        Integer num = this.f7114u;
        if (num != null) {
            setDefaultRadius(num.intValue());
        }
        n();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public int removeView(View view) {
        int iRemoveView = super.removeView(view);
        if (iRemoveView == -1) {
            return iRemoveView;
        }
        b bVar = new b();
        bVar.q(this.f7105l);
        bVar.o(view.getId(), 8);
        bVar.i(this.f7105l);
        float[] fArr = this.f7107n;
        if (iRemoveView < fArr.length) {
            this.f7107n = o(fArr, iRemoveView);
            this.f7110q--;
        }
        int[] iArr = this.f7108o;
        if (iRemoveView < iArr.length) {
            this.f7108o = p(iArr, iRemoveView);
            this.f7109p--;
        }
        n();
        return iRemoveView;
    }

    public void setDefaultAngle(float f11) {
        f7104w = f11;
    }

    public void setDefaultRadius(int i11) {
        f7103v = i11;
    }

    public void updateAngle(View view, float f11) {
        if (!isUpdatable(view)) {
            Log.e("CircularFlow", "It was not possible to update angle to view with id: " + view.getId());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (iIndexFromId > this.f7107n.length) {
            return;
        }
        float[] angles = getAngles();
        this.f7107n = angles;
        angles[iIndexFromId] = f11;
        n();
    }

    public void updateRadius(View view, int i11) {
        if (!isUpdatable(view)) {
            Log.e("CircularFlow", "It was not possible to update radius to view with id: " + view.getId());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (iIndexFromId > this.f7108o.length) {
            return;
        }
        int[] radius = getRadius();
        this.f7108o = radius;
        radius[iIndexFromId] = (int) (i11 * this.f7654c.getResources().getDisplayMetrics().density);
        n();
    }

    public void updateReference(View view, int i11, float f11) {
        if (!isUpdatable(view)) {
            Log.e("CircularFlow", "It was not possible to update radius and angle to view with id: " + view.getId());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (getAngles().length > iIndexFromId) {
            float[] angles = getAngles();
            this.f7107n = angles;
            angles[iIndexFromId] = f11;
        }
        if (getRadius().length > iIndexFromId) {
            int[] radius = getRadius();
            this.f7108o = radius;
            radius[iIndexFromId] = (int) (i11 * this.f7654c.getResources().getDisplayMetrics().density);
        }
        n();
    }
}
