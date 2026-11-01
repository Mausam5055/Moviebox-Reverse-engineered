package com.google.android.material.navigation;

import ab.i;
import ab.n;
import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.m;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.s;
import androidx.transition.u;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.z;
import java.util.HashSet;
import wa.j;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements m {
    private static final int[] F = {R.attr.state_checked};
    private static final int[] G = {-16842910};
    private n A;
    private boolean B;
    private ColorStateList C;
    private NavigationBarPresenter D;
    private androidx.appcompat.view.menu.f E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f29329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View.OnClickListener f29330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.core.util.f f29331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray f29332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NavigationBarItemView[] f29334f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29335g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f29336h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ColorStateList f29337i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f29338j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f29339k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ColorStateList f29340l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f29341m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f29342n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f29343o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Drawable f29344p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ColorStateList f29345q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f29346r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final SparseArray f29347s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f29348t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f29349u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f29350v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f29351w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f29352x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f29353y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f29354z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h itemData = ((NavigationBarItemView) view).getItemData();
            if (NavigationBarMenuView.this.E.P(itemData, NavigationBarMenuView.this.D, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public NavigationBarMenuView(@NonNull Context context) {
        super(context);
        this.f29331c = new androidx.core.util.h(5);
        this.f29332d = new SparseArray(5);
        this.f29335g = 0;
        this.f29336h = 0;
        this.f29347s = new SparseArray(5);
        this.f29348t = -1;
        this.f29349u = -1;
        this.f29350v = -1;
        this.B = false;
        this.f29340l = createDefaultColorStateList(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.f29329a = null;
        } else {
            androidx.transition.a aVar = new androidx.transition.a();
            this.f29329a = aVar;
            aVar.p0(0);
            aVar.X(j.f(getContext(), R$attr.motionDurationMedium4, getResources().getInteger(R$integer.material_motion_duration_long_1)));
            aVar.Z(j.g(getContext(), R$attr.motionEasingStandard, oa.a.f70919b));
            aVar.h0(new z());
        }
        this.f29330b = new a();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private Drawable c() {
        if (this.A == null || this.C == null) {
            return null;
        }
        i iVar = new i(this.A);
        iVar.d0(this.C);
        return iVar;
    }

    private boolean g(int i11) {
        return i11 != -1;
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView navigationBarItemView = (NavigationBarItemView) this.f29331c.acquire();
        return navigationBarItemView == null ? d(getContext()) : navigationBarItemView;
    }

    private void i() {
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < this.E.size(); i11++) {
            hashSet.add(Integer.valueOf(this.E.getItem(i11).getItemId()));
        }
        for (int i12 = 0; i12 < this.f29347s.size(); i12++) {
            int iKeyAt = this.f29347s.keyAt(i12);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                this.f29347s.delete(iKeyAt);
            }
        }
    }

    private void l(int i11) {
        if (g(i11)) {
            return;
        }
        throw new IllegalArgumentException(i11 + " is not a valid view id");
    }

    private void setBadgeIfNeeded(@NonNull NavigationBarItemView navigationBarItemView) {
        BadgeDrawable badgeDrawable;
        int id2 = navigationBarItemView.getId();
        if (g(id2) && (badgeDrawable = (BadgeDrawable) this.f29347s.get(id2)) != null) {
            navigationBarItemView.setBadge(badgeDrawable);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void buildMenuView() {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.f29331c.release(navigationBarItemView);
                    navigationBarItemView.f();
                }
            }
        }
        if (this.E.size() == 0) {
            this.f29335g = 0;
            this.f29336h = 0;
            this.f29334f = null;
            return;
        }
        i();
        this.f29334f = new NavigationBarItemView[this.E.size()];
        boolean zF = f(this.f29333e, this.E.G().size());
        for (int i11 = 0; i11 < this.E.size(); i11++) {
            this.D.m(true);
            this.E.getItem(i11).setCheckable(true);
            this.D.m(false);
            NavigationBarItemView newItem = getNewItem();
            this.f29334f[i11] = newItem;
            newItem.setIconTintList(this.f29337i);
            newItem.setIconSize(this.f29338j);
            newItem.setTextColor(this.f29340l);
            newItem.setTextAppearanceInactive(this.f29341m);
            newItem.setTextAppearanceActive(this.f29342n);
            newItem.setTextAppearanceActiveBoldEnabled(this.f29343o);
            newItem.setTextColor(this.f29339k);
            int i12 = this.f29348t;
            if (i12 != -1) {
                newItem.setItemPaddingTop(i12);
            }
            int i13 = this.f29349u;
            if (i13 != -1) {
                newItem.setItemPaddingBottom(i13);
            }
            int i14 = this.f29350v;
            if (i14 != -1) {
                newItem.setActiveIndicatorLabelPadding(i14);
            }
            newItem.setActiveIndicatorWidth(this.f29352x);
            newItem.setActiveIndicatorHeight(this.f29353y);
            newItem.setActiveIndicatorMarginHorizontal(this.f29354z);
            newItem.setActiveIndicatorDrawable(c());
            newItem.setActiveIndicatorResizeable(this.B);
            newItem.setActiveIndicatorEnabled(this.f29351w);
            Drawable drawable = this.f29344p;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f29346r);
            }
            newItem.setItemRippleColor(this.f29345q);
            newItem.setShifting(zF);
            newItem.setLabelVisibilityMode(this.f29333e);
            h hVar = (h) this.E.getItem(i11);
            newItem.initialize(hVar, 0);
            newItem.setItemPosition(i11);
            int itemId = hVar.getItemId();
            newItem.setOnTouchListener((View.OnTouchListener) this.f29332d.get(itemId));
            newItem.setOnClickListener(this.f29330b);
            int i15 = this.f29335g;
            if (i15 != 0 && itemId == i15) {
                this.f29336h = i11;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.E.size() - 1, this.f29336h);
        this.f29336h = iMin;
        this.E.getItem(iMin).setChecked(true);
    }

    @Nullable
    public ColorStateList createDefaultColorStateList(int i11) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i11, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = g.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i12 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = G;
        return new ColorStateList(new int[][]{iArr, F, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i12, defaultColor});
    }

    protected abstract NavigationBarItemView d(Context context);

    BadgeDrawable e(int i11) {
        l(i11);
        BadgeDrawable badgeDrawableD = (BadgeDrawable) this.f29347s.get(i11);
        if (badgeDrawableD == null) {
            badgeDrawableD = BadgeDrawable.d(getContext());
            this.f29347s.put(i11, badgeDrawableD);
        }
        NavigationBarItemView navigationBarItemViewFindItemView = findItemView(i11);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.setBadge(badgeDrawableD);
        }
        return badgeDrawableD;
    }

    protected boolean f(int i11, int i12) {
        if (i11 == -1) {
            if (i12 <= 3) {
                return false;
            }
        } else if (i11 != 0) {
            return false;
        }
        return true;
    }

    @Nullable
    public NavigationBarItemView findItemView(int i11) {
        l(i11);
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr == null) {
            return null;
        }
        for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
            if (navigationBarItemView.getId() == i11) {
                return navigationBarItemView;
            }
        }
        return null;
    }

    public int getActiveIndicatorLabelPadding() {
        return this.f29350v;
    }

    @Nullable
    public BadgeDrawable getBadge(int i11) {
        return (BadgeDrawable) this.f29347s.get(i11);
    }

    SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.f29347s;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f29337i;
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.C;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f29351w;
    }

    public int getItemActiveIndicatorHeight() {
        return this.f29353y;
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f29354z;
    }

    @Nullable
    public n getItemActiveIndicatorShapeAppearance() {
        return this.A;
    }

    public int getItemActiveIndicatorWidth() {
        return this.f29352x;
    }

    @Nullable
    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        return (navigationBarItemViewArr == null || navigationBarItemViewArr.length <= 0) ? this.f29344p : navigationBarItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f29346r;
    }

    public int getItemIconSize() {
        return this.f29338j;
    }

    public int getItemPaddingBottom() {
        return this.f29349u;
    }

    public int getItemPaddingTop() {
        return this.f29348t;
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f29345q;
    }

    public int getItemTextAppearanceActive() {
        return this.f29342n;
    }

    public int getItemTextAppearanceInactive() {
        return this.f29341m;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f29339k;
    }

    public int getLabelVisibilityMode() {
        return this.f29333e;
    }

    @Nullable
    protected androidx.appcompat.view.menu.f getMenu() {
        return this.E;
    }

    public int getSelectedItemId() {
        return this.f29335g;
    }

    protected int getSelectedItemPosition() {
        return this.f29336h;
    }

    public int getWindowAnimations() {
        return 0;
    }

    void h(int i11) {
        l(i11);
        NavigationBarItemView navigationBarItemViewFindItemView = findItemView(i11);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.n();
        }
        this.f29347s.put(i11, null);
    }

    @Override // androidx.appcompat.view.menu.m
    public void initialize(@NonNull androidx.appcompat.view.menu.f fVar) {
        this.E = fVar;
    }

    void j(SparseArray sparseArray) {
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            int iKeyAt = sparseArray.keyAt(i11);
            if (this.f29347s.indexOfKey(iKeyAt) < 0) {
                this.f29347s.append(iKeyAt, (BadgeDrawable) sparseArray.get(iKeyAt));
            }
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                BadgeDrawable badgeDrawable = (BadgeDrawable) this.f29347s.get(navigationBarItemView.getId());
                if (badgeDrawable != null) {
                    navigationBarItemView.setBadge(badgeDrawable);
                }
            }
        }
    }

    void k(int i11) {
        int size = this.E.size();
        for (int i12 = 0; i12 < size; i12++) {
            MenuItem item = this.E.getItem(i12);
            if (i11 == item.getItemId()) {
                this.f29335g = i11;
                this.f29336h = i12;
                item.setChecked(true);
                return;
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.E.G().size(), false, 1));
    }

    public void setActiveIndicatorLabelPadding(int i11) {
        this.f29350v = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorLabelPadding(i11);
            }
        }
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29337i = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.C = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(c());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f29351w = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorEnabled(z10);
            }
        }
    }

    public void setItemActiveIndicatorHeight(int i11) {
        this.f29353y = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorHeight(i11);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(int i11) {
        this.f29354z = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorMarginHorizontal(i11);
            }
        }
    }

    protected void setItemActiveIndicatorResizeable(boolean z10) {
        this.B = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorResizeable(z10);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable n nVar) {
        this.A = nVar;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(c());
            }
        }
    }

    public void setItemActiveIndicatorWidth(int i11) {
        this.f29352x = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorWidth(i11);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f29344p = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i11) {
        this.f29346r = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i11);
            }
        }
    }

    public void setItemIconSize(int i11) {
        this.f29338j = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i11);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i11, @Nullable View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f29332d.remove(i11);
        } else {
            this.f29332d.put(i11, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().getItemId() == i11) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemPaddingBottom(int i11) {
        this.f29349u = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingBottom(i11);
            }
        }
    }

    public void setItemPaddingTop(int i11) {
        this.f29348t = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingTop(i11);
            }
        }
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f29345q = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemRippleColor(colorStateList);
            }
        }
    }

    public void setItemTextAppearanceActive(int i11) {
        this.f29342n = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i11);
                ColorStateList colorStateList = this.f29339k;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f29343o = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActiveBoldEnabled(z10);
            }
        }
    }

    public void setItemTextAppearanceInactive(int i11) {
        this.f29341m = i11;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i11);
                ColorStateList colorStateList = this.f29339k;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f29339k = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f29334f;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i11) {
        this.f29333e = i11;
    }

    public void setPresenter(@NonNull NavigationBarPresenter navigationBarPresenter) {
        this.D = navigationBarPresenter;
    }

    public void updateMenuView() {
        u uVar;
        androidx.appcompat.view.menu.f fVar = this.E;
        if (fVar == null || this.f29334f == null) {
            return;
        }
        int size = fVar.size();
        if (size != this.f29334f.length) {
            buildMenuView();
            return;
        }
        int i11 = this.f29335g;
        for (int i12 = 0; i12 < size; i12++) {
            MenuItem item = this.E.getItem(i12);
            if (item.isChecked()) {
                this.f29335g = item.getItemId();
                this.f29336h = i12;
            }
        }
        if (i11 != this.f29335g && (uVar = this.f29329a) != null) {
            s.a(this, uVar);
        }
        boolean zF = f(this.f29333e, this.E.G().size());
        for (int i13 = 0; i13 < size; i13++) {
            this.D.m(true);
            this.f29334f[i13].setLabelVisibilityMode(this.f29333e);
            this.f29334f[i13].setShifting(zF);
            this.f29334f[i13].initialize((h) this.E.getItem(i13), 0);
            this.D.m(false);
        }
    }
}
