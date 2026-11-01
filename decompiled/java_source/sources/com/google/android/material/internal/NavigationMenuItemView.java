package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.o0;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;

/* JADX INFO: loaded from: classes4.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements androidx.appcompat.view.menu.m.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f29099r = {R.attr.state_checked};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29100g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29101h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f29102i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f29103j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final CheckedTextView f29104k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private FrameLayout f29105l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private androidx.appcompat.view.menu.h f29106m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ColorStateList f29107n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f29108o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Drawable f29109p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AccessibilityDelegateCompat f29110q;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f29102i);
        }
    }

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f29103j = true;
        a aVar = new a();
        this.f29110q = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(R$layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(R$dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R$id.design_menu_item_text);
        this.f29104k = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, aVar);
    }

    private void d() {
        if (f()) {
            this.f29104k.setVisibility(8);
            FrameLayout frameLayout = this.f29105l;
            if (frameLayout != null) {
                LinearLayoutCompat.a aVar = (LinearLayoutCompat.a) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) aVar).width = -1;
                this.f29105l.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.f29104k.setVisibility(0);
        FrameLayout frameLayout2 = this.f29105l;
        if (frameLayout2 != null) {
            LinearLayoutCompat.a aVar2 = (LinearLayoutCompat.a) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) aVar2).width = -2;
            this.f29105l.setLayoutParams(aVar2);
        }
    }

    private StateListDrawable e() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R$attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f29099r, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private boolean f() {
        return this.f29106m.getTitle() == null && this.f29106m.getIcon() == null && this.f29106m.getActionView() != null;
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f29105l == null) {
                this.f29105l = (FrameLayout) ((ViewStub) findViewById(R$id.design_menu_item_action_area_stub)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f29105l.removeAllViews();
            this.f29105l.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public androidx.appcompat.view.menu.h getItemData() {
        return this.f29106m;
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void initialize(@NonNull androidx.appcompat.view.menu.h hVar, int i11) {
        this.f29106m = hVar;
        if (hVar.getItemId() > 0) {
            setId(hVar.getItemId());
        }
        setVisibility(hVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, e());
        }
        setCheckable(hVar.isCheckable());
        setChecked(hVar.isChecked());
        setEnabled(hVar.isEnabled());
        setTitle(hVar.getTitle());
        setIcon(hVar.getIcon());
        setActionView(hVar.getActionView());
        setContentDescription(hVar.getContentDescription());
        o0.a(this, hVar.getTooltipText());
        d();
    }

    public void initialize(@NonNull androidx.appcompat.view.menu.h hVar, boolean z10) {
        this.f29103j = z10;
        initialize(hVar, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i11) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + 1);
        androidx.appcompat.view.menu.h hVar = this.f29106m;
        if (hVar != null && hVar.isCheckable() && this.f29106m.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29099r);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void recycle() {
        FrameLayout frameLayout = this.f29105l;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f29104k.setCompoundDrawables(null, null, null, null);
    }

    public void setCheckable(boolean z10) {
        refreshDrawableState();
        if (this.f29102i != z10) {
            this.f29102i = z10;
            this.f29110q.sendAccessibilityEvent(this.f29104k, 2048);
        }
    }

    public void setChecked(boolean z10) {
        refreshDrawableState();
        this.f29104k.setChecked(z10);
        CheckedTextView checkedTextView = this.f29104k;
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z10 && this.f29103j) ? 1 : 0);
    }

    public void setHorizontalPadding(int i11) {
        setPadding(i11, getPaddingTop(), i11, getPaddingBottom());
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.f29108o) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = a1.a.r(drawable).mutate();
                a1.a.o(drawable, this.f29107n);
            }
            int i11 = this.f29100g;
            drawable.setBounds(0, 0, i11, i11);
        } else if (this.f29101h) {
            if (this.f29109p == null) {
                Drawable drawableE = y0.h.e(getResources(), R$drawable.navigation_empty_icon, getContext().getTheme());
                this.f29109p = drawableE;
                if (drawableE != null) {
                    int i12 = this.f29100g;
                    drawableE.setBounds(0, 0, i12, i12);
                }
            }
            drawable = this.f29109p;
        }
        androidx.core.widget.m.k(this.f29104k, drawable, null, null, null);
    }

    public void setIconPadding(int i11) {
        this.f29104k.setCompoundDrawablePadding(i11);
    }

    public void setIconSize(int i11) {
        this.f29100g = i11;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.f29107n = colorStateList;
        this.f29108o = colorStateList != null;
        androidx.appcompat.view.menu.h hVar = this.f29106m;
        if (hVar != null) {
            setIcon(hVar.getIcon());
        }
    }

    public void setMaxLines(int i11) {
        this.f29104k.setMaxLines(i11);
    }

    public void setNeedsEmptyIcon(boolean z10) {
        this.f29101h = z10;
    }

    public void setShortcut(boolean z10, char c11) {
    }

    public void setTextAppearance(int i11) {
        androidx.core.widget.m.q(this.f29104k, i11);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f29104k.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f29104k.setText(charSequence);
    }

    public boolean showsIcon() {
        return true;
    }
}
