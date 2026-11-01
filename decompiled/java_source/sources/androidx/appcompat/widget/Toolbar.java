package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.core.view.GravityCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.p009lifecycle.Lifecycle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup implements MenuHost {
    private ColorStateList A;
    private boolean B;
    private boolean C;
    private final ArrayList D;
    private final ArrayList E;
    private final int[] F;
    final MenuHostHelper G;
    private ArrayList H;
    g I;
    private final ActionMenuView.e J;
    private n0 K;
    private ActionMenuPresenter L;
    private e M;
    private androidx.appcompat.view.menu.l.a N;
    androidx.appcompat.view.menu.f.a O;
    private boolean P;
    private OnBackInvokedCallback Q;
    private OnBackInvokedDispatcher R;
    private boolean S;
    private final Runnable T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ActionMenuView f1913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f1914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f1915c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageButton f1916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f1917e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f1918f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CharSequence f1919g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ImageButton f1920h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    View f1921i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f1922j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1923k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f1924l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f1925m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f1926n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f1927o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f1928p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f1929q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1930r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1931s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private d0 f1932t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1933u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f1934v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f1935w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CharSequence f1936x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CharSequence f1937y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ColorStateList f1938z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int expandedMenuItemId;
        boolean isOverflowOpen;

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

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }
    }

    class a implements ActionMenuView.e {
        a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (Toolbar.this.G.onMenuItemSelected(menuItem)) {
                return true;
            }
            g gVar = Toolbar.this.I;
            if (gVar != null) {
                return gVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    class b implements androidx.appcompat.view.menu.f.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            androidx.appcompat.view.menu.f.a aVar = Toolbar.this.O;
            return aVar != null && aVar.a(fVar, menuItem);
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void b(androidx.appcompat.view.menu.f fVar) {
            if (!Toolbar.this.f1913a.isOverflowMenuShowing()) {
                Toolbar.this.G.onPrepareMenu(fVar);
            }
            androidx.appcompat.view.menu.f.a aVar = Toolbar.this.O;
            if (aVar != null) {
                aVar.b(fVar);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.collapseActionView();
        }
    }

    static class d {
        @Nullable
        static OnBackInvokedDispatcher a(@NonNull View view) {
            return view.findOnBackInvokedDispatcher();
        }

        @NonNull
        static OnBackInvokedCallback b(@NonNull final Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new OnBackInvokedCallback() { // from class: androidx.appcompat.widget.m0
                public final void onBackInvoked() {
                    runnable.run();
                }
            };
        }

        static void c(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
        }

        static void d(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    private class e implements androidx.appcompat.view.menu.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.appcompat.view.menu.f f1942a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.appcompat.view.menu.h f1943b;

        e() {
        }

        @Override // androidx.appcompat.view.menu.l
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.l
        public boolean c(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.h hVar) {
            Toolbar.this.d();
            ViewParent parent = Toolbar.this.f1920h.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1920h);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f1920h);
            }
            Toolbar.this.f1921i = hVar.getActionView();
            this.f1943b = hVar;
            ViewParent parent2 = Toolbar.this.f1921i.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f1921i);
                }
                f fVarGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                fVarGenerateDefaultLayoutParams.f1104a = (toolbar4.f1926n & 112) | GravityCompat.START;
                fVarGenerateDefaultLayoutParams.f1945b = 2;
                toolbar4.f1921i.setLayoutParams(fVarGenerateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f1921i);
            }
            Toolbar.this.y();
            Toolbar.this.requestLayout();
            hVar.r(true);
            KeyEvent.Callback callback = Toolbar.this.f1921i;
            if (callback instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) callback).onActionViewExpanded();
            }
            Toolbar.this.B();
            return true;
        }

        @Override // androidx.appcompat.view.menu.l
        public void e(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.l
        public boolean f(androidx.appcompat.view.menu.q qVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.l
        public Parcelable g() {
            return null;
        }

        @Override // androidx.appcompat.view.menu.l
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.l
        public void h(boolean z10) {
            if (this.f1943b != null) {
                androidx.appcompat.view.menu.f fVar = this.f1942a;
                if (fVar != null) {
                    int size = fVar.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        if (this.f1942a.getItem(i11) == this.f1943b) {
                            return;
                        }
                    }
                }
                j(this.f1942a, this.f1943b);
            }
        }

        @Override // androidx.appcompat.view.menu.l
        public boolean i() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.l
        public boolean j(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.h hVar) {
            KeyEvent.Callback callback = Toolbar.this.f1921i;
            if (callback instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) callback).onActionViewCollapsed();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f1921i);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f1920h);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f1921i = null;
            toolbar3.a();
            this.f1943b = null;
            Toolbar.this.requestLayout();
            hVar.r(false);
            Toolbar.this.B();
            return true;
        }

        @Override // androidx.appcompat.view.menu.l
        public void k(Context context, androidx.appcompat.view.menu.f fVar) {
            androidx.appcompat.view.menu.h hVar;
            androidx.appcompat.view.menu.f fVar2 = this.f1942a;
            if (fVar2 != null && (hVar = this.f1943b) != null) {
                fVar2.f(hVar);
            }
            this.f1942a = fVar;
        }
    }

    public static class f extends androidx.appcompat.app.a.C0021a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1945b;

        public f(int i11, int i12) {
            super(i11, i12);
            this.f1945b = 0;
            this.f1104a = 8388627;
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1945b = 0;
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1945b = 0;
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1945b = 0;
            a(marginLayoutParams);
        }

        public f(androidx.appcompat.app.a.C0021a c0021a) {
            super(c0021a);
            this.f1945b = 0;
        }

        public f(f fVar) {
            super((androidx.appcompat.app.a.C0021a) fVar);
            this.f1945b = 0;
            this.f1945b = fVar.f1945b;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public interface g {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(@NonNull Context context) {
        this(context, null);
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.toolbarStyle);
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f1935w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new MenuHostHelper(new Runnable() { // from class: androidx.appcompat.widget.l0
            @Override // java.lang.Runnable
            public final void run() {
                this.f2053a.invalidateMenu();
            }
        });
        this.H = new ArrayList();
        this.J = new a();
        this.T = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.showOverflowMenu();
            }
        };
        j0 j0VarV = j0.v(getContext(), attributeSet, R$styleable.Toolbar, i11, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.Toolbar, attributeSet, j0VarV.r(), i11, 0);
        this.f1924l = j0VarV.n(R$styleable.Toolbar_titleTextAppearance, 0);
        this.f1925m = j0VarV.n(R$styleable.Toolbar_subtitleTextAppearance, 0);
        this.f1935w = j0VarV.l(R$styleable.Toolbar_android_gravity, this.f1935w);
        this.f1926n = j0VarV.l(R$styleable.Toolbar_buttonGravity, 48);
        int iE = j0VarV.e(R$styleable.Toolbar_titleMargin, 0);
        iE = j0VarV.s(R$styleable.Toolbar_titleMargins) ? j0VarV.e(R$styleable.Toolbar_titleMargins, iE) : iE;
        this.f1931s = iE;
        this.f1930r = iE;
        this.f1929q = iE;
        this.f1928p = iE;
        int iE2 = j0VarV.e(R$styleable.Toolbar_titleMarginStart, -1);
        if (iE2 >= 0) {
            this.f1928p = iE2;
        }
        int iE3 = j0VarV.e(R$styleable.Toolbar_titleMarginEnd, -1);
        if (iE3 >= 0) {
            this.f1929q = iE3;
        }
        int iE4 = j0VarV.e(R$styleable.Toolbar_titleMarginTop, -1);
        if (iE4 >= 0) {
            this.f1930r = iE4;
        }
        int iE5 = j0VarV.e(R$styleable.Toolbar_titleMarginBottom, -1);
        if (iE5 >= 0) {
            this.f1931s = iE5;
        }
        this.f1927o = j0VarV.f(R$styleable.Toolbar_maxButtonHeight, -1);
        int iE6 = j0VarV.e(R$styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iE7 = j0VarV.e(R$styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iF = j0VarV.f(R$styleable.Toolbar_contentInsetLeft, 0);
        int iF2 = j0VarV.f(R$styleable.Toolbar_contentInsetRight, 0);
        e();
        this.f1932t.e(iF, iF2);
        if (iE6 != Integer.MIN_VALUE || iE7 != Integer.MIN_VALUE) {
            this.f1932t.g(iE6, iE7);
        }
        this.f1933u = j0VarV.e(R$styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f1934v = j0VarV.e(R$styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f1918f = j0VarV.g(R$styleable.Toolbar_collapseIcon);
        this.f1919g = j0VarV.p(R$styleable.Toolbar_collapseContentDescription);
        CharSequence charSequenceP = j0VarV.p(R$styleable.Toolbar_title);
        if (!TextUtils.isEmpty(charSequenceP)) {
            setTitle(charSequenceP);
        }
        CharSequence charSequenceP2 = j0VarV.p(R$styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(charSequenceP2)) {
            setSubtitle(charSequenceP2);
        }
        this.f1922j = getContext();
        setPopupTheme(j0VarV.n(R$styleable.Toolbar_popupTheme, 0));
        Drawable drawableG = j0VarV.g(R$styleable.Toolbar_navigationIcon);
        if (drawableG != null) {
            setNavigationIcon(drawableG);
        }
        CharSequence charSequenceP3 = j0VarV.p(R$styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(charSequenceP3)) {
            setNavigationContentDescription(charSequenceP3);
        }
        Drawable drawableG2 = j0VarV.g(R$styleable.Toolbar_logo);
        if (drawableG2 != null) {
            setLogo(drawableG2);
        }
        CharSequence charSequenceP4 = j0VarV.p(R$styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(charSequenceP4)) {
            setLogoDescription(charSequenceP4);
        }
        if (j0VarV.s(R$styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(j0VarV.c(R$styleable.Toolbar_titleTextColor));
        }
        if (j0VarV.s(R$styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(j0VarV.c(R$styleable.Toolbar_subtitleTextColor));
        }
        if (j0VarV.s(R$styleable.Toolbar_menu)) {
            inflateMenu(j0VarV.n(R$styleable.Toolbar_menu, 0));
        }
        j0VarV.x();
    }

    private boolean A(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private void b(List list, int i11) {
        boolean z10 = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i11, getLayoutDirection());
        list.clear();
        if (!z10) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f1945b == 0 && A(childAt) && l(fVar.f1104a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i13 = childCount - 1; i13 >= 0; i13--) {
            View childAt2 = getChildAt(i13);
            f fVar2 = (f) childAt2.getLayoutParams();
            if (fVar2.f1945b == 0 && A(childAt2) && l(fVar2.f1104a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    private void c(View view, boolean z10) {
        f fVarGenerateLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            fVarGenerateLayoutParams = generateDefaultLayoutParams();
        } else {
            fVarGenerateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (f) layoutParams;
        }
        fVarGenerateLayoutParams.f1945b = 1;
        if (!z10 || this.f1921i == null) {
            addView(view, fVarGenerateLayoutParams);
        } else {
            view.setLayoutParams(fVarGenerateLayoutParams);
            this.E.add(view);
        }
    }

    private void e() {
        if (this.f1932t == null) {
            this.f1932t = new d0();
        }
    }

    private void f() {
        if (this.f1917e == null) {
            this.f1917e = new AppCompatImageView(getContext());
        }
    }

    private void g() {
        h();
        if (this.f1913a.peekMenu() == null) {
            androidx.appcompat.view.menu.f fVar = (androidx.appcompat.view.menu.f) this.f1913a.getMenu();
            if (this.M == null) {
                this.M = new e();
            }
            this.f1913a.setExpandedActionViewsExclusive(true);
            fVar.c(this.M, this.f1922j);
            B();
        }
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i11 = 0; i11 < menu.size(); i11++) {
            arrayList.add(menu.getItem(i11));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new androidx.appcompat.view.g(getContext());
    }

    private void h() {
        if (this.f1913a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f1913a = actionMenuView;
            actionMenuView.setPopupTheme(this.f1923k);
            this.f1913a.setOnMenuItemClickListener(this.J);
            this.f1913a.setMenuCallbacks(this.N, new b());
            f fVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            fVarGenerateDefaultLayoutParams.f1104a = (this.f1926n & 112) | GravityCompat.END;
            this.f1913a.setLayoutParams(fVarGenerateDefaultLayoutParams);
            c(this.f1913a, false);
        }
    }

    private void i() {
        if (this.f1916d == null) {
            this.f1916d = new AppCompatImageButton(getContext(), null, R$attr.toolbarNavigationButtonStyle);
            f fVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            fVarGenerateDefaultLayoutParams.f1104a = (this.f1926n & 112) | GravityCompat.START;
            this.f1916d.setLayoutParams(fVarGenerateDefaultLayoutParams);
        }
    }

    private int l(int i11) {
        int layoutDirection = getLayoutDirection();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i11, layoutDirection) & 7;
        if (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) {
            return absoluteGravity;
        }
        return layoutDirection == 1 ? 5 : 3;
    }

    private int m(View view, int i11) {
        f fVar = (f) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i12 = i11 > 0 ? (measuredHeight - i11) / 2 : 0;
        int iN = n(fVar.f1104a);
        if (iN == 48) {
            return getPaddingTop() - i12;
        }
        if (iN == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) - i12;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i13 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
        if (iMax < i13) {
            iMax = i13;
        } else {
            int i14 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i15 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
            if (i14 < i15) {
                iMax = Math.max(0, iMax - (i15 - i14));
            }
        }
        return paddingTop + iMax;
    }

    private int n(int i11) {
        int i12 = i11 & 112;
        return (i12 == 16 || i12 == 48 || i12 == 80) ? i12 : this.f1935w & 112;
    }

    private int o(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    private int p(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int q(List list, int[] iArr) {
        int i11 = iArr[0];
        int i12 = iArr[1];
        int size = list.size();
        int i13 = 0;
        int measuredWidth = 0;
        while (i13 < size) {
            View view = (View) list.get(i13);
            f fVar = (f) view.getLayoutParams();
            int i14 = ((ViewGroup.MarginLayoutParams) fVar).leftMargin - i11;
            int i15 = ((ViewGroup.MarginLayoutParams) fVar).rightMargin - i12;
            int iMax = Math.max(0, i14);
            int iMax2 = Math.max(0, i15);
            int iMax3 = Math.max(0, -i14);
            int iMax4 = Math.max(0, -i15);
            measuredWidth += iMax + view.getMeasuredWidth() + iMax2;
            i13++;
            i12 = iMax4;
            i11 = iMax3;
        }
        return measuredWidth;
    }

    private boolean r(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    private int s(View view, int i11, int[] iArr, int i12) {
        f fVar = (f) view.getLayoutParams();
        int i13 = ((ViewGroup.MarginLayoutParams) fVar).leftMargin - iArr[0];
        int iMax = i11 + Math.max(0, i13);
        iArr[0] = Math.max(0, -i13);
        int iM = m(view, i12);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iM, iMax + measuredWidth, view.getMeasuredHeight() + iM);
        return iMax + measuredWidth + ((ViewGroup.MarginLayoutParams) fVar).rightMargin;
    }

    private int t(View view, int i11, int[] iArr, int i12) {
        f fVar = (f) view.getLayoutParams();
        int i13 = ((ViewGroup.MarginLayoutParams) fVar).rightMargin - iArr[1];
        int iMax = i11 - Math.max(0, i13);
        iArr[1] = Math.max(0, -i13);
        int iM = m(view, i12);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iM, iMax, view.getMeasuredHeight() + iM);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) fVar).leftMargin);
    }

    private int u(View view, int i11, int i12, int i13, int i14, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i15 = marginLayoutParams.leftMargin - iArr[0];
        int i16 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i15) + Math.max(0, i16);
        iArr[0] = Math.max(0, -i15);
        iArr[1] = Math.max(0, -i16);
        view.measure(ViewGroup.getChildMeasureSpec(i11, getPaddingLeft() + getPaddingRight() + iMax + i12, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i13, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i14, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    private void v(View view, int i11, int i12, int i13, int i14, int i15) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i12, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i13, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i14, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i15 >= 0) {
            if (mode != 0) {
                i15 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i15);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i15, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void w() {
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.G.onCreateMenu(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.H = currentMenuItems2;
    }

    private void x() {
        removeCallbacks(this.T);
        post(this.T);
    }

    private boolean z() {
        if (!this.P) {
            return false;
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (A(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    void B() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = d.a(this);
            boolean z10 = hasExpandedActionView() && onBackInvokedDispatcherA != null && isAttachedToWindow() && this.S;
            if (z10 && this.R == null) {
                if (this.Q == null) {
                    this.Q = d.b(new Runnable() { // from class: androidx.appcompat.widget.k0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f2049a.collapseActionView();
                        }
                    });
                }
                d.c(onBackInvokedDispatcherA, this.Q);
                this.R = onBackInvokedDispatcherA;
                return;
            }
            if (z10 || (onBackInvokedDispatcher = this.R) == null) {
                return;
            }
            d.d(onBackInvokedDispatcher, this.Q);
            this.R = null;
        }
    }

    void a() {
        for (int size = this.E.size() - 1; size >= 0; size--) {
            addView((View) this.E.get(size));
        }
        this.E.clear();
    }

    @Override // androidx.core.view.MenuHost
    public void addMenuProvider(@NonNull MenuProvider menuProvider) {
        this.G.addMenuProvider(menuProvider);
    }

    @Override // androidx.core.view.MenuHost
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull androidx.p009lifecycle.u uVar) {
        this.G.addMenuProvider(menuProvider, uVar);
    }

    @Override // androidx.core.view.MenuHost
    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull androidx.p009lifecycle.u uVar, @NonNull Lifecycle.State state) {
        this.G.addMenuProvider(menuProvider, uVar, state);
    }

    public boolean canShowOverflowMenu() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f1913a) != null && actionMenuView.isOverflowReserved();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof f);
    }

    public void collapseActionView() {
        e eVar = this.M;
        androidx.appcompat.view.menu.h hVar = eVar == null ? null : eVar.f1943b;
        if (hVar != null) {
            hVar.collapseActionView();
        }
    }

    void d() {
        if (this.f1920h == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R$attr.toolbarNavigationButtonStyle);
            this.f1920h = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f1918f);
            this.f1920h.setContentDescription(this.f1919g);
            f fVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            fVarGenerateDefaultLayoutParams.f1104a = (this.f1926n & 112) | GravityCompat.START;
            fVarGenerateDefaultLayoutParams.f1945b = 2;
            this.f1920h.setLayoutParams(fVarGenerateDefaultLayoutParams);
            this.f1920h.setOnClickListener(new c());
        }
    }

    public void dismissPopupMenus() {
        ActionMenuView actionMenuView = this.f1913a;
        if (actionMenuView != null) {
            actionMenuView.dismissPopupMenus();
        }
    }

    @Override // android.view.ViewGroup
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    @Nullable
    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f1920h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f1920h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        d0 d0Var = this.f1932t;
        if (d0Var != null) {
            return d0Var.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i11 = this.f1934v;
        return i11 != Integer.MIN_VALUE ? i11 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        d0 d0Var = this.f1932t;
        if (d0Var != null) {
            return d0Var.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        d0 d0Var = this.f1932t;
        if (d0Var != null) {
            return d0Var.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        d0 d0Var = this.f1932t;
        if (d0Var != null) {
            return d0Var.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i11 = this.f1933u;
        return i11 != Integer.MIN_VALUE ? i11 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.f fVarPeekMenu;
        ActionMenuView actionMenuView = this.f1913a;
        return (actionMenuView == null || (fVarPeekMenu = actionMenuView.peekMenu()) == null || !fVarPeekMenu.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f1934v, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f1933u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f1917e;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f1917e;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        g();
        return this.f1913a.getMenu();
    }

    @Nullable
    View getNavButtonView() {
        return this.f1916d;
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f1916d;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f1916d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.L;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        g();
        return this.f1913a.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f1922j;
    }

    public int getPopupTheme() {
        return this.f1923k;
    }

    public CharSequence getSubtitle() {
        return this.f1937y;
    }

    @Nullable
    final TextView getSubtitleTextView() {
        return this.f1915c;
    }

    public CharSequence getTitle() {
        return this.f1936x;
    }

    public int getTitleMarginBottom() {
        return this.f1931s;
    }

    public int getTitleMarginEnd() {
        return this.f1929q;
    }

    public int getTitleMarginStart() {
        return this.f1928p;
    }

    public int getTitleMarginTop() {
        return this.f1930r;
    }

    @Nullable
    final TextView getTitleTextView() {
        return this.f1914b;
    }

    public t getWrapper() {
        if (this.K == null) {
            this.K = new n0(this, true);
        }
        return this.K;
    }

    public boolean hasExpandedActionView() {
        e eVar = this.M;
        return (eVar == null || eVar.f1943b == null) ? false : true;
    }

    public boolean hideOverflowMenu() {
        ActionMenuView actionMenuView = this.f1913a;
        return actionMenuView != null && actionMenuView.hideOverflowMenu();
    }

    public void inflateMenu(int i11) {
        getMenuInflater().inflate(i11, getMenu());
    }

    @Override // androidx.core.view.MenuHost
    public void invalidateMenu() {
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        w();
    }

    public boolean isBackInvokedCallbackEnabled() {
        return this.S;
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuView actionMenuView = this.f1913a;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuView actionMenuView = this.f1913a;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowing();
    }

    public boolean isTitleTruncated() {
        Layout layout;
        TextView textView = this.f1914b;
        if (textView == null || (layout = textView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i11 = 0; i11 < lineCount; i11++) {
            if (layout.getEllipsisCount(i11) > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public f generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        if (layoutParams instanceof androidx.appcompat.app.a.C0021a) {
            return new f((androidx.appcompat.app.a.C0021a) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        B();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.T);
        B();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0268  */
    /* JADX WARN: Code duplicated, block: B:102:0x028a  */
    /* JADX WARN: Code duplicated, block: B:104:0x028d  */
    /* JADX WARN: Code duplicated, block: B:107:0x02a1 A[LOOP:0: B:106:0x029f->B:107:0x02a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:110:0x02c3 A[LOOP:1: B:109:0x02c1->B:110:0x02c3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:114:0x02ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:116:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:119:0x02fc A[LOOP:2: B:118:0x02fa->B:119:0x02fc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0062  */
    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    /* JADX WARN: Code duplicated, block: B:24:0x0077 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0079  */
    /* JADX WARN: Code duplicated, block: B:26:0x0080  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:34:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:42:0x0104  */
    /* JADX WARN: Code duplicated, block: B:43:0x011c  */
    /* JADX WARN: Code duplicated, block: B:49:0x012a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x012c  */
    /* JADX WARN: Code duplicated, block: B:51:0x012f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0133  */
    /* JADX WARN: Code duplicated, block: B:54:0x0136  */
    /* JADX WARN: Code duplicated, block: B:57:0x0146  */
    /* JADX WARN: Code duplicated, block: B:59:0x014e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x0167  */
    /* JADX WARN: Code duplicated, block: B:68:0x016b  */
    /* JADX WARN: Code duplicated, block: B:70:0x017d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0180  */
    /* JADX WARN: Code duplicated, block: B:73:0x018b  */
    /* JADX WARN: Code duplicated, block: B:75:0x0197  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:81:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:84:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:88:0x021b  */
    /* JADX WARN: Code duplicated, block: B:90:0x021e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0227 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x0229  */
    /* JADX WARN: Code duplicated, block: B:95:0x022e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0242  */
    /* JADX WARN: Code duplicated, block: B:99:0x0265  */
    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int iS;
        int iT;
        int iMax;
        int iMin;
        boolean zA;
        boolean zA2;
        int measuredHeight;
        TextView textView;
        TextView textView2;
        f fVar;
        f fVar2;
        boolean z11;
        int i15;
        int i16;
        int paddingTop;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int iMax2;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int size;
        int iS2;
        int i29;
        int i30;
        int size2;
        int i31;
        int i32;
        int i33;
        int size3;
        boolean z12 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i34 = width - paddingRight;
        int[] iArr = this.F;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        int iMin2 = minimumHeight >= 0 ? Math.min(minimumHeight, i14 - i12) : 0;
        if (A(this.f1916d)) {
            if (z12) {
                iT = t(this.f1916d, i34, iArr, iMin2);
                iS = paddingLeft;
            } else {
                iS = s(this.f1916d, paddingLeft, iArr, iMin2);
            }
            if (A(this.f1920h)) {
                if (z12) {
                    iT = t(this.f1920h, iT, iArr, iMin2);
                } else {
                    iS = s(this.f1920h, iS, iArr, iMin2);
                }
            }
            if (A(this.f1913a)) {
                if (z12) {
                    iS = s(this.f1913a, iS, iArr, iMin2);
                } else {
                    iT = t(this.f1913a, iT, iArr, iMin2);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iS);
            iArr[1] = Math.max(0, currentContentInsetRight - (i34 - iT));
            iMax = Math.max(iS, currentContentInsetLeft);
            iMin = Math.min(iT, i34 - currentContentInsetRight);
            if (A(this.f1921i)) {
                if (z12) {
                    iMin = t(this.f1921i, iMin, iArr, iMin2);
                } else {
                    iMax = s(this.f1921i, iMax, iArr, iMin2);
                }
            }
            if (A(this.f1917e)) {
                if (z12) {
                    iMin = t(this.f1917e, iMin, iArr, iMin2);
                } else {
                    iMax = s(this.f1917e, iMax, iArr, iMin2);
                }
            }
            zA = A(this.f1914b);
            zA2 = A(this.f1915c);
            if (zA) {
                f fVar3 = (f) this.f1914b.getLayoutParams();
                measuredHeight = ((ViewGroup.MarginLayoutParams) fVar3).topMargin + this.f1914b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar3).bottomMargin;
            } else {
                measuredHeight = 0;
            }
            if (zA2) {
                f fVar4 = (f) this.f1915c.getLayoutParams();
                measuredHeight += ((ViewGroup.MarginLayoutParams) fVar4).topMargin + this.f1915c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar4).bottomMargin;
            }
            if (!zA || zA2) {
                if (zA) {
                    textView = this.f1914b;
                } else {
                    textView = this.f1915c;
                }
                if (zA2) {
                    textView2 = this.f1915c;
                } else {
                    textView2 = this.f1914b;
                }
                fVar = (f) textView.getLayoutParams();
                fVar2 = (f) textView2.getLayoutParams();
                z11 = (!zA && this.f1914b.getMeasuredWidth() > 0) || (zA2 && this.f1915c.getMeasuredWidth() > 0);
                i15 = this.f1935w & 112;
                i16 = paddingLeft;
                if (i15 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin + this.f1930r;
                } else if (i15 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                    i24 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                    i25 = this.f1930r;
                    if (iMax2 < i24 + i25) {
                        iMax2 = i24 + i25;
                    } else {
                        i26 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                        i27 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                        i28 = this.f1931s;
                        if (i26 < i27 + i28) {
                            iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) fVar2).bottomMargin + i28) - i26));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) fVar2).bottomMargin) - this.f1931s) - measuredHeight;
                }
                if (z12) {
                    if (z11) {
                        i21 = this.f1928p;
                    } else {
                        i21 = 0;
                    }
                    int i35 = i21 - iArr[1];
                    iMin -= Math.max(0, i35);
                    iArr[1] = Math.max(0, -i35);
                    if (zA) {
                        f fVar5 = (f) this.f1914b.getLayoutParams();
                        int measuredWidth = iMin - this.f1914b.getMeasuredWidth();
                        int measuredHeight2 = this.f1914b.getMeasuredHeight() + paddingTop;
                        this.f1914b.layout(measuredWidth, paddingTop, iMin, measuredHeight2);
                        i22 = measuredWidth - this.f1929q;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) fVar5).bottomMargin;
                    } else {
                        i22 = iMin;
                    }
                    if (zA2) {
                        int i36 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1915c.getLayoutParams())).topMargin;
                        this.f1915c.layout(iMin - this.f1915c.getMeasuredWidth(), i36, iMin, this.f1915c.getMeasuredHeight() + i36);
                        i23 = iMin - this.f1929q;
                    } else {
                        i23 = iMin;
                    }
                    if (z11) {
                        iMin = Math.min(i22, i23);
                    }
                    iMax = iMax;
                } else {
                    if (z11) {
                        i17 = this.f1928p;
                    } else {
                        i17 = 0;
                    }
                    i18 = 0;
                    int i37 = i17 - iArr[0];
                    iMax += Math.max(0, i37);
                    iArr[0] = Math.max(0, -i37);
                    if (zA) {
                        f fVar6 = (f) this.f1914b.getLayoutParams();
                        int measuredWidth2 = this.f1914b.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.f1914b.getMeasuredHeight() + paddingTop;
                        this.f1914b.layout(iMax, paddingTop, measuredWidth2, measuredHeight3);
                        i19 = measuredWidth2 + this.f1929q;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) fVar6).bottomMargin;
                    } else {
                        i19 = iMax;
                    }
                    if (zA2) {
                        int i38 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1915c.getLayoutParams())).topMargin;
                        int measuredWidth3 = this.f1915c.getMeasuredWidth() + iMax;
                        this.f1915c.layout(iMax, i38, measuredWidth3, this.f1915c.getMeasuredHeight() + i38);
                        i20 = measuredWidth3 + this.f1929q;
                    } else {
                        i20 = iMax;
                    }
                    if (z11) {
                        iMax = Math.max(i19, i20);
                    }
                }
                b(this.D, 3);
                size = this.D.size();
                iS2 = iMax;
                for (i29 = i18; i29 < size; i29++) {
                    iS2 = s((View) this.D.get(i29), iS2, iArr, iMin2);
                }
                i30 = iMin2;
                b(this.D, 5);
                size2 = this.D.size();
                for (i31 = i18; i31 < size2; i31++) {
                    iMin = t((View) this.D.get(i31), iMin, iArr, i30);
                }
                b(this.D, 1);
                int iQ = q(this.D, iArr);
                i32 = (i16 + (((width - i16) - paddingRight) / 2)) - (iQ / 2);
                i33 = iQ + i32;
                if (i32 >= iS2) {
                    if (i33 > iMin) {
                        iS2 = i32 - (i33 - iMin);
                    } else {
                        iS2 = i32;
                    }
                }
                size3 = this.D.size();
                while (i18 < size3) {
                    iS2 = s((View) this.D.get(i18), iS2, iArr, i30);
                    i18++;
                }
                this.D.clear();
            }
            i16 = paddingLeft;
            iMin2 = iMin2;
            i18 = 0;
            b(this.D, 3);
            size = this.D.size();
            iS2 = iMax;
            while (i29 < size) {
                iS2 = s((View) this.D.get(i29), iS2, iArr, iMin2);
            }
            i30 = iMin2;
            b(this.D, 5);
            size2 = this.D.size();
            while (i31 < size2) {
                iMin = t((View) this.D.get(i31), iMin, iArr, i30);
            }
            b(this.D, 1);
            int iQ2 = q(this.D, iArr);
            i32 = (i16 + (((width - i16) - paddingRight) / 2)) - (iQ2 / 2);
            i33 = iQ2 + i32;
            if (i32 >= iS2) {
                if (i33 > iMin) {
                    iS2 = i32 - (i33 - iMin);
                } else {
                    iS2 = i32;
                }
            }
            size3 = this.D.size();
            while (i18 < size3) {
                iS2 = s((View) this.D.get(i18), iS2, iArr, i30);
                i18++;
            }
            this.D.clear();
        }
        iS = paddingLeft;
        iT = i34;
        if (A(this.f1920h)) {
            if (z12) {
                iT = t(this.f1920h, iT, iArr, iMin2);
            } else {
                iS = s(this.f1920h, iS, iArr, iMin2);
            }
        }
        if (A(this.f1913a)) {
            if (z12) {
                iS = s(this.f1913a, iS, iArr, iMin2);
            } else {
                iT = t(this.f1913a, iT, iArr, iMin2);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iS);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i34 - iT));
        iMax = Math.max(iS, currentContentInsetLeft2);
        iMin = Math.min(iT, i34 - currentContentInsetRight2);
        if (A(this.f1921i)) {
            if (z12) {
                iMin = t(this.f1921i, iMin, iArr, iMin2);
            } else {
                iMax = s(this.f1921i, iMax, iArr, iMin2);
            }
        }
        if (A(this.f1917e)) {
            if (z12) {
                iMin = t(this.f1917e, iMin, iArr, iMin2);
            } else {
                iMax = s(this.f1917e, iMax, iArr, iMin2);
            }
        }
        zA = A(this.f1914b);
        zA2 = A(this.f1915c);
        if (zA) {
            f fVar7 = (f) this.f1914b.getLayoutParams();
            measuredHeight = ((ViewGroup.MarginLayoutParams) fVar7).topMargin + this.f1914b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar7).bottomMargin;
        } else {
            measuredHeight = 0;
        }
        if (zA2) {
            f fVar8 = (f) this.f1915c.getLayoutParams();
            measuredHeight += ((ViewGroup.MarginLayoutParams) fVar8).topMargin + this.f1915c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar8).bottomMargin;
        }
        if (zA) {
            if (zA) {
                textView = this.f1914b;
            } else {
                textView = this.f1915c;
            }
            if (zA2) {
                textView2 = this.f1915c;
            } else {
                textView2 = this.f1914b;
            }
            fVar = (f) textView.getLayoutParams();
            fVar2 = (f) textView2.getLayoutParams();
            if (zA) {
            }
            i15 = this.f1935w & 112;
            i16 = paddingLeft;
            if (i15 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin + this.f1930r;
            } else if (i15 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i24 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                i25 = this.f1930r;
                if (iMax2 < i24 + i25) {
                    iMax2 = i24 + i25;
                } else {
                    i26 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i27 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                    i28 = this.f1931s;
                    if (i26 < i27 + i28) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) fVar2).bottomMargin + i28) - i26));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) fVar2).bottomMargin) - this.f1931s) - measuredHeight;
            }
            if (z12) {
                if (z11) {
                    i21 = this.f1928p;
                } else {
                    i21 = 0;
                }
                int i39 = i21 - iArr[1];
                iMin -= Math.max(0, i39);
                iArr[1] = Math.max(0, -i39);
                if (zA) {
                    f fVar9 = (f) this.f1914b.getLayoutParams();
                    int measuredWidth4 = iMin - this.f1914b.getMeasuredWidth();
                    int measuredHeight4 = this.f1914b.getMeasuredHeight() + paddingTop;
                    this.f1914b.layout(measuredWidth4, paddingTop, iMin, measuredHeight4);
                    i22 = measuredWidth4 - this.f1929q;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) fVar9).bottomMargin;
                } else {
                    i22 = iMin;
                }
                if (zA2) {
                    int i310 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1915c.getLayoutParams())).topMargin;
                    this.f1915c.layout(iMin - this.f1915c.getMeasuredWidth(), i310, iMin, this.f1915c.getMeasuredHeight() + i310);
                    i23 = iMin - this.f1929q;
                } else {
                    i23 = iMin;
                }
                if (z11) {
                    iMin = Math.min(i22, i23);
                }
                iMax = iMax;
                i18 = 0;
            } else {
                if (z11) {
                    i17 = this.f1928p;
                } else {
                    i17 = 0;
                }
                i18 = 0;
                int i311 = i17 - iArr[0];
                iMax += Math.max(0, i311);
                iArr[0] = Math.max(0, -i311);
                if (zA) {
                    f fVar10 = (f) this.f1914b.getLayoutParams();
                    int measuredWidth5 = this.f1914b.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.f1914b.getMeasuredHeight() + paddingTop;
                    this.f1914b.layout(iMax, paddingTop, measuredWidth5, measuredHeight5);
                    i19 = measuredWidth5 + this.f1929q;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) fVar10).bottomMargin;
                } else {
                    i19 = iMax;
                }
                if (zA2) {
                    int i312 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1915c.getLayoutParams())).topMargin;
                    int measuredWidth6 = this.f1915c.getMeasuredWidth() + iMax;
                    this.f1915c.layout(iMax, i312, measuredWidth6, this.f1915c.getMeasuredHeight() + i312);
                    i20 = measuredWidth6 + this.f1929q;
                } else {
                    i20 = iMax;
                }
                if (z11) {
                    iMax = Math.max(i19, i20);
                }
            }
        } else {
            if (zA) {
                textView = this.f1914b;
            } else {
                textView = this.f1915c;
            }
            if (zA2) {
                textView2 = this.f1915c;
            } else {
                textView2 = this.f1914b;
            }
            fVar = (f) textView.getLayoutParams();
            fVar2 = (f) textView2.getLayoutParams();
            if (zA) {
            }
            i15 = this.f1935w & 112;
            i16 = paddingLeft;
            if (i15 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin + this.f1930r;
            } else if (i15 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i24 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                i25 = this.f1930r;
                if (iMax2 < i24 + i25) {
                    iMax2 = i24 + i25;
                } else {
                    i26 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i27 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                    i28 = this.f1931s;
                    if (i26 < i27 + i28) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) fVar2).bottomMargin + i28) - i26));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) fVar2).bottomMargin) - this.f1931s) - measuredHeight;
            }
            if (z12) {
                if (z11) {
                    i21 = this.f1928p;
                } else {
                    i21 = 0;
                }
                int i313 = i21 - iArr[1];
                iMin -= Math.max(0, i313);
                iArr[1] = Math.max(0, -i313);
                if (zA) {
                    f fVar11 = (f) this.f1914b.getLayoutParams();
                    int measuredWidth7 = iMin - this.f1914b.getMeasuredWidth();
                    int measuredHeight6 = this.f1914b.getMeasuredHeight() + paddingTop;
                    this.f1914b.layout(measuredWidth7, paddingTop, iMin, measuredHeight6);
                    i22 = measuredWidth7 - this.f1929q;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) fVar11).bottomMargin;
                } else {
                    i22 = iMin;
                }
                if (zA2) {
                    int i314 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1915c.getLayoutParams())).topMargin;
                    this.f1915c.layout(iMin - this.f1915c.getMeasuredWidth(), i314, iMin, this.f1915c.getMeasuredHeight() + i314);
                    i23 = iMin - this.f1929q;
                } else {
                    i23 = iMin;
                }
                if (z11) {
                    iMin = Math.min(i22, i23);
                }
                iMax = iMax;
                i18 = 0;
            } else {
                if (z11) {
                    i17 = this.f1928p;
                } else {
                    i17 = 0;
                }
                i18 = 0;
                int i315 = i17 - iArr[0];
                iMax += Math.max(0, i315);
                iArr[0] = Math.max(0, -i315);
                if (zA) {
                    f fVar12 = (f) this.f1914b.getLayoutParams();
                    int measuredWidth8 = this.f1914b.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.f1914b.getMeasuredHeight() + paddingTop;
                    this.f1914b.layout(iMax, paddingTop, measuredWidth8, measuredHeight7);
                    i19 = measuredWidth8 + this.f1929q;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) fVar12).bottomMargin;
                } else {
                    i19 = iMax;
                }
                if (zA2) {
                    int i316 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1915c.getLayoutParams())).topMargin;
                    int measuredWidth9 = this.f1915c.getMeasuredWidth() + iMax;
                    this.f1915c.layout(iMax, i316, measuredWidth9, this.f1915c.getMeasuredHeight() + i316);
                    i20 = measuredWidth9 + this.f1929q;
                } else {
                    i20 = iMax;
                }
                if (z11) {
                    iMax = Math.max(i19, i20);
                }
            }
        }
        b(this.D, 3);
        size = this.D.size();
        iS2 = iMax;
        while (i29 < size) {
            iS2 = s((View) this.D.get(i29), iS2, iArr, iMin2);
        }
        i30 = iMin2;
        b(this.D, 5);
        size2 = this.D.size();
        while (i31 < size2) {
            iMin = t((View) this.D.get(i31), iMin, iArr, i30);
        }
        b(this.D, 1);
        int iQ3 = q(this.D, iArr);
        i32 = (i16 + (((width - i16) - paddingRight) / 2)) - (iQ3 / 2);
        i33 = iQ3 + i32;
        if (i32 >= iS2) {
            if (i33 > iMin) {
                iS2 = i32 - (i33 - iMin);
            } else {
                iS2 = i32;
            }
        }
        size3 = this.D.size();
        while (i18 < size3) {
            iS2 = s((View) this.D.get(i18), iS2, iArr, i30);
            i18++;
        }
        this.D.clear();
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int measuredWidth;
        int iMax;
        int iCombineMeasuredStates;
        int measuredWidth2;
        int measuredHeight;
        int iCombineMeasuredStates2;
        int iMax2;
        int[] iArr = this.F;
        boolean zB = u0.b(this);
        int i13 = !zB ? 1 : 0;
        if (A(this.f1916d)) {
            v(this.f1916d, i11, 0, i12, 0, this.f1927o);
            measuredWidth = this.f1916d.getMeasuredWidth() + o(this.f1916d);
            iMax = Math.max(0, this.f1916d.getMeasuredHeight() + p(this.f1916d));
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1916d.getMeasuredState());
        } else {
            measuredWidth = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (A(this.f1920h)) {
            v(this.f1920h, i11, 0, i12, 0, this.f1927o);
            measuredWidth = this.f1920h.getMeasuredWidth() + o(this.f1920h);
            iMax = Math.max(iMax, this.f1920h.getMeasuredHeight() + p(this.f1920h));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1920h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, measuredWidth);
        iArr[zB ? 1 : 0] = Math.max(0, currentContentInsetStart - measuredWidth);
        if (A(this.f1913a)) {
            v(this.f1913a, i11, iMax3, i12, 0, this.f1927o);
            measuredWidth2 = this.f1913a.getMeasuredWidth() + o(this.f1913a);
            iMax = Math.max(iMax, this.f1913a.getMeasuredHeight() + p(this.f1913a));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1913a.getMeasuredState());
        } else {
            measuredWidth2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + Math.max(currentContentInsetEnd, measuredWidth2);
        iArr[i13] = Math.max(0, currentContentInsetEnd - measuredWidth2);
        if (A(this.f1921i)) {
            iMax4 += u(this.f1921i, i11, iMax4, i12, 0, iArr);
            iMax = Math.max(iMax, this.f1921i.getMeasuredHeight() + p(this.f1921i));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1921i.getMeasuredState());
        }
        if (A(this.f1917e)) {
            iMax4 += u(this.f1917e, i11, iMax4, i12, 0, iArr);
            iMax = Math.max(iMax, this.f1917e.getMeasuredHeight() + p(this.f1917e));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1917e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (((f) childAt.getLayoutParams()).f1945b == 0 && A(childAt)) {
                iMax4 += u(childAt, i11, iMax4, i12, 0, iArr);
                iMax = Math.max(iMax, childAt.getMeasuredHeight() + p(childAt));
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i15 = this.f1930r + this.f1931s;
        int i16 = this.f1928p + this.f1929q;
        if (A(this.f1914b)) {
            u(this.f1914b, i11, iMax4 + i16, i12, i15, iArr);
            int measuredWidth3 = this.f1914b.getMeasuredWidth() + o(this.f1914b);
            measuredHeight = this.f1914b.getMeasuredHeight() + p(this.f1914b);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f1914b.getMeasuredState());
            iMax2 = measuredWidth3;
        } else {
            measuredHeight = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (A(this.f1915c)) {
            iMax2 = Math.max(iMax2, u(this.f1915c, i11, iMax4 + i16, i12, measuredHeight + i15, iArr));
            measuredHeight += this.f1915c.getMeasuredHeight() + p(this.f1915c);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f1915c.getMeasuredState());
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax4 + iMax2 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i11, (-16777216) & iCombineMeasuredStates2), z() ? 0 : View.resolveSizeAndState(Math.max(Math.max(iMax, measuredHeight) + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i12, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ActionMenuView actionMenuView = this.f1913a;
        androidx.appcompat.view.menu.f fVarPeekMenu = actionMenuView != null ? actionMenuView.peekMenu() : null;
        int i11 = savedState.expandedMenuItemId;
        if (i11 != 0 && this.M != null && fVarPeekMenu != null && (menuItemFindItem = fVarPeekMenu.findItem(i11)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.isOverflowOpen) {
            x();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i11) {
        super.onRtlPropertiesChanged(i11);
        e();
        this.f1932t.f(i11 == 1);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.h hVar;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        e eVar = this.M;
        if (eVar != null && (hVar = eVar.f1943b) != null) {
            savedState.expandedMenuItemId = hVar.getItemId();
        }
        savedState.isOverflowOpen = isOverflowMenuShowing();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    @Override // androidx.core.view.MenuHost
    public void removeMenuProvider(@NonNull MenuProvider menuProvider) {
        this.G.removeMenuProvider(menuProvider);
    }

    public void setBackInvokedCallbackEnabled(boolean z10) {
        if (this.S != z10) {
            this.S = z10;
            B();
        }
    }

    public void setCollapseContentDescription(int i11) {
        setCollapseContentDescription(i11 != 0 ? getContext().getText(i11) : null);
    }

    public void setCollapseContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            d();
        }
        ImageButton imageButton = this.f1920h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i11) {
        setCollapseIcon(g.a.b(getContext(), i11));
    }

    public void setCollapseIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            d();
            this.f1920h.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.f1920h;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.f1918f);
            }
        }
    }

    public void setCollapsible(boolean z10) {
        this.P = z10;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i11) {
        if (i11 < 0) {
            i11 = Integer.MIN_VALUE;
        }
        if (i11 != this.f1934v) {
            this.f1934v = i11;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i11) {
        if (i11 < 0) {
            i11 = Integer.MIN_VALUE;
        }
        if (i11 != this.f1933u) {
            this.f1933u = i11;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int i11, int i12) {
        e();
        this.f1932t.e(i11, i12);
    }

    public void setContentInsetsRelative(int i11, int i12) {
        e();
        this.f1932t.g(i11, i12);
    }

    public void setLogo(int i11) {
        setLogo(g.a.b(getContext(), i11));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            f();
            if (!r(this.f1917e)) {
                c(this.f1917e, true);
            }
        } else {
            ImageView imageView = this.f1917e;
            if (imageView != null && r(imageView)) {
                removeView(this.f1917e);
                this.E.remove(this.f1917e);
            }
        }
        ImageView imageView2 = this.f1917e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i11) {
        setLogoDescription(getContext().getText(i11));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            f();
        }
        ImageView imageView = this.f1917e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setMenu(androidx.appcompat.view.menu.f fVar, ActionMenuPresenter actionMenuPresenter) {
        if (fVar == null && this.f1913a == null) {
            return;
        }
        h();
        androidx.appcompat.view.menu.f fVarPeekMenu = this.f1913a.peekMenu();
        if (fVarPeekMenu == fVar) {
            return;
        }
        if (fVarPeekMenu != null) {
            fVarPeekMenu.R(this.L);
            fVarPeekMenu.R(this.M);
        }
        if (this.M == null) {
            this.M = new e();
        }
        actionMenuPresenter.J(true);
        if (fVar != null) {
            fVar.c(actionMenuPresenter, this.f1922j);
            fVar.c(this.M, this.f1922j);
        } else {
            actionMenuPresenter.k(this.f1922j, null);
            this.M.k(this.f1922j, null);
            actionMenuPresenter.h(true);
            this.M.h(true);
        }
        this.f1913a.setPopupTheme(this.f1923k);
        this.f1913a.setPresenter(actionMenuPresenter);
        this.L = actionMenuPresenter;
        B();
    }

    public void setMenuCallbacks(androidx.appcompat.view.menu.l.a aVar, androidx.appcompat.view.menu.f.a aVar2) {
        this.N = aVar;
        this.O = aVar2;
        ActionMenuView actionMenuView = this.f1913a;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(aVar, aVar2);
        }
    }

    public void setNavigationContentDescription(int i11) {
        setNavigationContentDescription(i11 != 0 ? getContext().getText(i11) : null);
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            i();
        }
        ImageButton imageButton = this.f1916d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
            o0.a(this.f1916d, charSequence);
        }
    }

    public void setNavigationIcon(int i11) {
        setNavigationIcon(g.a.b(getContext(), i11));
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            i();
            if (!r(this.f1916d)) {
                c(this.f1916d, true);
            }
        } else {
            ImageButton imageButton = this.f1916d;
            if (imageButton != null && r(imageButton)) {
                removeView(this.f1916d);
                this.E.remove(this.f1916d);
            }
        }
        ImageButton imageButton2 = this.f1916d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        i();
        this.f1916d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(g gVar) {
        this.I = gVar;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        g();
        this.f1913a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i11) {
        if (this.f1923k != i11) {
            this.f1923k = i11;
            if (i11 == 0) {
                this.f1922j = getContext();
            } else {
                this.f1922j = new ContextThemeWrapper(getContext(), i11);
            }
        }
    }

    public void setSubtitle(int i11) {
        setSubtitle(getContext().getText(i11));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f1915c;
            if (textView != null && r(textView)) {
                removeView(this.f1915c);
                this.E.remove(this.f1915c);
            }
        } else {
            if (this.f1915c == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1915c = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1915c.setEllipsize(TextUtils.TruncateAt.END);
                int i11 = this.f1925m;
                if (i11 != 0) {
                    this.f1915c.setTextAppearance(context, i11);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f1915c.setTextColor(colorStateList);
                }
            }
            if (!r(this.f1915c)) {
                c(this.f1915c, true);
            }
        }
        TextView textView2 = this.f1915c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1937y = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, int i11) {
        this.f1925m = i11;
        TextView textView = this.f1915c;
        if (textView != null) {
            textView.setTextAppearance(context, i11);
        }
    }

    public void setSubtitleTextColor(int i11) {
        setSubtitleTextColor(ColorStateList.valueOf(i11));
    }

    public void setSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f1915c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i11) {
        setTitle(getContext().getText(i11));
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f1914b;
            if (textView != null && r(textView)) {
                removeView(this.f1914b);
                this.E.remove(this.f1914b);
            }
        } else {
            if (this.f1914b == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1914b = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1914b.setEllipsize(TextUtils.TruncateAt.END);
                int i11 = this.f1924l;
                if (i11 != 0) {
                    this.f1914b.setTextAppearance(context, i11);
                }
                ColorStateList colorStateList = this.f1938z;
                if (colorStateList != null) {
                    this.f1914b.setTextColor(colorStateList);
                }
            }
            if (!r(this.f1914b)) {
                c(this.f1914b, true);
            }
        }
        TextView textView2 = this.f1914b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1936x = charSequence;
    }

    public void setTitleMargin(int i11, int i12, int i13, int i14) {
        this.f1928p = i11;
        this.f1930r = i12;
        this.f1929q = i13;
        this.f1931s = i14;
        requestLayout();
    }

    public void setTitleMarginBottom(int i11) {
        this.f1931s = i11;
        requestLayout();
    }

    public void setTitleMarginEnd(int i11) {
        this.f1929q = i11;
        requestLayout();
    }

    public void setTitleMarginStart(int i11) {
        this.f1928p = i11;
        requestLayout();
    }

    public void setTitleMarginTop(int i11) {
        this.f1930r = i11;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i11) {
        this.f1924l = i11;
        TextView textView = this.f1914b;
        if (textView != null) {
            textView.setTextAppearance(context, i11);
        }
    }

    public void setTitleTextColor(int i11) {
        setTitleTextColor(ColorStateList.valueOf(i11));
    }

    public void setTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f1938z = colorStateList;
        TextView textView = this.f1914b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public boolean showOverflowMenu() {
        ActionMenuView actionMenuView = this.f1913a;
        return actionMenuView != null && actionMenuView.showOverflowMenu();
    }

    void y() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((f) childAt.getLayoutParams()).f1945b != 2 && childAt != this.f1913a) {
                removeViewAt(childCount);
                this.E.add(childAt);
            }
        }
    }
}
