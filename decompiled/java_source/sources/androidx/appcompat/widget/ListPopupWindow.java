package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class ListPopupWindow implements androidx.appcompat.view.menu.o {
    private static Method G;
    private static Method H;
    private static Method I;
    private Runnable A;
    final Handler B;
    private final Rect C;
    private Rect D;
    private boolean E;
    PopupWindow F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f1781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ListAdapter f1782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    DropDownListView f1783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1785e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1786f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1787g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1788h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f1789i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f1790j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f1791k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f1792l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f1793m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f1794n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f1795o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f1796p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f1797q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private DataSetObserver f1798r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f1799s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Drawable f1800t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AdapterView.OnItemClickListener f1801u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private AdapterView.OnItemSelectedListener f1802v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final ResizePopupRunnable f1803w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final f f1804x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final e f1805y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final ListSelectorHider f1806z;

    private class ListSelectorHider implements Runnable {
        ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.q();
        }
    }

    private class ResizePopupRunnable implements Runnable {
        ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = ListPopupWindow.this.f1783c;
            if (dropDownListView == null || !dropDownListView.isAttachedToWindow() || ListPopupWindow.this.f1783c.getCount() <= ListPopupWindow.this.f1783c.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.f1783c.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount <= listPopupWindow.f1795o) {
                listPopupWindow.F.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    class a implements AdapterView.OnItemSelectedListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView adapterView, View view, int i11, long j11) {
            DropDownListView dropDownListView;
            if (i11 == -1 || (dropDownListView = ListPopupWindow.this.f1783c) == null) {
                return;
            }
            dropDownListView.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    static class b {
        static int a(PopupWindow popupWindow, View view, int i11, boolean z10) {
            return popupWindow.getMaxAvailableHeight(view, i11, z10);
        }
    }

    static class c {
        static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        static void b(PopupWindow popupWindow, boolean z10) {
            popupWindow.setIsClippedToScreen(z10);
        }
    }

    private class d extends DataSetObserver {
        d() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.a()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    private class e implements AbsListView.OnScrollListener {
        e() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i11, int i12, int i13) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i11) {
            if (i11 != 1 || ListPopupWindow.this.z() || ListPopupWindow.this.F.getContentView() == null) {
                return;
            }
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            listPopupWindow.B.removeCallbacks(listPopupWindow.f1803w);
            ListPopupWindow.this.f1803w.run();
        }
    }

    private class f implements View.OnTouchListener {
        f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.F) != null && popupWindow.isShowing() && x10 >= 0 && x10 < ListPopupWindow.this.F.getWidth() && y10 >= 0 && y10 < ListPopupWindow.this.F.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.B.postDelayed(listPopupWindow.f1803w, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
            listPopupWindow2.B.removeCallbacks(listPopupWindow2.f1803w);
            return false;
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                G = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                I = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                H = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R$attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i11, int i12) {
        this.f1784d = -2;
        this.f1785e = -2;
        this.f1788h = 1002;
        this.f1792l = 0;
        this.f1793m = false;
        this.f1794n = false;
        this.f1795o = Integer.MAX_VALUE;
        this.f1797q = 0;
        this.f1803w = new ResizePopupRunnable();
        this.f1804x = new f();
        this.f1805y = new e();
        this.f1806z = new ListSelectorHider();
        this.C = new Rect();
        this.f1781a = context;
        this.B = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPopupWindow, i11, i12);
        this.f1786f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1787g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1789i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        k kVar = new k(context, attributeSet, i11, i12);
        this.F = kVar;
        kVar.setInputMethodMode(1);
    }

    private void B() {
        View view = this.f1796p;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1796p);
            }
        }
    }

    private void N(boolean z10) {
        if (Build.VERSION.SDK_INT > 28) {
            c.b(this.F, z10);
            return;
        }
        Method method = G;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z10));
            } catch (Exception unused) {
            }
        }
    }

    private int p() {
        int measuredHeight;
        int i11;
        int iMakeMeasureSpec;
        View view;
        int i12;
        if (this.f1783c == null) {
            Context context = this.f1781a;
            this.A = new Runnable() { // from class: androidx.appcompat.widget.ListPopupWindow.2
                @Override // java.lang.Runnable
                public void run() {
                    View viewS = ListPopupWindow.this.s();
                    if (viewS == null || viewS.getWindowToken() == null) {
                        return;
                    }
                    ListPopupWindow.this.show();
                }
            };
            DropDownListView dropDownListViewR = r(context, !this.E);
            this.f1783c = dropDownListViewR;
            Drawable drawable = this.f1800t;
            if (drawable != null) {
                dropDownListViewR.setSelector(drawable);
            }
            this.f1783c.setAdapter(this.f1782b);
            this.f1783c.setOnItemClickListener(this.f1801u);
            this.f1783c.setFocusable(true);
            this.f1783c.setFocusableInTouchMode(true);
            this.f1783c.setOnItemSelectedListener(new a());
            this.f1783c.setOnScrollListener(this.f1805y);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1802v;
            if (onItemSelectedListener != null) {
                this.f1783c.setOnItemSelectedListener(onItemSelectedListener);
            }
            DropDownListView dropDownListView = this.f1783c;
            View view2 = this.f1796p;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i13 = this.f1797q;
                if (i13 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(dropDownListView, layoutParams);
                } else if (i13 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.f1797q);
                } else {
                    linearLayout.addView(dropDownListView, layoutParams);
                    linearLayout.addView(view2);
                }
                int i14 = this.f1785e;
                if (i14 >= 0) {
                    i12 = Integer.MIN_VALUE;
                } else {
                    i14 = 0;
                    i12 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i14, i12), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
                view = dropDownListView;
            }
            this.F.setContentView(view);
        } else {
            View view3 = this.f1796p;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.getPadding(this.C);
            Rect rect = this.C;
            int i15 = rect.top;
            i11 = rect.bottom + i15;
            if (!this.f1789i) {
                this.f1787g = -i15;
            }
        } else {
            this.C.setEmpty();
            i11 = 0;
        }
        int iT = t(s(), this.f1787g, this.F.getInputMethodMode() == 2);
        if (this.f1793m || this.f1784d == -1) {
            return iT + i11;
        }
        int i16 = this.f1785e;
        if (i16 == -2) {
            int i17 = this.f1781a.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.C;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i17 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i16 != -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16, 1073741824);
        } else {
            int i18 = this.f1781a.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.C;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i18 - (rect3.left + rect3.right), 1073741824);
        }
        int iMeasureHeightOfChildrenCompat = this.f1783c.measureHeightOfChildrenCompat(iMakeMeasureSpec, 0, -1, iT - measuredHeight, -1);
        if (iMeasureHeightOfChildrenCompat > 0) {
            measuredHeight += i11 + this.f1783c.getPaddingTop() + this.f1783c.getPaddingBottom();
        }
        return iMeasureHeightOfChildrenCompat + measuredHeight;
    }

    private int t(View view, int i11, boolean z10) {
        if (Build.VERSION.SDK_INT > 23) {
            return b.a(this.F, view, i11, z10);
        }
        Method method = H;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.F, view, Integer.valueOf(i11), Boolean.valueOf(z10))).intValue();
            } catch (Exception unused) {
            }
        }
        return this.F.getMaxAvailableHeight(view, i11);
    }

    public boolean A() {
        return this.E;
    }

    public void C(View view) {
        this.f1799s = view;
    }

    public void D(int i11) {
        this.F.setAnimationStyle(i11);
    }

    public void E(int i11) {
        Drawable background = this.F.getBackground();
        if (background == null) {
            Q(i11);
            return;
        }
        background.getPadding(this.C);
        Rect rect = this.C;
        this.f1785e = rect.left + rect.right + i11;
    }

    public void F(int i11) {
        this.f1792l = i11;
    }

    public void G(Rect rect) {
        this.D = rect != null ? new Rect(rect) : null;
    }

    public void H(int i11) {
        this.F.setInputMethodMode(i11);
    }

    public void I(boolean z10) {
        this.E = z10;
        this.F.setFocusable(z10);
    }

    public void J(PopupWindow.OnDismissListener onDismissListener) {
        this.F.setOnDismissListener(onDismissListener);
    }

    public void K(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1801u = onItemClickListener;
    }

    public void L(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f1802v = onItemSelectedListener;
    }

    public void M(boolean z10) {
        this.f1791k = true;
        this.f1790j = z10;
    }

    public void O(int i11) {
        this.f1797q = i11;
    }

    public void P(int i11) {
        DropDownListView dropDownListView = this.f1783c;
        if (!a() || dropDownListView == null) {
            return;
        }
        dropDownListView.setListSelectionHidden(false);
        dropDownListView.setSelection(i11);
        if (dropDownListView.getChoiceMode() != 0) {
            dropDownListView.setItemChecked(i11, true);
        }
    }

    public void Q(int i11) {
        this.f1785e = i11;
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean a() {
        return this.F.isShowing();
    }

    public void b(Drawable drawable) {
        this.F.setBackgroundDrawable(drawable);
    }

    public int c() {
        return this.f1786f;
    }

    @Override // androidx.appcompat.view.menu.o
    public void dismiss() {
        this.F.dismiss();
        B();
        this.F.setContentView(null);
        this.f1783c = null;
        this.B.removeCallbacks(this.f1803w);
    }

    public void e(int i11) {
        this.f1786f = i11;
    }

    public Drawable g() {
        return this.F.getBackground();
    }

    public void i(int i11) {
        this.f1787g = i11;
        this.f1789i = true;
    }

    public int l() {
        if (this.f1789i) {
            return this.f1787g;
        }
        return 0;
    }

    public void m(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1798r;
        if (dataSetObserver == null) {
            this.f1798r = new d();
        } else {
            ListAdapter listAdapter2 = this.f1782b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1782b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1798r);
        }
        DropDownListView dropDownListView = this.f1783c;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.f1782b);
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public ListView o() {
        return this.f1783c;
    }

    public void q() {
        DropDownListView dropDownListView = this.f1783c;
        if (dropDownListView != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
    }

    DropDownListView r(Context context, boolean z10) {
        return new DropDownListView(context, z10);
    }

    public View s() {
        return this.f1799s;
    }

    @Override // androidx.appcompat.view.menu.o
    public void show() {
        int iP = p();
        boolean z10 = z();
        androidx.core.widget.l.b(this.F, this.f1788h);
        if (this.F.isShowing()) {
            if (s().isAttachedToWindow()) {
                int width = this.f1785e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = s().getWidth();
                }
                int i11 = this.f1784d;
                if (i11 == -1) {
                    if (!z10) {
                        iP = -1;
                    }
                    if (z10) {
                        this.F.setWidth(this.f1785e == -1 ? -1 : 0);
                        this.F.setHeight(0);
                    } else {
                        this.F.setWidth(this.f1785e == -1 ? -1 : 0);
                        this.F.setHeight(-1);
                    }
                } else if (i11 != -2) {
                    iP = i11;
                }
                this.F.setOutsideTouchable((this.f1794n || this.f1793m) ? false : true);
                this.F.update(s(), this.f1786f, this.f1787g, width < 0 ? -1 : width, iP < 0 ? -1 : iP);
                return;
            }
            return;
        }
        int width2 = this.f1785e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = s().getWidth();
        }
        int i12 = this.f1784d;
        if (i12 == -1) {
            iP = -1;
        } else if (i12 != -2) {
            iP = i12;
        }
        this.F.setWidth(width2);
        this.F.setHeight(iP);
        N(true);
        this.F.setOutsideTouchable((this.f1794n || this.f1793m) ? false : true);
        this.F.setTouchInterceptor(this.f1804x);
        if (this.f1791k) {
            androidx.core.widget.l.a(this.F, this.f1790j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = I;
            if (method != null) {
                try {
                    method.invoke(this.F, this.D);
                } catch (Exception e11) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e11);
                }
            }
        } else {
            c.a(this.F, this.D);
        }
        androidx.core.widget.l.c(this.F, s(), this.f1786f, this.f1787g, this.f1792l);
        this.f1783c.setSelection(-1);
        if (!this.E || this.f1783c.isInTouchMode()) {
            q();
        }
        if (this.E) {
            return;
        }
        this.B.post(this.f1806z);
    }

    public Object u() {
        if (a()) {
            return this.f1783c.getSelectedItem();
        }
        return null;
    }

    public long v() {
        if (a()) {
            return this.f1783c.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int w() {
        if (a()) {
            return this.f1783c.getSelectedItemPosition();
        }
        return -1;
    }

    public View x() {
        if (a()) {
            return this.f1783c.getSelectedView();
        }
        return null;
    }

    public int y() {
        return this.f1785e;
    }

    public boolean z() {
        return this.F.getInputMethodMode() == 2;
    }
}
