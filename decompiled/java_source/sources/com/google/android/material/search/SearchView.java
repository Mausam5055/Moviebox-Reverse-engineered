package com.google.android.material.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.b, wa.b {
    private static final int D = R$style.Widget_Material3_SearchView;
    private boolean A;
    private TransitionState B;
    private Map C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final View f29531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ClippableRoundedCornerLayout f29532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final View f29533c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final View f29534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final FrameLayout f29535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final FrameLayout f29536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final MaterialToolbar f29537g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Toolbar f29538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final TextView f29539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final EditText f29540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final ImageButton f29541k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final View f29542l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final TouchObserverFrameLayout f29543m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f29544n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final f0 f29545o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final wa.c f29546p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f29547q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ta.a f29548r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Set f29549s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private SearchBar f29550t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f29551u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f29552v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f29553w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f29554x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int f29555y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f29556z;

    public static class Behavior extends CoordinatorLayout.c {
        public Behavior() {
        }

        public Behavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public boolean h(CoordinatorLayout coordinatorLayout, SearchView searchView, View view) {
            if (searchView.isSetupWithSearchBar() || !(view instanceof SearchBar)) {
                return false;
            }
            searchView.setupWithSearchBar((SearchBar) view);
            return false;
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f29557a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f29558b;

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
            this.f29557a = parcel.readString();
            this.f29558b = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeString(this.f29557a);
            parcel.writeInt(this.f29558b);
        }
    }

    public enum TransitionState {
        HIDING,
        HIDDEN,
        SHOWING,
        SHOWN
    }

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            SearchView.this.f29541k.setVisibility(charSequence.length() > 0 ? 0 : 8);
        }
    }

    public interface b {
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSearchViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = D;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f29546p = new wa.c(this);
        this.f29549s = new LinkedHashSet();
        this.f29551u = 16;
        this.B = TransitionState.HIDDEN;
        Context context2 = getContext();
        TypedArray typedArrayI = com.google.android.material.internal.b0.i(context2, attributeSet, R$styleable.SearchView, i11, i12, new int[0]);
        this.f29555y = typedArrayI.getColor(R$styleable.SearchView_backgroundTint, 0);
        int resourceId = typedArrayI.getResourceId(R$styleable.SearchView_headerLayout, -1);
        int resourceId2 = typedArrayI.getResourceId(R$styleable.SearchView_android_textAppearance, -1);
        String string = typedArrayI.getString(R$styleable.SearchView_android_text);
        String string2 = typedArrayI.getString(R$styleable.SearchView_android_hint);
        String string3 = typedArrayI.getString(R$styleable.SearchView_searchPrefixText);
        boolean z10 = typedArrayI.getBoolean(R$styleable.SearchView_useDrawerArrowDrawable, false);
        this.f29552v = typedArrayI.getBoolean(R$styleable.SearchView_animateNavigationIcon, true);
        this.f29553w = typedArrayI.getBoolean(R$styleable.SearchView_animateMenuItems, true);
        boolean z11 = typedArrayI.getBoolean(R$styleable.SearchView_hideNavigationIcon, false);
        this.f29554x = typedArrayI.getBoolean(R$styleable.SearchView_autoShowKeyboard, true);
        this.f29547q = typedArrayI.getBoolean(R$styleable.SearchView_backHandlingEnabled, true);
        typedArrayI.recycle();
        LayoutInflater.from(context2).inflate(R$layout.mtrl_search_view, this);
        this.f29544n = true;
        this.f29531a = findViewById(R$id.open_search_view_scrim);
        this.f29532b = (ClippableRoundedCornerLayout) findViewById(R$id.open_search_view_root);
        this.f29533c = findViewById(R$id.open_search_view_background);
        this.f29534d = findViewById(R$id.open_search_view_status_bar_spacer);
        this.f29535e = (FrameLayout) findViewById(R$id.open_search_view_header_container);
        this.f29536f = (FrameLayout) findViewById(R$id.open_search_view_toolbar_container);
        this.f29537g = (MaterialToolbar) findViewById(R$id.open_search_view_toolbar);
        this.f29538h = (Toolbar) findViewById(R$id.open_search_view_dummy_toolbar);
        this.f29539i = (TextView) findViewById(R$id.open_search_view_search_prefix);
        this.f29540j = (EditText) findViewById(R$id.open_search_view_edit_text);
        this.f29541k = (ImageButton) findViewById(R$id.open_search_view_clear_button);
        this.f29542l = findViewById(R$id.open_search_view_divider);
        this.f29543m = (TouchObserverFrameLayout) findViewById(R$id.open_search_view_content_container);
        this.f29545o = new f0(this);
        this.f29548r = new ta.a(context2);
        G();
        A();
        setUpHeaderLayout(resourceId);
        setSearchPrefixText(string3);
        E(resourceId2, string, string2);
        z(z10, z11);
        B();
        C();
        F();
    }

    private void A() {
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
    }

    private void B() {
        this.f29541k.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f29617a.q(view);
            }
        });
        this.f29540j.addTextChangedListener(new a());
    }

    private void C() {
        this.f29543m.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.search.v
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f29626a.r(view, motionEvent);
            }
        });
    }

    private void D() {
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f29542l.getLayoutParams();
        final int i11 = marginLayoutParams.leftMargin;
        final int i12 = marginLayoutParams.rightMargin;
        ViewCompat.setOnApplyWindowInsetsListener(this.f29542l, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.search.o
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SearchView.s(marginLayoutParams, i11, i12, view, windowInsetsCompat);
            }
        });
    }

    private void E(int i11, String str, String str2) {
        if (i11 != -1) {
            androidx.core.widget.m.q(this.f29540j, i11);
        }
        this.f29540j.setText(str);
        this.f29540j.setHint(str2);
    }

    private void F() {
        I();
        D();
        H();
    }

    private void G() {
        this.f29532b.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.search.u
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SearchView.t(view, motionEvent);
            }
        });
    }

    private void H() {
        setUpStatusBarSpacer(getStatusBarHeight());
        ViewCompat.setOnApplyWindowInsetsListener(this.f29534d, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.search.r
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f29623a.u(view, windowInsetsCompat);
            }
        });
    }

    private void I() {
        com.google.android.material.internal.f0.f(this.f29537g, new com.google.android.material.internal.f0.d() { // from class: com.google.android.material.search.q
            @Override // com.google.android.material.internal.f0.d
            public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, com.google.android.material.internal.f0.e eVar) {
                return this.f29622a.v(view, windowInsetsCompat, eVar);
            }
        });
    }

    private void J(ViewGroup viewGroup, boolean z10) {
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt != this) {
                if (childAt.findViewById(this.f29532b.getId()) != null) {
                    J((ViewGroup) childAt, z10);
                } else if (z10) {
                    this.C.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    ViewCompat.setImportantForAccessibility(childAt, 4);
                } else {
                    Map map = this.C;
                    if (map != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, ((Integer) this.C.get(childAt)).intValue());
                    }
                }
            }
        }
    }

    private void K(TransitionState transitionState) {
        if (this.f29550t == null || !this.f29547q) {
            return;
        }
        if (transitionState.equals(TransitionState.SHOWN)) {
            this.f29546p.c();
        } else if (transitionState.equals(TransitionState.HIDDEN)) {
            this.f29546p.f();
        }
    }

    private void L() {
        MaterialToolbar materialToolbar = this.f29537g;
        if (materialToolbar == null || m(materialToolbar)) {
            return;
        }
        int defaultNavigationIconResource = getDefaultNavigationIconResource();
        if (this.f29550t == null) {
            this.f29537g.setNavigationIcon(defaultNavigationIconResource);
            return;
        }
        Drawable drawableR = a1.a.r(g.a.b(getContext(), defaultNavigationIconResource).mutate());
        if (this.f29537g.getNavigationIconTint() != null) {
            a1.a.n(drawableR, this.f29537g.getNavigationIconTint().intValue());
        }
        this.f29537g.setNavigationIcon(new com.google.android.material.internal.h(this.f29550t.getNavigationIcon(), drawableR));
        M();
    }

    private void M() {
        ImageButton imageButtonE = ToolbarUtils.e(this.f29537g);
        if (imageButtonE == null) {
            return;
        }
        int i11 = this.f29532b.getVisibility() == 0 ? 1 : 0;
        Drawable drawableQ = a1.a.q(imageButtonE.getDrawable());
        if (drawableQ instanceof androidx.appcompat.graphics.drawable.c) {
            ((androidx.appcompat.graphics.drawable.c) drawableQ).setProgress(i11);
        }
        if (drawableQ instanceof com.google.android.material.internal.h) {
            ((com.google.android.material.internal.h) drawableQ).a(i11);
        }
    }

    @Nullable
    private Window getActivityWindow() {
        Activity activityA = com.google.android.material.internal.c.a(getContext());
        if (activityA == null) {
            return null;
        }
        return activityA.getWindow();
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.f29550t;
        return searchBar != null ? searchBar.getCompatElevation() : getResources().getDimension(R$dimen.m3_searchview_elevation);
    }

    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private boolean l() {
        return this.B.equals(TransitionState.HIDDEN) || this.B.equals(TransitionState.HIDING);
    }

    private boolean m(Toolbar toolbar) {
        return a1.a.q(toolbar.getNavigationIcon()) instanceof androidx.appcompat.graphics.drawable.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        this.f29540j.clearFocus();
        SearchBar searchBar = this.f29550t;
        if (searchBar != null) {
            searchBar.requestFocus();
        }
        com.google.android.material.internal.f0.o(this.f29540j, this.f29556z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        if (this.f29540j.requestFocus()) {
            this.f29540j.sendAccessibilityEvent(8);
        }
        com.google.android.material.internal.f0.v(this.f29540j, this.f29556z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(View view) {
        hide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(View view) {
        clearText();
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean r(View view, MotionEvent motionEvent) {
        if (!k()) {
            return false;
        }
        clearFocusAndHideKeyboard();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsetsCompat s(ViewGroup.MarginLayoutParams marginLayoutParams, int i11, int i12, View view, WindowInsetsCompat windowInsetsCompat) {
        marginLayoutParams.leftMargin = i11 + windowInsetsCompat.getSystemWindowInsetLeft();
        marginLayoutParams.rightMargin = i12 + windowInsetsCompat.getSystemWindowInsetRight();
        return windowInsetsCompat;
    }

    private void setStatusBarSpacerEnabledInternal(boolean z10) {
        this.f29534d.setVisibility(z10 ? 0 : 8);
    }

    private void setUpBackgroundViewElevationOverlay(float f11) {
        ta.a aVar = this.f29548r;
        if (aVar == null || this.f29533c == null) {
            return;
        }
        this.f29533c.setBackgroundColor(aVar.c(this.f29555y, f11));
    }

    private void setUpHeaderLayout(int i11) {
        if (i11 != -1) {
            addHeaderView(LayoutInflater.from(getContext()).inflate(i11, (ViewGroup) this.f29535e, false));
        }
    }

    private void setUpStatusBarSpacer(int i11) {
        if (this.f29534d.getLayoutParams().height != i11) {
            this.f29534d.getLayoutParams().height = i11;
            this.f29534d.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean t(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat u(View view, WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        setUpStatusBarSpacer(systemWindowInsetTop);
        if (!this.A) {
            setStatusBarSpacerEnabledInternal(systemWindowInsetTop > 0);
        }
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat v(View view, WindowInsetsCompat windowInsetsCompat, com.google.android.material.internal.f0.e eVar) {
        boolean zP = com.google.android.material.internal.f0.p(this.f29537g);
        this.f29537g.setPadding((zP ? eVar.f29209c : eVar.f29207a) + windowInsetsCompat.getSystemWindowInsetLeft(), eVar.f29208b, (zP ? eVar.f29207a : eVar.f29209c) + windowInsetsCompat.getSystemWindowInsetRight(), eVar.f29210d);
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(View view) {
        show();
    }

    private void y(TransitionState transitionState, boolean z10) {
        if (this.B.equals(transitionState)) {
            return;
        }
        if (z10) {
            if (transitionState == TransitionState.SHOWN) {
                setModalForAccessibility(true);
            } else if (transitionState == TransitionState.HIDDEN) {
                setModalForAccessibility(false);
            }
        }
        this.B = transitionState;
        Iterator it = new LinkedHashSet(this.f29549s).iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
        K(transitionState);
    }

    private void z(boolean z10, boolean z11) {
        if (z11) {
            this.f29537g.setNavigationIcon((Drawable) null);
            return;
        }
        this.f29537g.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f29615a.p(view);
            }
        });
        if (z10) {
            androidx.appcompat.graphics.drawable.c cVar = new androidx.appcompat.graphics.drawable.c(getContext());
            cVar.c(com.google.android.material.color.b.d(this, R$attr.colorOnSurface));
            this.f29537g.setNavigationIcon(cVar);
        }
    }

    public void addHeaderView(@NonNull View view) {
        this.f29535e.addView(view);
        this.f29535e.setVisibility(0);
    }

    public void addTransitionListener(@NonNull b bVar) {
        this.f29549s.add(bVar);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (this.f29544n) {
            this.f29543m.addView(view, i11, layoutParams);
        } else {
            super.addView(view, i11, layoutParams);
        }
    }

    @Override // wa.b
    public void cancelBackProgress() {
        if (l() || this.f29550t == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f29545o.o();
    }

    public void clearFocusAndHideKeyboard() {
        this.f29540j.post(new Runnable() { // from class: com.google.android.material.search.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f29616a.n();
            }
        });
    }

    public void clearText() {
        this.f29540j.setText("");
    }

    wa.h getBackHelper() {
        return this.f29545o.r();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @NonNull
    public CoordinatorLayout.c getBehavior() {
        return new Behavior();
    }

    @NonNull
    public TransitionState getCurrentTransitionState() {
        return this.B;
    }

    protected int getDefaultNavigationIconResource() {
        return R$drawable.ic_arrow_back_black_24;
    }

    @NonNull
    public EditText getEditText() {
        return this.f29540j;
    }

    @Nullable
    public CharSequence getHint() {
        return this.f29540j.getHint();
    }

    @NonNull
    public TextView getSearchPrefix() {
        return this.f29539i;
    }

    @Nullable
    public CharSequence getSearchPrefixText() {
        return this.f29539i.getText();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getSoftInputMode() {
        return this.f29551u;
    }

    @NonNull
    @SuppressLint({"KotlinPropertyAccess"})
    public Editable getText() {
        return this.f29540j.getText();
    }

    @NonNull
    public Toolbar getToolbar() {
        return this.f29537g;
    }

    @Override // wa.b
    public void handleBackInvoked() {
        if (l()) {
            return;
        }
        androidx.activity.b bVarS = this.f29545o.S();
        if (Build.VERSION.SDK_INT < 34 || this.f29550t == null || bVarS == null) {
            hide();
        } else {
            this.f29545o.p();
        }
    }

    public void hide() {
        if (this.B.equals(TransitionState.HIDDEN) || this.B.equals(TransitionState.HIDING)) {
            return;
        }
        this.f29545o.M();
    }

    public void inflateMenu(int i11) {
        this.f29537g.inflateMenu(i11);
    }

    public boolean isAnimatedNavigationIcon() {
        return this.f29552v;
    }

    public boolean isAutoShowKeyboard() {
        return this.f29554x;
    }

    public boolean isMenuItemsAnimated() {
        return this.f29553w;
    }

    public boolean isSetupWithSearchBar() {
        return this.f29550t != null;
    }

    public boolean isShowing() {
        return this.B.equals(TransitionState.SHOWN) || this.B.equals(TransitionState.SHOWING);
    }

    public boolean isUseWindowInsetsController() {
        return this.f29556z;
    }

    boolean k() {
        return this.f29551u == 48;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ab.j.e(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        updateSoftInputMode();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.f29557a);
        setVisible(savedState.f29558b == 0);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = getText();
        savedState.f29557a = text == null ? null : text.toString();
        savedState.f29558b = this.f29532b.getVisibility();
        return savedState;
    }

    public void removeAllHeaderViews() {
        this.f29535e.removeAllViews();
        this.f29535e.setVisibility(8);
    }

    public void removeHeaderView(@NonNull View view) {
        this.f29535e.removeView(view);
        if (this.f29535e.getChildCount() == 0) {
            this.f29535e.setVisibility(8);
        }
    }

    public void removeTransitionListener(@NonNull b bVar) {
        this.f29549s.remove(bVar);
    }

    public void requestFocusAndShowKeyboard() {
        this.f29540j.postDelayed(new Runnable() { // from class: com.google.android.material.search.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f29621a.o();
            }
        }, 100L);
    }

    public void setAnimatedNavigationIcon(boolean z10) {
        this.f29552v = z10;
    }

    public void setAutoShowKeyboard(boolean z10) {
        this.f29554x = z10;
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        setUpBackgroundViewElevationOverlay(f11);
    }

    public void setHint(int i11) {
        this.f29540j.setHint(i11);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.f29540j.setHint(charSequence);
    }

    public void setMenuItemsAnimated(boolean z10) {
        this.f29553w = z10;
    }

    public void setModalForAccessibility(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z10) {
            this.C = new HashMap(viewGroup.getChildCount());
        }
        J(viewGroup, z10);
        if (z10) {
            return;
        }
        this.C = null;
    }

    public void setOnMenuItemClickListener(@Nullable Toolbar.g gVar) {
        this.f29537g.setOnMenuItemClickListener(gVar);
    }

    public void setSearchPrefixText(@Nullable CharSequence charSequence) {
        this.f29539i.setText(charSequence);
        this.f29539i.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    public void setStatusBarSpacerEnabled(boolean z10) {
        this.A = true;
        setStatusBarSpacerEnabledInternal(z10);
    }

    public void setText(int i11) {
        this.f29540j.setText(i11);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setText(@Nullable CharSequence charSequence) {
        this.f29540j.setText(charSequence);
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z10) {
        this.f29537g.setTouchscreenBlocksFocus(z10);
    }

    void setTransitionState(@NonNull TransitionState transitionState) {
        y(transitionState, true);
    }

    public void setUseWindowInsetsController(boolean z10) {
        this.f29556z = z10;
    }

    public void setVisible(boolean z10) {
        boolean z11 = this.f29532b.getVisibility() == 0;
        this.f29532b.setVisibility(z10 ? 0 : 8);
        M();
        y(z10 ? TransitionState.SHOWN : TransitionState.HIDDEN, z11 != z10);
    }

    public void setupWithSearchBar(@Nullable SearchBar searchBar) {
        this.f29550t = searchBar;
        this.f29545o.X(searchBar);
        if (searchBar != null) {
            searchBar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f29624a.w(view);
                }
            });
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new Runnable() { // from class: com.google.android.material.search.t
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f29625a.show();
                        }
                    });
                    this.f29540j.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        L();
        A();
        K(getCurrentTransitionState());
    }

    public void show() {
        if (this.B.equals(TransitionState.SHOWN) || this.B.equals(TransitionState.SHOWING)) {
            return;
        }
        this.f29545o.Z();
    }

    @Override // wa.b
    public void startBackProgress(@NonNull androidx.activity.b bVar) {
        if (l() || this.f29550t == null) {
            return;
        }
        this.f29545o.a0(bVar);
    }

    @Override // wa.b
    public void updateBackProgress(@NonNull androidx.activity.b bVar) {
        if (l() || this.f29550t == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f29545o.f0(bVar);
    }

    public void updateSoftInputMode() {
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.f29551u = activityWindow.getAttributes().softInputMode;
        }
    }

    void x() {
        if (this.f29554x) {
            requestFocusAndShowKeyboard();
        }
    }
}
