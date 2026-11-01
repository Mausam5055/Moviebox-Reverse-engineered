package com.google.android.material.textfield;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ListPopupWindow f29831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AccessibilityManager f29832f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Rect f29833g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f29834h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f29835i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f29836j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f29837k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f29838l;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
            MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
            MaterialAutoCompleteTextView.this.l(i11 < 0 ? materialAutoCompleteTextView.f29831e.u() : materialAutoCompleteTextView.getAdapter().getItem(i11));
            AdapterView.OnItemClickListener onItemClickListener = MaterialAutoCompleteTextView.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i11 < 0) {
                    view = MaterialAutoCompleteTextView.this.f29831e.x();
                    i11 = MaterialAutoCompleteTextView.this.f29831e.w();
                    j11 = MaterialAutoCompleteTextView.this.f29831e.v();
                }
                onItemClickListener.onItemClick(MaterialAutoCompleteTextView.this.f29831e.o(), view, i11, j11);
            }
            MaterialAutoCompleteTextView.this.f29831e.dismiss();
        }
    }

    private class b extends ArrayAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ColorStateList f29840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ColorStateList f29841b;

        b(Context context, int i11, String[] strArr) {
            super(context, i11, strArr);
            f();
        }

        private ColorStateList a() {
            if (!c() || !d()) {
                return null;
            }
            int[] iArr = {R.attr.state_hovered, -16842919};
            int[] iArr2 = {R.attr.state_selected, -16842919};
            return new ColorStateList(new int[][]{iArr2, iArr, new int[0]}, new int[]{com.google.android.material.color.b.i(MaterialAutoCompleteTextView.this.f29837k, MaterialAutoCompleteTextView.this.f29838l.getColorForState(iArr2, 0)), com.google.android.material.color.b.i(MaterialAutoCompleteTextView.this.f29837k, MaterialAutoCompleteTextView.this.f29838l.getColorForState(iArr, 0)), MaterialAutoCompleteTextView.this.f29837k});
        }

        private Drawable b() {
            if (!c()) {
                return null;
            }
            ColorDrawable colorDrawable = new ColorDrawable(MaterialAutoCompleteTextView.this.f29837k);
            if (this.f29841b == null) {
                return colorDrawable;
            }
            a1.a.o(colorDrawable, this.f29840a);
            return new RippleDrawable(this.f29841b, colorDrawable, null);
        }

        private boolean c() {
            return MaterialAutoCompleteTextView.this.f29837k != 0;
        }

        private boolean d() {
            return MaterialAutoCompleteTextView.this.f29838l != null;
        }

        private ColorStateList e() {
            if (!d()) {
                return null;
            }
            int[] iArr = {R.attr.state_pressed};
            return new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{MaterialAutoCompleteTextView.this.f29838l.getColorForState(iArr, 0), 0});
        }

        void f() {
            this.f29841b = e();
            this.f29840a = a();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i11, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i11, view, viewGroup);
            if (view2 instanceof TextView) {
                TextView textView = (TextView) view2;
                ViewCompat.setBackground(textView, MaterialAutoCompleteTextView.this.getText().toString().contentEquals(textView.getText()) ? b() : null);
            }
            return view2;
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(bb.a.c(context, attributeSet, i11, 0), attributeSet, i11);
        this.f29833g = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayI = com.google.android.material.internal.b0.i(context2, attributeSet, R$styleable.MaterialAutoCompleteTextView, i11, R$style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (typedArrayI.hasValue(R$styleable.MaterialAutoCompleteTextView_android_inputType) && typedArrayI.getInt(R$styleable.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f29834h = typedArrayI.getResourceId(R$styleable.MaterialAutoCompleteTextView_simpleItemLayout, R$layout.mtrl_auto_complete_simple_item);
        this.f29835i = typedArrayI.getDimensionPixelOffset(R$styleable.MaterialAutoCompleteTextView_android_popupElevation, R$dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (typedArrayI.hasValue(R$styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint)) {
            this.f29836j = ColorStateList.valueOf(typedArrayI.getColor(R$styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint, 0));
        }
        this.f29837k = typedArrayI.getColor(R$styleable.MaterialAutoCompleteTextView_simpleItemSelectedColor, 0);
        this.f29838l = xa.c.a(context2, typedArrayI, R$styleable.MaterialAutoCompleteTextView_simpleItemSelectedRippleColor);
        this.f29832f = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f29831e = listPopupWindow;
        listPopupWindow.I(true);
        listPopupWindow.C(this);
        listPopupWindow.H(2);
        listPopupWindow.m(getAdapter());
        listPopupWindow.K(new a());
        if (typedArrayI.hasValue(R$styleable.MaterialAutoCompleteTextView_simpleItems)) {
            setSimpleItems(typedArrayI.getResourceId(R$styleable.MaterialAutoCompleteTextView_simpleItems, 0));
        }
        typedArrayI.recycle();
    }

    private TextInputLayout f() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    private boolean g() {
        return i() || h();
    }

    private boolean h() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.f29832f;
        if (accessibilityManager != null && accessibilityManager.isEnabled() && (enabledAccessibilityServiceList = this.f29832f.getEnabledAccessibilityServiceList(16)) != null) {
            for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
                if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean i() {
        AccessibilityManager accessibilityManager = this.f29832f;
        return accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled();
    }

    private int j() {
        ListAdapter adapter = getAdapter();
        TextInputLayout textInputLayoutF = f();
        int i11 = 0;
        if (adapter == null || textInputLayoutF == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMin = Math.min(adapter.getCount(), Math.max(0, this.f29831e.w()) + 15);
        View view = null;
        int iMax = 0;
        for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
            int itemViewType = adapter.getItemViewType(iMax2);
            if (itemViewType != i11) {
                view = null;
                i11 = itemViewType;
            }
            view = adapter.getView(iMax2, view, textInputLayoutF);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        Drawable drawableG = this.f29831e.g();
        if (drawableG != null) {
            drawableG.getPadding(this.f29833g);
            Rect rect = this.f29833g;
            iMax += rect.left + rect.right;
        }
        return iMax + textInputLayoutF.getEndIconView().getMeasuredWidth();
    }

    private void k() {
        TextInputLayout textInputLayoutF = f();
        if (textInputLayoutF != null) {
            textInputLayoutF.l0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Object obj) {
        setText(convertSelectionToString(obj), false);
    }

    @Override // android.widget.AutoCompleteTextView
    public void dismissDropDown() {
        if (g()) {
            this.f29831e.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    @Nullable
    public ColorStateList getDropDownBackgroundTintList() {
        return this.f29836j;
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout textInputLayoutF = f();
        return (textInputLayoutF == null || !textInputLayoutF.isProvidingHint()) ? super.getHint() : textInputLayoutF.getHint();
    }

    public float getPopupElevation() {
        return this.f29835i;
    }

    public int getSimpleItemSelectedColor() {
        return this.f29837k;
    }

    @Nullable
    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.f29838l;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutF = f();
        if (textInputLayoutF != null && textInputLayoutF.isProvidingHint() && super.getHint() == null && com.google.android.material.internal.k.d()) {
            setHint("");
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f29831e.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), j()), View.MeasureSpec.getSize(i11)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        if (g()) {
            return;
        }
        super.onWindowFocusChanged(z10);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t11) {
        super.setAdapter(t11);
        this.f29831e.m(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        ListPopupWindow listPopupWindow = this.f29831e;
        if (listPopupWindow != null) {
            listPopupWindow.b(drawable);
        }
    }

    public void setDropDownBackgroundTint(int i11) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i11));
    }

    public void setDropDownBackgroundTintList(@Nullable ColorStateList colorStateList) {
        this.f29836j = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof ab.i) {
            ((ab.i) dropDownBackground).d0(this.f29836j);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f29831e.L(getOnItemSelectedListener());
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i11) {
        super.setRawInputType(i11);
        k();
    }

    public void setSimpleItemSelectedColor(int i11) {
        this.f29837k = i11;
        if (getAdapter() instanceof b) {
            ((b) getAdapter()).f();
        }
    }

    public void setSimpleItemSelectedRippleColor(@Nullable ColorStateList colorStateList) {
        this.f29838l = colorStateList;
        if (getAdapter() instanceof b) {
            ((b) getAdapter()).f();
        }
    }

    public void setSimpleItems(int i11) {
        setSimpleItems(getResources().getStringArray(i11));
    }

    public void setSimpleItems(@NonNull String[] strArr) {
        setAdapter(new b(getContext(), this.f29834h, strArr));
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        if (g()) {
            this.f29831e.show();
        } else {
            super.showDropDown();
        }
    }
}
