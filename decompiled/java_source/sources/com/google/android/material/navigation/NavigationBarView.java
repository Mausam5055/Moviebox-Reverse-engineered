package com.google.android.material.navigation;

import ab.i;
import ab.j;
import ab.n;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.j0;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.b0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NavigationBarView extends FrameLayout {
    public static final int LABEL_VISIBILITY_AUTO = -1;
    public static final int LABEL_VISIBILITY_LABELED = 1;
    public static final int LABEL_VISIBILITY_SELECTED = 0;
    public static final int LABEL_VISIBILITY_UNLABELED = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f29362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NavigationBarMenuView f29363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final NavigationBarPresenter f29364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MenuInflater f29365d;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Bundle f29366a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f29366a = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeBundle(this.f29366a);
        }
    }

    class a implements androidx.appcompat.view.menu.f.a {
        a() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            NavigationBarView.a(NavigationBarView.this);
            NavigationBarView.b(NavigationBarView.this);
            return false;
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void b(androidx.appcompat.view.menu.f fVar) {
        }
    }

    public interface b {
    }

    public interface c {
    }

    public NavigationBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11, int i12) {
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.f29364c = navigationBarPresenter;
        Context context2 = getContext();
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.NavigationBarView, i11, i12, R$styleable.NavigationBarView_itemTextAppearanceInactive, R$styleable.NavigationBarView_itemTextAppearanceActive);
        d dVar = new d(context2, getClass(), getMaxItemCount());
        this.f29362a = dVar;
        NavigationBarMenuView navigationBarMenuViewC = c(context2);
        this.f29363b = navigationBarMenuViewC;
        navigationBarPresenter.l(navigationBarMenuViewC);
        navigationBarPresenter.a(1);
        navigationBarMenuViewC.setPresenter(navigationBarPresenter);
        dVar.b(navigationBarPresenter);
        navigationBarPresenter.k(getContext(), dVar);
        if (j0VarJ.s(R$styleable.NavigationBarView_itemIconTint)) {
            navigationBarMenuViewC.setIconTintList(j0VarJ.c(R$styleable.NavigationBarView_itemIconTint));
        } else {
            navigationBarMenuViewC.setIconTintList(navigationBarMenuViewC.createDefaultColorStateList(R.attr.textColorSecondary));
        }
        setItemIconSize(j0VarJ.f(R$styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (j0VarJ.s(R$styleable.NavigationBarView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(j0VarJ.n(R$styleable.NavigationBarView_itemTextAppearanceInactive, 0));
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(j0VarJ.n(R$styleable.NavigationBarView_itemTextAppearanceActive, 0));
        }
        setItemTextAppearanceActiveBoldEnabled(j0VarJ.a(R$styleable.NavigationBarView_itemTextAppearanceActiveBoldEnabled, true));
        if (j0VarJ.s(R$styleable.NavigationBarView_itemTextColor)) {
            setItemTextColor(j0VarJ.c(R$styleable.NavigationBarView_itemTextColor));
        }
        Drawable background = getBackground();
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(background);
        if (background == null || colorStateListG != null) {
            i iVar = new i(n.e(context2, attributeSet, i11, i12).m());
            if (colorStateListG != null) {
                iVar.d0(colorStateListG);
            }
            iVar.S(context2);
            ViewCompat.setBackground(this, iVar);
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_itemPaddingTop)) {
            setItemPaddingTop(j0VarJ.f(R$styleable.NavigationBarView_itemPaddingTop, 0));
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_itemPaddingBottom)) {
            setItemPaddingBottom(j0VarJ.f(R$styleable.NavigationBarView_itemPaddingBottom, 0));
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_activeIndicatorLabelPadding)) {
            setActiveIndicatorLabelPadding(j0VarJ.f(R$styleable.NavigationBarView_activeIndicatorLabelPadding, 0));
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_elevation)) {
            setElevation(j0VarJ.f(R$styleable.NavigationBarView_elevation, 0));
        }
        a1.a.o(getBackground().mutate(), xa.c.b(context2, j0VarJ, R$styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(j0VarJ.l(R$styleable.NavigationBarView_labelVisibilityMode, -1));
        int iN = j0VarJ.n(R$styleable.NavigationBarView_itemBackground, 0);
        if (iN != 0) {
            navigationBarMenuViewC.setItemBackgroundRes(iN);
        } else {
            setItemRippleColor(xa.c.b(context2, j0VarJ, R$styleable.NavigationBarView_itemRippleColor));
        }
        int iN2 = j0VarJ.n(R$styleable.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (iN2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iN2, R$styleable.NavigationBarActiveIndicator);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NavigationBarActiveIndicator_android_width, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NavigationBarActiveIndicator_android_height, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.NavigationBarActiveIndicator_marginHorizontal, 0));
            setItemActiveIndicatorColor(xa.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.NavigationBarActiveIndicator_android_color));
            setItemActiveIndicatorShapeAppearance(n.b(context2, typedArrayObtainStyledAttributes.getResourceId(R$styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).m());
            typedArrayObtainStyledAttributes.recycle();
        }
        if (j0VarJ.s(R$styleable.NavigationBarView_menu)) {
            inflateMenu(j0VarJ.n(R$styleable.NavigationBarView_menu, 0));
        }
        j0VarJ.x();
        addView(navigationBarMenuViewC);
        dVar.W(new a());
    }

    static /* synthetic */ b a(NavigationBarView navigationBarView) {
        navigationBarView.getClass();
        return null;
    }

    static /* synthetic */ c b(NavigationBarView navigationBarView) {
        navigationBarView.getClass();
        return null;
    }

    private MenuInflater getMenuInflater() {
        if (this.f29365d == null) {
            this.f29365d = new g(getContext());
        }
        return this.f29365d;
    }

    protected abstract NavigationBarMenuView c(Context context);

    public int getActiveIndicatorLabelPadding() {
        return this.f29363b.getActiveIndicatorLabelPadding();
    }

    @Nullable
    public BadgeDrawable getBadge(int i11) {
        return this.f29363b.getBadge(i11);
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f29363b.getItemActiveIndicatorColor();
    }

    public int getItemActiveIndicatorHeight() {
        return this.f29363b.getItemActiveIndicatorHeight();
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f29363b.getItemActiveIndicatorMarginHorizontal();
    }

    @Nullable
    public n getItemActiveIndicatorShapeAppearance() {
        return this.f29363b.getItemActiveIndicatorShapeAppearance();
    }

    public int getItemActiveIndicatorWidth() {
        return this.f29363b.getItemActiveIndicatorWidth();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f29363b.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f29363b.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f29363b.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f29363b.getIconTintList();
    }

    public int getItemPaddingBottom() {
        return this.f29363b.getItemPaddingBottom();
    }

    public int getItemPaddingTop() {
        return this.f29363b.getItemPaddingTop();
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f29363b.getItemRippleColor();
    }

    public int getItemTextAppearanceActive() {
        return this.f29363b.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f29363b.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f29363b.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f29363b.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    @NonNull
    public Menu getMenu() {
        return this.f29362a;
    }

    @NonNull
    public m getMenuView() {
        return this.f29363b;
    }

    @NonNull
    public BadgeDrawable getOrCreateBadge(int i11) {
        return this.f29363b.e(i11);
    }

    @NonNull
    public NavigationBarPresenter getPresenter() {
        return this.f29364c;
    }

    public int getSelectedItemId() {
        return this.f29363b.getSelectedItemId();
    }

    public void inflateMenu(int i11) {
        this.f29364c.m(true);
        getMenuInflater().inflate(i11, this.f29362a);
        this.f29364c.m(false);
        this.f29364c.h(true);
    }

    public boolean isItemActiveIndicatorEnabled() {
        return this.f29363b.getItemActiveIndicatorEnabled();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f29362a.T(savedState.f29366a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f29366a = bundle;
        this.f29362a.V(bundle);
        return savedState;
    }

    public void removeBadge(int i11) {
        this.f29363b.h(i11);
    }

    public void setActiveIndicatorLabelPadding(int i11) {
        this.f29363b.setActiveIndicatorLabelPadding(i11);
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        j.d(this, f11);
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f29363b.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f29363b.setItemActiveIndicatorEnabled(z10);
    }

    public void setItemActiveIndicatorHeight(int i11) {
        this.f29363b.setItemActiveIndicatorHeight(i11);
    }

    public void setItemActiveIndicatorMarginHorizontal(int i11) {
        this.f29363b.setItemActiveIndicatorMarginHorizontal(i11);
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable n nVar) {
        this.f29363b.setItemActiveIndicatorShapeAppearance(nVar);
    }

    public void setItemActiveIndicatorWidth(int i11) {
        this.f29363b.setItemActiveIndicatorWidth(i11);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f29363b.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i11) {
        this.f29363b.setItemBackgroundRes(i11);
    }

    public void setItemIconSize(int i11) {
        this.f29363b.setItemIconSize(i11);
    }

    public void setItemIconSizeRes(int i11) {
        setItemIconSize(getResources().getDimensionPixelSize(i11));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29363b.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i11, @Nullable View.OnTouchListener onTouchListener) {
        this.f29363b.setItemOnTouchListener(i11, onTouchListener);
    }

    public void setItemPaddingBottom(int i11) {
        this.f29363b.setItemPaddingBottom(i11);
    }

    public void setItemPaddingTop(int i11) {
        this.f29363b.setItemPaddingTop(i11);
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f29363b.setItemRippleColor(colorStateList);
    }

    public void setItemTextAppearanceActive(int i11) {
        this.f29363b.setItemTextAppearanceActive(i11);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f29363b.setItemTextAppearanceActiveBoldEnabled(z10);
    }

    public void setItemTextAppearanceInactive(int i11) {
        this.f29363b.setItemTextAppearanceInactive(i11);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f29363b.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i11) {
        if (this.f29363b.getLabelVisibilityMode() != i11) {
            this.f29363b.setLabelVisibilityMode(i11);
            this.f29364c.h(false);
        }
    }

    public void setOnItemReselectedListener(@Nullable b bVar) {
    }

    public void setOnItemSelectedListener(@Nullable c cVar) {
    }

    public void setSelectedItemId(int i11) {
        MenuItem menuItemFindItem = this.f29362a.findItem(i11);
        if (menuItemFindItem == null || this.f29362a.P(menuItemFindItem, this.f29364c, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }
}
