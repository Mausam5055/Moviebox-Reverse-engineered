package com.google.android.material.search;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.ToolbarUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes4.dex */
public class SearchBar extends Toolbar {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final int f29515m0 = R$style.Widget_Material3_SearchBar;
    private final TextView U;
    private final boolean V;
    private final boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final i f29516a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private final Drawable f29517b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private final boolean f29518c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private final boolean f29519d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private View f29520e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private Integer f29521f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private Drawable f29522g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private int f29523h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private boolean f29524i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private ab.i f29525j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private final AccessibilityManager f29526k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f29527l0;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f29528a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f29528a = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeString(this.f29528a);
        }
    }

    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f29529h;

        public ScrollingViewBehavior() {
            this.f29529h = false;
        }

        public ScrollingViewBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f29529h = false;
        }

        private void U(AppBarLayout appBarLayout) {
            appBarLayout.setBackgroundColor(0);
            appBarLayout.setTargetElevation(0.0f);
        }

        @Override // com.google.android.material.appbar.h
        protected boolean P() {
            return true;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            boolean zH = super.h(coordinatorLayout, view, view2);
            if (!this.f29529h && (view2 instanceof AppBarLayout)) {
                this.f29529h = true;
                U((AppBarLayout) view2);
            }
            return zH;
        }
    }

    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(SearchBar.this.f29526k0, SearchBar.this.f29527l0);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(SearchBar.this.f29526k0, SearchBar.this.f29527l0);
        }
    }

    public static abstract class b {
        public void a() {
        }

        public void b() {
        }
    }

    public SearchBar(@NonNull Context context) {
        this(context, null);
    }

    public SearchBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSearchBarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f29515m0;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f29523h0 = -1;
        this.f29527l0 = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: com.google.android.material.search.c
            @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z10) {
                this.f29563a.K(z10);
            }
        };
        Context context2 = getContext();
        U(attributeSet);
        this.f29517b0 = g.a.b(context2, getDefaultNavigationIconResource());
        this.f29516a0 = new i();
        TypedArray typedArrayI = com.google.android.material.internal.b0.i(context2, attributeSet, R$styleable.SearchBar, i11, i12, new int[0]);
        ab.n nVarM = ab.n.e(context2, attributeSet, i11, i12).m();
        int color = typedArrayI.getColor(R$styleable.SearchBar_backgroundTint, 0);
        float dimension = typedArrayI.getDimension(R$styleable.SearchBar_elevation, 0.0f);
        this.W = typedArrayI.getBoolean(R$styleable.SearchBar_defaultMarginsEnabled, true);
        this.f29524i0 = typedArrayI.getBoolean(R$styleable.SearchBar_defaultScrollFlagsEnabled, true);
        boolean z10 = typedArrayI.getBoolean(R$styleable.SearchBar_hideNavigationIcon, false);
        this.f29519d0 = typedArrayI.getBoolean(R$styleable.SearchBar_forceDefaultNavigationOnClickListener, false);
        this.f29518c0 = typedArrayI.getBoolean(R$styleable.SearchBar_tintNavigationIcon, true);
        if (typedArrayI.hasValue(R$styleable.SearchBar_navigationIconTint)) {
            this.f29521f0 = Integer.valueOf(typedArrayI.getColor(R$styleable.SearchBar_navigationIconTint, -1));
        }
        int resourceId = typedArrayI.getResourceId(R$styleable.SearchBar_android_textAppearance, -1);
        String string = typedArrayI.getString(R$styleable.SearchBar_android_text);
        String string2 = typedArrayI.getString(R$styleable.SearchBar_android_hint);
        float dimension2 = typedArrayI.getDimension(R$styleable.SearchBar_strokeWidth, -1.0f);
        int color2 = typedArrayI.getColor(R$styleable.SearchBar_strokeColor, 0);
        typedArrayI.recycle();
        if (!z10) {
            I();
        }
        setClickable(true);
        setFocusable(true);
        LayoutInflater.from(context2).inflate(R$layout.mtrl_search_bar, this);
        this.V = true;
        this.U = (TextView) findViewById(R$id.open_search_bar_text_view);
        ViewCompat.setElevation(this, dimension);
        J(resourceId, string, string2);
        H(nVarM, color, dimension, dimension2, color2);
        this.f29526k0 = (AccessibilityManager) getContext().getSystemService("accessibility");
        T();
    }

    private int G(int i11, int i12) {
        return i11 == 0 ? i12 : i11;
    }

    private void H(ab.n nVar, int i11, float f11, float f12, int i12) {
        ab.i iVar = new ab.i(nVar);
        this.f29525j0 = iVar;
        iVar.S(getContext());
        this.f29525j0.c0(f11);
        if (f12 >= 0.0f) {
            this.f29525j0.l0(f12, i12);
        }
        int iD = com.google.android.material.color.b.d(this, R$attr.colorControlHighlight);
        this.f29525j0.d0(ColorStateList.valueOf(i11));
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iD);
        ab.i iVar2 = this.f29525j0;
        ViewCompat.setBackground(this, new RippleDrawable(colorStateListValueOf, iVar2, iVar2));
    }

    private void I() {
        setNavigationIcon(getNavigationIcon() == null ? this.f29517b0 : getNavigationIcon());
        setNavigationIconDecorative(true);
    }

    private void J(int i11, String str, String str2) {
        if (i11 != -1) {
            androidx.core.widget.m.q(this.U, i11);
        }
        setText(str);
        setHint(str2);
        if (getNavigationIcon() == null) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.U.getLayoutParams(), getResources().getDimensionPixelSize(R$dimen.m3_searchbar_text_margin_start_no_navigation_icon));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(boolean z10) {
        setFocusableInTouchMode(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L() {
        this.f29516a0.J(this);
    }

    private void M() {
        View view = this.f29520e0;
        if (view == null) {
            return;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredWidth2 = (getMeasuredWidth() / 2) - (measuredWidth / 2);
        int i11 = measuredWidth2 + measuredWidth;
        int measuredHeight = this.f29520e0.getMeasuredHeight();
        int measuredHeight2 = (getMeasuredHeight() / 2) - (measuredHeight / 2);
        N(this.f29520e0, measuredWidth2, measuredHeight2, i11, measuredHeight2 + measuredHeight);
    }

    private void N(View view, int i11, int i12, int i13, int i14) {
        if (ViewCompat.getLayoutDirection(this) == 1) {
            view.layout(getMeasuredWidth() - i13, i12, getMeasuredWidth() - i11, i14);
        } else {
            view.layout(i11, i12, i13, i14);
        }
    }

    private Drawable O(Drawable drawable) {
        int iD;
        if (!this.f29518c0 || drawable == null) {
            return drawable;
        }
        Integer num = this.f29521f0;
        if (num != null) {
            iD = num.intValue();
        } else {
            iD = com.google.android.material.color.b.d(this, drawable == this.f29517b0 ? R$attr.colorOnSurfaceVariant : R$attr.colorOnSurface);
        }
        Drawable drawableR = a1.a.r(drawable.mutate());
        a1.a.n(drawableR, iD);
        return drawableR;
    }

    private void P(int i11, int i12) {
        View view = this.f29520e0;
        if (view != null) {
            view.measure(i11, i12);
        }
    }

    private void Q() {
        if (this.W && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            Resources resources = getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.m3_searchbar_margin_horizontal);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(getDefaultMarginVerticalResource());
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            marginLayoutParams.leftMargin = G(marginLayoutParams.leftMargin, dimensionPixelSize);
            marginLayoutParams.topMargin = G(marginLayoutParams.topMargin, dimensionPixelSize2);
            marginLayoutParams.rightMargin = G(marginLayoutParams.rightMargin, dimensionPixelSize);
            marginLayoutParams.bottomMargin = G(marginLayoutParams.bottomMargin, dimensionPixelSize2);
        }
    }

    private void R() {
        int width;
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        int right = 0;
        boolean z10 = getLayoutDirection() == 1;
        ImageButton imageButtonE = ToolbarUtils.e(this);
        if (imageButtonE == null || !imageButtonE.isClickable()) {
            width = 0;
        } else {
            width = z10 ? getWidth() - imageButtonE.getLeft() : imageButtonE.getRight();
        }
        ActionMenuView actionMenuViewB = ToolbarUtils.b(this);
        if (actionMenuViewB != null) {
            right = z10 ? actionMenuViewB.getRight() : getWidth() - actionMenuViewB.getLeft();
        }
        float f11 = -(z10 ? right : width);
        if (!z10) {
            width = right;
        }
        setHandwritingBoundsOffsets(f11, 0.0f, -width, 0.0f);
    }

    private void S() {
        if (getLayoutParams() instanceof AppBarLayout.e) {
            AppBarLayout.e eVar = (AppBarLayout.e) getLayoutParams();
            if (this.f29524i0) {
                if (eVar.c() == 0) {
                    eVar.g(53);
                }
            } else if (eVar.c() == 53) {
                eVar.g(0);
            }
        }
    }

    private void T() {
        AccessibilityManager accessibilityManager = this.f29526k0;
        if (accessibilityManager != null) {
            if (accessibilityManager.isEnabled() && this.f29526k0.isTouchExplorationEnabled()) {
                setFocusableInTouchMode(true);
            }
            addOnAttachStateChangeListener(new a());
        }
    }

    private void U(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", CampaignEx.JSON_KEY_TITLE) != null) {
            throw new UnsupportedOperationException("SearchBar does not support title. Use hint or text instead.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "subtitle") != null) {
            throw new UnsupportedOperationException("SearchBar does not support subtitle. Use hint or text instead.");
        }
    }

    private void setNavigationIconDecorative(boolean z10) {
        ImageButton imageButtonE = ToolbarUtils.e(this);
        if (imageButtonE == null) {
            return;
        }
        imageButtonE.setClickable(!z10);
        imageButtonE.setFocusable(!z10);
        Drawable background = imageButtonE.getBackground();
        if (background != null) {
            this.f29522g0 = background;
        }
        imageButtonE.setBackgroundDrawable(z10 ? null : this.f29522g0);
        R();
    }

    public void addCollapseAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f29516a0.h(animatorListenerAdapter);
    }

    public void addExpandAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f29516a0.i(animatorListenerAdapter);
    }

    public void addOnLoadAnimationCallback(@NonNull b bVar) {
        this.f29516a0.j(bVar);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (this.V && this.f29520e0 == null && !(view instanceof ActionMenuView)) {
            this.f29520e0 = view;
            view.setAlpha(0.0f);
        }
        super.addView(view, i11, layoutParams);
    }

    public void clearText() {
        this.U.setText("");
    }

    public boolean collapse(@NonNull View view) {
        return collapse(view, null);
    }

    public boolean collapse(@NonNull View view, @Nullable AppBarLayout appBarLayout) {
        return collapse(view, appBarLayout, false);
    }

    public boolean collapse(@NonNull View view, @Nullable AppBarLayout appBarLayout, boolean z10) {
        if ((view.getVisibility() != 0 || isCollapsing()) && !isExpanding()) {
            return false;
        }
        this.f29516a0.H(this, view, appBarLayout, z10);
        return true;
    }

    public boolean expand(@NonNull View view) {
        return expand(view, null);
    }

    public boolean expand(@NonNull View view, @Nullable AppBarLayout appBarLayout) {
        return expand(view, appBarLayout, false);
    }

    public boolean expand(@NonNull View view, @Nullable AppBarLayout appBarLayout, boolean z10) {
        if ((view.getVisibility() == 0 || isExpanding()) && !isCollapsing()) {
            return false;
        }
        this.f29516a0.I(this, view, appBarLayout, z10);
        return true;
    }

    @Nullable
    public View getCenterView() {
        return this.f29520e0;
    }

    float getCompatElevation() {
        ab.i iVar = this.f29525j0;
        return iVar != null ? iVar.y() : ViewCompat.getElevation(this);
    }

    public float getCornerSize() {
        return this.f29525j0.L();
    }

    protected int getDefaultMarginVerticalResource() {
        return R$dimen.m3_searchbar_margin_vertical;
    }

    protected int getDefaultNavigationIconResource() {
        return R$drawable.ic_search_black_24;
    }

    @Nullable
    public CharSequence getHint() {
        return this.U.getHint();
    }

    int getMenuResId() {
        return this.f29523h0;
    }

    public int getStrokeColor() {
        return this.f29525j0.H().getDefaultColor();
    }

    public float getStrokeWidth() {
        return this.f29525j0.J();
    }

    @NonNull
    public CharSequence getText() {
        return this.U.getText();
    }

    @NonNull
    public TextView getTextView() {
        return this.U;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(int i11) {
        Menu menu = getMenu();
        boolean z10 = menu instanceof androidx.appcompat.view.menu.f;
        if (z10) {
            ((androidx.appcompat.view.menu.f) menu).i0();
        }
        super.inflateMenu(i11);
        this.f29523h0 = i11;
        if (z10) {
            ((androidx.appcompat.view.menu.f) menu).h0();
        }
    }

    public boolean isCollapsing() {
        return this.f29516a0.x();
    }

    public boolean isDefaultScrollFlagsEnabled() {
        return this.f29524i0;
    }

    public boolean isExpanding() {
        return this.f29516a0.y();
    }

    public boolean isOnLoadAnimationFadeInEnabled() {
        return this.f29516a0.z();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ab.j.f(this, this.f29525j0);
        Q();
        S();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        int i11 = Build.VERSION.SDK_INT;
        accessibilityNodeInfo.setEditable(isEnabled());
        CharSequence text = getText();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        if (i11 >= 26) {
            accessibilityNodeInfo.setHintText(getHint());
            accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        }
        if (zIsEmpty) {
            text = getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        M();
        R();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        P(i11, i12);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.f29528a);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        CharSequence text = getText();
        savedState.f29528a = text == null ? null : text.toString();
        return savedState;
    }

    public boolean removeCollapseAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f29516a0.D(animatorListenerAdapter);
    }

    public boolean removeExpandAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f29516a0.E(animatorListenerAdapter);
    }

    public boolean removeOnLoadAnimationCallback(@NonNull b bVar) {
        return this.f29516a0.F(bVar);
    }

    public void setCenterView(@Nullable View view) {
        View view2 = this.f29520e0;
        if (view2 != null) {
            removeView(view2);
            this.f29520e0 = null;
        }
        if (view != null) {
            addView(view);
        }
    }

    public void setDefaultScrollFlagsEnabled(boolean z10) {
        this.f29524i0 = z10;
        S();
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        ab.i iVar = this.f29525j0;
        if (iVar != null) {
            iVar.c0(f11);
        }
    }

    public void setHint(int i11) {
        this.U.setHint(i11);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.U.setHint(charSequence);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(O(drawable));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        if (this.f29519d0) {
            return;
        }
        super.setNavigationOnClickListener(onClickListener);
        setNavigationIconDecorative(onClickListener == null);
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z10) {
        this.f29516a0.G(z10);
    }

    public void setStrokeColor(int i11) {
        if (getStrokeColor() != i11) {
            this.f29525j0.n0(ColorStateList.valueOf(i11));
        }
    }

    public void setStrokeWidth(float f11) {
        if (getStrokeWidth() != f11) {
            this.f29525j0.o0(f11);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    public void setText(int i11) {
        this.U.setText(i11);
    }

    public void setText(@Nullable CharSequence charSequence) {
        this.U.setText(charSequence);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public void startOnLoadAnimation() {
        post(new Runnable() { // from class: com.google.android.material.search.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f29561a.L();
            }
        });
    }

    public void stopOnLoadAnimation() {
        this.f29516a0.K(this);
    }
}
