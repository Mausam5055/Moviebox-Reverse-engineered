package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R$attr;
import androidx.core.view.ViewPropertyAnimatorCompat;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class DropDownListView extends ListView {
    public static final int INVALID_POSITION = -1;
    public static final int NO_POSITION = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f1751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1753c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d f1757g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1758h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f1759i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f1760j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ViewPropertyAnimatorCompat f1761k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.core.widget.j f1762l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ResolveHoverRunnable f1763m;

    private class ResolveHoverRunnable implements Runnable {
        ResolveHoverRunnable() {
        }

        public void cancel() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.f1763m = null;
            dropDownListView.removeCallbacks(this);
        }

        public void post() {
            DropDownListView.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.f1763m = null;
            dropDownListView.drawableStateChanged();
        }
    }

    static class a {
        static void a(View view, float f11, float f12) {
            view.drawableHotspotChanged(f11, f12);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Method f1764a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static Method f1765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Method f1766c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f1767d;

        static {
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
                f1764a = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
                f1765b = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
                f1766c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                f1767d = true;
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            }
        }

        static boolean a() {
            return f1767d;
        }

        static void b(DropDownListView dropDownListView, int i11, View view) {
            try {
                f1764a.invoke(dropDownListView, Integer.valueOf(i11), view, Boolean.FALSE, -1, -1);
                f1765b.invoke(dropDownListView, Integer.valueOf(i11));
                f1766c.invoke(dropDownListView, Integer.valueOf(i11));
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
    }

    static class c {
        static boolean a(AbsListView absListView) {
            return absListView.isSelectedChildViewEnabled();
        }

        static void b(AbsListView absListView, boolean z10) {
            absListView.setSelectedChildViewEnabled(z10);
        }
    }

    private static class d extends androidx.appcompat.graphics.drawable.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1768b;

        d(Drawable drawable) {
            super(drawable);
            this.f1768b = true;
        }

        void b(boolean z10) {
            this.f1768b = z10;
        }

        @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1768b) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
        public void setHotspot(float f11, float f12) {
            if (this.f1768b) {
                super.setHotspot(f11, f12);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i11, int i12, int i13, int i14) {
            if (this.f1768b) {
                super.setHotspotBounds(i11, i12, i13, i14);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1768b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.graphics.drawable.b, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z10, boolean z11) {
            if (this.f1768b) {
                return super.setVisible(z10, z11);
            }
            return false;
        }
    }

    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Field f1769a;

        static {
            Field declaredField = null;
            try {
                declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e11) {
                e11.printStackTrace();
            }
            f1769a = declaredField;
        }

        static boolean a(AbsListView absListView) {
            Field field = f1769a;
            if (field == null) {
                return false;
            }
            try {
                return field.getBoolean(absListView);
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
                return false;
            }
        }

        static void b(AbsListView absListView, boolean z10) {
            Field field = f1769a;
            if (field != null) {
                try {
                    field.set(absListView, Boolean.valueOf(z10));
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    DropDownListView(Context context, boolean z10) {
        super(context, null, R$attr.dropDownListViewStyle);
        this.f1751a = new Rect();
        this.f1752b = 0;
        this.f1753c = 0;
        this.f1754d = 0;
        this.f1755e = 0;
        this.f1759i = z10;
        setCacheColorHint(0);
    }

    private void a() {
        this.f1760j = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1756f - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1761k;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
            this.f1761k = null;
        }
    }

    private void b(View view, int i11) {
        performItemClick(view, i11, getItemIdAtPosition(i11));
    }

    private void c(Canvas canvas) {
        Drawable selector;
        if (this.f1751a.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1751a);
        selector.draw(canvas);
    }

    private void d(int i11, View view) {
        Rect rect = this.f1751a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1752b;
        rect.top -= this.f1753c;
        rect.right += this.f1754d;
        rect.bottom += this.f1755e;
        boolean zI = i();
        if (view.isEnabled() != zI) {
            j(!zI);
            if (i11 != -1) {
                refreshDrawableState();
            }
        }
    }

    private void e(int i11, View view) {
        Drawable selector = getSelector();
        boolean z10 = (selector == null || i11 == -1) ? false : true;
        if (z10) {
            selector.setVisible(false, false);
        }
        d(i11, view);
        if (z10) {
            Rect rect = this.f1751a;
            float fExactCenterX = rect.exactCenterX();
            float fExactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            a1.a.k(selector, fExactCenterX, fExactCenterY);
        }
    }

    private void f(int i11, View view, float f11, float f12) {
        e(i11, view);
        Drawable selector = getSelector();
        if (selector == null || i11 == -1) {
            return;
        }
        a1.a.k(selector, f11, f12);
    }

    private void g(View view, int i11, float f11, float f12) {
        View childAt;
        this.f1760j = true;
        a.a(this, f11, f12);
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i12 = this.f1756f;
        if (i12 != -1 && (childAt = getChildAt(i12 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1756f = i11;
        a.a(view, f11 - view.getLeft(), f12 - view.getTop());
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        f(i11, view, f11, f12);
        h(false);
        refreshDrawableState();
    }

    private void h(boolean z10) {
        d dVar = this.f1757g;
        if (dVar != null) {
            dVar.b(z10);
        }
    }

    private boolean i() {
        return Build.VERSION.SDK_INT >= 33 ? c.a(this) : e.a(this);
    }

    private void j(boolean z10) {
        if (Build.VERSION.SDK_INT >= 33) {
            c.b(this, z10);
        } else {
            e.b(this, z10);
        }
    }

    private boolean k() {
        return this.f1760j;
    }

    private void l() {
        Drawable selector = getSelector();
        if (selector != null && k() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1763m != null) {
            return;
        }
        super.drawableStateChanged();
        h(true);
        l();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1759i || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1759i || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1759i || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1759i && this.f1758h) || super.isInTouchMode();
    }

    public int lookForSelectablePosition(int i11, boolean z10) {
        int iMin;
        ListAdapter adapter = getAdapter();
        if (adapter != null && !isInTouchMode()) {
            int count = adapter.getCount();
            if (!getAdapter().areAllItemsEnabled()) {
                if (z10) {
                    iMin = Math.max(0, i11);
                    while (iMin < count && !adapter.isEnabled(iMin)) {
                        iMin++;
                    }
                } else {
                    iMin = Math.min(i11, count - 1);
                    while (iMin >= 0 && !adapter.isEnabled(iMin)) {
                        iMin--;
                    }
                }
                if (iMin < 0 || iMin >= count) {
                    return -1;
                }
                return iMin;
            }
            if (i11 >= 0 && i11 < count) {
                return i11;
            }
        }
        return -1;
    }

    public int measureHeightOfChildrenCompat(int i11, int i12, int i13, int i14, int i15) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        View view = null;
        while (i16 < count) {
            int itemViewType = adapter.getItemViewType(i16);
            if (itemViewType != i17) {
                view = null;
                i17 = itemViewType;
            }
            view = adapter.getView(i16, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i19 = layoutParams.height;
            view.measure(i11, i19 > 0 ? View.MeasureSpec.makeMeasureSpec(i19, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i16 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i14) {
                return (i15 < 0 || i16 <= i15 || i18 <= 0 || measuredHeight == i14) ? i14 : i18;
            }
            if (i15 >= 0 && i16 >= i15) {
                i18 = measuredHeight;
            }
            i16++;
        }
        return measuredHeight;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1763m = null;
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0053  */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:9:0x0011  */
    public boolean onForwardedEvent(MotionEvent motionEvent, int i11) {
        boolean z10;
        boolean z11;
        androidx.core.widget.j jVar;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            z10 = false;
        } else {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z10 = true;
                    z11 = false;
                } else {
                    z11 = false;
                    z10 = false;
                }
                if (z10 || z11) {
                    a();
                }
                if (z10) {
                    if (this.f1762l == null) {
                        this.f1762l = new androidx.core.widget.j(this);
                    }
                    this.f1762l.m(true);
                    this.f1762l.onTouch(this, motionEvent);
                } else {
                    jVar = this.f1762l;
                    if (jVar != null) {
                        jVar.m(false);
                    }
                }
                return z10;
            }
            z10 = true;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i11);
        if (iFindPointerIndex < 0) {
            z11 = false;
            z10 = false;
        } else {
            int x10 = (int) motionEvent.getX(iFindPointerIndex);
            int y10 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x10, y10);
            if (iPointToPosition == -1) {
                z11 = true;
            } else {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                g(childAt, iPointToPosition, x10, y10);
                if (actionMasked == 1) {
                    b(childAt, iPointToPosition);
                }
                z10 = true;
                z11 = false;
            }
        }
        if (z10) {
            a();
        } else {
            a();
        }
        if (z10) {
            if (this.f1762l == null) {
                this.f1762l = new androidx.core.widget.j(this);
            }
            this.f1762l.m(true);
            this.f1762l.onTouch(this, motionEvent);
        } else {
            jVar = this.f1762l;
            if (jVar != null) {
                jVar.m(false);
            }
        }
        return z10;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1763m == null) {
            ResolveHoverRunnable resolveHoverRunnable = new ResolveHoverRunnable();
            this.f1763m = resolveHoverRunnable;
            resolveHoverRunnable.post();
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i11 < 30 || !b.a()) {
                        setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                    } else {
                        b.b(this, iPointToPosition, childAt);
                    }
                }
                l();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1756f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        ResolveHoverRunnable resolveHoverRunnable = this.f1763m;
        if (resolveHoverRunnable != null) {
            resolveHoverRunnable.cancel();
        }
        return super.onTouchEvent(motionEvent);
    }

    void setListSelectionHidden(boolean z10) {
        this.f1758h = z10;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        d dVar = drawable != null ? new d(drawable) : null;
        this.f1757g = dVar;
        super.setSelector(dVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1752b = rect.left;
        this.f1753c = rect.top;
        this.f1754d = rect.right;
        this.f1755e = rect.bottom;
    }
}
