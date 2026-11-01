package com.google.android.material.button;

import ab.n;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f28497k = R$style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f28498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f28499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedHashSet f28500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Comparator f28501d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer[] f28502e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28503f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28504g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f28505h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f28506i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Set f28507j;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, MaterialButtonToggleGroup.this.g(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    private static class b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final ab.d f28509e = new ab.a(0.0f);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ab.d f28510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ab.d f28511b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ab.d f28512c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ab.d f28513d;

        b(ab.d dVar, ab.d dVar2, ab.d dVar3, ab.d dVar4) {
            this.f28510a = dVar;
            this.f28511b = dVar3;
            this.f28512c = dVar4;
            this.f28513d = dVar2;
        }

        public static b a(b bVar) {
            ab.d dVar = f28509e;
            return new b(dVar, bVar.f28513d, dVar, bVar.f28512c);
        }

        public static b b(b bVar, View view) {
            return f0.p(view) ? c(bVar) : d(bVar);
        }

        public static b c(b bVar) {
            ab.d dVar = bVar.f28510a;
            ab.d dVar2 = bVar.f28513d;
            ab.d dVar3 = f28509e;
            return new b(dVar, dVar2, dVar3, dVar3);
        }

        public static b d(b bVar) {
            ab.d dVar = f28509e;
            return new b(dVar, dVar, bVar.f28511b, bVar.f28512c);
        }

        public static b e(b bVar, View view) {
            return f0.p(view) ? d(bVar) : c(bVar);
        }

        public static b f(b bVar) {
            ab.d dVar = bVar.f28510a;
            ab.d dVar2 = f28509e;
            return new b(dVar, dVar2, bVar.f28511b, dVar2);
        }
    }

    public interface c {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i11, boolean z10);
    }

    private class d implements MaterialButton.b {
        private d() {
        }

        @Override // com.google.android.material.button.MaterialButton.b
        public void a(MaterialButton materialButton, boolean z10) {
            MaterialButtonToggleGroup.this.invalidate();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f28497k;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28498a = new ArrayList();
        this.f28499b = new d();
        this.f28500c = new LinkedHashSet();
        this.f28501d = new Comparator<MaterialButton>() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.1
            @Override // java.util.Comparator
            public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
                int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
            }
        };
        this.f28503f = false;
        this.f28507j = new HashSet();
        TypedArray typedArrayI = b0.i(getContext(), attributeSet, R$styleable.MaterialButtonToggleGroup, i11, i12, new int[0]);
        setSingleSelection(typedArrayI.getBoolean(R$styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.f28506i = typedArrayI.getResourceId(R$styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.f28505h = typedArrayI.getBoolean(R$styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayI.getBoolean(R$styleable.MaterialButtonToggleGroup_android_enabled, true));
        typedArrayI.recycle();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private void b() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i11 = firstVisibleChildIndex + 1; i11 < getChildCount(); i11++) {
            MaterialButton materialButtonF = f(i11);
            int iMin = Math.min(materialButtonF.getStrokeWidth(), f(i11 - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsC = c(materialButtonF);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(layoutParamsC, 0);
                MarginLayoutParamsCompat.setMarginStart(layoutParamsC, -iMin);
                layoutParamsC.topMargin = 0;
            } else {
                layoutParamsC.bottomMargin = 0;
                layoutParamsC.topMargin = -iMin;
                MarginLayoutParamsCompat.setMarginStart(layoutParamsC, 0);
            }
            materialButtonF.setLayoutParams(layoutParamsC);
        }
        k(firstVisibleChildIndex);
    }

    private LinearLayout.LayoutParams c(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private void d(int i11, boolean z10) {
        if (i11 == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i11);
            return;
        }
        HashSet hashSet = new HashSet(this.f28507j);
        if (z10 && !hashSet.contains(Integer.valueOf(i11))) {
            if (this.f28504g && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i11));
        } else {
            if (z10 || !hashSet.contains(Integer.valueOf(i11))) {
                return;
            }
            if (!this.f28505h || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i11));
            }
        }
        n(hashSet);
    }

    private void e(int i11, boolean z10) {
        Iterator it = this.f28500c.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(this, i11, z10);
        }
    }

    private MaterialButton f(int i11) {
        return (MaterialButton) getChildAt(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g(View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            if (getChildAt(i12) == view) {
                return i11;
            }
            if ((getChildAt(i12) instanceof MaterialButton) && i(i12)) {
                i11++;
            }
        }
        return -1;
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            if (i(i11)) {
                return i11;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (i(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i11 = 0;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            if ((getChildAt(i12) instanceof MaterialButton) && i(i12)) {
                i11++;
            }
        }
        return i11;
    }

    private b h(int i11, int i12, int i13) {
        b bVar = (b) this.f28498a.get(i11);
        if (i12 == i13) {
            return bVar;
        }
        boolean z10 = getOrientation() == 0;
        if (i11 == i12) {
            return z10 ? b.e(bVar, this) : b.f(bVar);
        }
        if (i11 == i13) {
            return z10 ? b.b(bVar, this) : b.a(bVar);
        }
        return null;
    }

    private boolean i(int i11) {
        return getChildAt(i11).getVisibility() != 8;
    }

    private void k(int i11) {
        if (getChildCount() == 0 || i11 == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) f(i11).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            MarginLayoutParamsCompat.setMarginEnd(layoutParams, 0);
            MarginLayoutParamsCompat.setMarginStart(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    private void l(int i11, boolean z10) {
        View viewFindViewById = findViewById(i11);
        if (viewFindViewById instanceof MaterialButton) {
            this.f28503f = true;
            ((MaterialButton) viewFindViewById).setChecked(z10);
            this.f28503f = false;
        }
    }

    private static void m(n.b bVar, b bVar2) {
        if (bVar2 == null) {
            bVar.o(0.0f);
        } else {
            bVar.I(bVar2.f28510a).x(bVar2.f28513d).N(bVar2.f28511b).C(bVar2.f28512c);
        }
    }

    private void n(Set set) {
        Set set2 = this.f28507j;
        this.f28507j = new HashSet(set);
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            int id2 = f(i11).getId();
            l(id2, set.contains(Integer.valueOf(id2)));
            if (set2.contains(Integer.valueOf(id2)) != set.contains(Integer.valueOf(id2))) {
                e(id2, set.contains(Integer.valueOf(id2)));
            }
        }
        invalidate();
    }

    private void o() {
        TreeMap treeMap = new TreeMap(this.f28501d);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            treeMap.put(f(i11), Integer.valueOf(i11));
        }
        this.f28502e = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    private void q() {
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            f(i11).setA11yClassName((this.f28504g ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f28499b);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public void addOnButtonCheckedListener(@NonNull c cVar) {
        this.f28500c.add(cVar);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i11, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        d(materialButton.getId(), materialButton.isChecked());
        n shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f28498a.add(new b(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
        materialButton.setEnabled(isEnabled());
        ViewCompat.setAccessibilityDelegate(materialButton, new a());
    }

    public void check(int i11) {
        d(i11, true);
    }

    public void clearChecked() {
        n(new HashSet());
    }

    public void clearOnButtonCheckedListeners() {
        this.f28500c.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        o();
        super.dispatchDraw(canvas);
    }

    public int getCheckedButtonId() {
        if (!this.f28504g || this.f28507j.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f28507j.iterator().next()).intValue();
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            int id2 = f(i11).getId();
            if (this.f28507j.contains(Integer.valueOf(id2))) {
                arrayList.add(Integer.valueOf(id2));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i11, int i12) {
        Integer[] numArr = this.f28502e;
        if (numArr != null && i12 < numArr.length) {
            return numArr[i12].intValue();
        }
        Log.w("MButtonToggleGroup", "Child order wasn't updated");
        return i12;
    }

    public boolean isSelectionRequired() {
        return this.f28505h;
    }

    public boolean isSingleSelection() {
        return this.f28504g;
    }

    void j(MaterialButton materialButton, boolean z10) {
        if (this.f28503f) {
            return;
        }
        d(materialButton.getId(), z10);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i11 = this.f28506i;
        if (i11 != -1) {
            n(Collections.singleton(Integer.valueOf(i11)));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, isSingleSelection() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        p();
        b();
        super.onMeasure(i11, i12);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f28498a.remove(iIndexOfChild);
        }
        p();
        b();
    }

    void p() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i11 = 0; i11 < childCount; i11++) {
            MaterialButton materialButtonF = f(i11);
            if (materialButtonF.getVisibility() != 8) {
                n.b bVarV = materialButtonF.getShapeAppearanceModel().v();
                m(bVarV, h(i11, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonF.setShapeAppearanceModel(bVarV.m());
            }
        }
    }

    public void removeOnButtonCheckedListener(@NonNull c cVar) {
        this.f28500c.remove(cVar);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            f(i11).setEnabled(z10);
        }
    }

    public void setSelectionRequired(boolean z10) {
        this.f28505h = z10;
    }

    public void setSingleSelection(int i11) {
        setSingleSelection(getResources().getBoolean(i11));
    }

    public void setSingleSelection(boolean z10) {
        if (this.f28504g != z10) {
            this.f28504g = z10;
            clearChecked();
        }
        q();
    }

    public void uncheck(int i11) {
        d(i11, false);
    }
}
