package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConstraintHelper extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int[] f7652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f7653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Context f7654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected t0.a f7655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f7656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f7657f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f7658g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View[] f7659h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected HashMap f7660i;

    public ConstraintHelper(Context context) {
        super(context);
        this.f7652a = new int[32];
        this.f7656e = false;
        this.f7659h = null;
        this.f7660i = new HashMap();
        this.f7654c = context;
        k(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7652a = new int[32];
        this.f7656e = false;
        this.f7659h = null;
        this.f7660i = new HashMap();
        this.f7654c = context;
        k(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7652a = new int[32];
        this.f7656e = false;
        this.f7659h = null;
        this.f7660i = new HashMap();
        this.f7654c = context;
        k(attributeSet);
    }

    private void a(String str) {
        if (str == null || str.length() == 0 || this.f7654c == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int i11 = i(strTrim);
        if (i11 != 0) {
            this.f7660i.put(Integer.valueOf(i11), strTrim);
            b(i11);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    private void b(int i11) {
        if (i11 == getId()) {
            return;
        }
        int i12 = this.f7653b + 1;
        int[] iArr = this.f7652a;
        if (i12 > iArr.length) {
            this.f7652a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f7652a;
        int i13 = this.f7653b;
        iArr2[i13] = i11;
        this.f7653b = i13 + 1;
    }

    private void c(String str) {
        if (str == null || str.length() == 0 || this.f7654c == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = constraintLayout.getChildAt(i11);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.b) && strTrim.equals(((ConstraintLayout.b) layoutParams).f7667c0)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    b(childAt.getId());
                }
            }
        }
    }

    private int[] g(View view, String str) {
        String[] strArrSplit = str.split(",");
        view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i11 = 0;
        for (String str2 : strArrSplit) {
            int i12 = i(str2.trim());
            if (i12 != 0) {
                iArr[i11] = i12;
                i11++;
            }
        }
        return i11 != strArrSplit.length ? Arrays.copyOf(iArr, i11) : iArr;
    }

    private int h(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str == null || constraintLayout == null || (resources = this.f7654c.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = constraintLayout.getChildAt(i11);
            if (childAt.getId() != -1) {
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = null;
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    private int i(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int iH = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, str);
            if (designInformation instanceof Integer) {
                iH = ((Integer) designInformation).intValue();
            }
        }
        if (iH == 0 && constraintLayout != null) {
            iH = h(constraintLayout, str);
        }
        if (iH == 0) {
            try {
                iH = R$id.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return iH == 0 ? this.f7654c.getResources().getIdentifier(str, "id", this.f7654c.getPackageName()) : iH;
    }

    public void addView(View view) {
        if (view == this) {
            return;
        }
        if (view.getId() == -1) {
            Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have an id");
        } else {
            if (view.getParent() == null) {
                Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have a parent");
                return;
            }
            this.f7657f = null;
            b(view.getId());
            requestLayout();
        }
    }

    public boolean containsId(int i11) {
        for (int i12 : this.f7652a) {
            if (i12 == i11) {
                return true;
            }
        }
        return false;
    }

    protected void d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        e((ConstraintLayout) parent);
    }

    protected void e(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i11 = 0; i11 < this.f7653b; i11++) {
            View viewById = constraintLayout.getViewById(this.f7652a[i11]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    protected void f(ConstraintLayout constraintLayout) {
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f7652a, this.f7653b);
    }

    public int indexFromId(int i11) {
        int i12 = -1;
        for (int i13 : this.f7652a) {
            i12++;
            if (i13 == i11) {
                return i12;
            }
        }
        return i12;
    }

    protected View[] j(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f7659h;
        if (viewArr == null || viewArr.length != this.f7653b) {
            this.f7659h = new View[this.f7653b];
        }
        for (int i11 = 0; i11 < this.f7653b; i11++) {
            this.f7659h[i11] = constraintLayout.getViewById(this.f7652a[i11]);
        }
        return this.f7659h;
    }

    protected void k(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f7657f = string;
                    setIds(string);
                } else if (index == R$styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f7658g = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void loadParameters(b.a aVar, t0.b bVar, ConstraintLayout.b bVar2, SparseArray<ConstraintWidget> sparseArray) {
        b.C0064b c0064b = aVar.f7767e;
        int[] iArr = c0064b.f7805k0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = c0064b.f7807l0;
            if (str != null) {
                if (str.length() > 0) {
                    b.C0064b c0064b2 = aVar.f7767e;
                    c0064b2.f7805k0 = g(this, c0064b2.f7807l0);
                } else {
                    aVar.f7767e.f7805k0 = null;
                }
            }
        }
        if (bVar == null) {
            return;
        }
        bVar.b();
        if (aVar.f7767e.f7805k0 == null) {
            return;
        }
        int i11 = 0;
        while (true) {
            int[] iArr2 = aVar.f7767e.f7805k0;
            if (i11 >= iArr2.length) {
                return;
            }
            ConstraintWidget constraintWidget = sparseArray.get(iArr2[i11]);
            if (constraintWidget != null) {
                bVar.a(constraintWidget);
            }
            i11++;
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f7657f;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f7658g;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        if (this.f7656e) {
            super.onMeasure(i11, i12);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public int removeView(View view) {
        int i11;
        int id2 = view.getId();
        int i12 = -1;
        if (id2 == -1) {
            return -1;
        }
        this.f7657f = null;
        for (int i13 = 0; i13 < this.f7653b; i13++) {
            if (this.f7652a[i13] == id2) {
                int i14 = i13;
                while (true) {
                    i11 = this.f7653b;
                    if (i14 >= i11 - 1) {
                        break;
                    }
                    int[] iArr = this.f7652a;
                    int i15 = i14 + 1;
                    iArr[i14] = iArr[i15];
                    i14 = i15;
                }
                this.f7652a[i11 - 1] = 0;
                this.f7653b = i11 - 1;
                i12 = i13;
                break;
            }
        }
        requestLayout();
        return i12;
    }

    public void resolveRtl(ConstraintWidget constraintWidget, boolean z10) {
    }

    protected void setIds(String str) {
        this.f7657f = str;
        if (str == null) {
            return;
        }
        int i11 = 0;
        this.f7653b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i11);
            if (iIndexOf == -1) {
                a(str.substring(i11));
                return;
            } else {
                a(str.substring(i11, iIndexOf));
                i11 = iIndexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.f7658g = str;
        if (str == null) {
            return;
        }
        int i11 = 0;
        this.f7653b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i11);
            if (iIndexOf == -1) {
                c(str.substring(i11));
                return;
            } else {
                c(str.substring(i11, iIndexOf));
                i11 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f7657f = null;
        this.f7653b = 0;
        for (int i11 : iArr) {
            b(i11);
        }
    }

    @Override // android.view.View
    public void setTag(int i11, Object obj) {
        super.setTag(i11, obj);
        if (obj == null && this.f7657f == null) {
            b(i11);
        }
    }

    public void updatePostConstraints(ConstraintLayout constraintLayout) {
    }

    public void updatePostLayout(ConstraintLayout constraintLayout) {
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
    }

    public void updatePreDraw(ConstraintLayout constraintLayout) {
    }

    public void updatePreLayout(androidx.constraintlayout.core.widgets.d dVar, t0.a aVar, SparseArray<ConstraintWidget> sparseArray) {
        aVar.b();
        for (int i11 = 0; i11 < this.f7653b; i11++) {
            aVar.a(sparseArray.get(this.f7652a[i11]));
        }
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        String str;
        int iH;
        if (isInEditMode()) {
            setIds(this.f7657f);
        }
        t0.a aVar = this.f7655d;
        if (aVar == null) {
            return;
        }
        aVar.b();
        for (int i11 = 0; i11 < this.f7653b; i11++) {
            int i12 = this.f7652a[i11];
            View viewById = constraintLayout.getViewById(i12);
            if (viewById == null && (iH = h(constraintLayout, (str = (String) this.f7660i.get(Integer.valueOf(i12))))) != 0) {
                this.f7652a[i11] = iH;
                this.f7660i.put(Integer.valueOf(iH), str);
                viewById = constraintLayout.getViewById(iH);
            }
            if (viewById != null) {
                this.f7655d.a(constraintLayout.getViewWidget(viewById));
            }
        }
        this.f7655d.c(constraintLayout.mLayoutWidget);
    }

    public void validateParams() {
        if (this.f7655d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).f7705v0 = (ConstraintWidget) this.f7655d;
        }
    }
}
