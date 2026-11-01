package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class MenuPopupWindow extends ListPopupWindow implements a0 {
    private static Method K;
    private a0 J;

    public static class MenuDropDownListView extends DropDownListView {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final int f1811n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final int f1812o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private a0 f1813p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private MenuItem f1814q;

        public MenuDropDownListView(Context context, boolean z10) {
            super(context, z10);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.f1811n = 21;
                this.f1812o = 22;
            } else {
                this.f1811n = 22;
                this.f1812o = 21;
            }
        }

        public void clearSelection() {
            setSelection(-1);
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.DropDownListView
        public /* bridge */ /* synthetic */ int lookForSelectablePosition(int i11, boolean z10) {
            return super.lookForSelectablePosition(i11, z10);
        }

        @Override // androidx.appcompat.widget.DropDownListView
        public /* bridge */ /* synthetic */ int measureHeightOfChildrenCompat(int i11, int i12, int i13, int i14, int i15) {
            return super.measureHeightOfChildrenCompat(i11, i12, i13, i14, i15);
        }

        @Override // androidx.appcompat.widget.DropDownListView
        public /* bridge */ /* synthetic */ boolean onForwardedEvent(MotionEvent motionEvent, int i11) {
            return super.onForwardedEvent(motionEvent, i11);
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            androidx.appcompat.view.menu.e eVar;
            int headersCount;
            int iPointToPosition;
            int i11;
            if (this.f1813p != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    eVar = (androidx.appcompat.view.menu.e) headerViewListAdapter.getWrappedAdapter();
                } else {
                    eVar = (androidx.appcompat.view.menu.e) adapter;
                    headersCount = 0;
                }
                androidx.appcompat.view.menu.h item = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i11 = iPointToPosition - headersCount) < 0 || i11 >= eVar.getCount()) ? null : eVar.getItem(i11);
                MenuItem menuItem = this.f1814q;
                if (menuItem != item) {
                    androidx.appcompat.view.menu.f fVarB = eVar.b();
                    if (menuItem != null) {
                        this.f1813p.n(fVarB, menuItem);
                    }
                    this.f1814q = item;
                    if (item != null) {
                        this.f1813p.d(fVarB, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i11, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i11 == this.f1811n) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i11 != this.f1812o) {
                return super.onKeyDown(i11, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (androidx.appcompat.view.menu.e) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (androidx.appcompat.view.menu.e) adapter).b().e(false);
            return true;
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(a0 a0Var) {
            this.f1813p = a0Var;
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static class a {
        static void a(PopupWindow popupWindow, Transition transition) {
            popupWindow.setEnterTransition(transition);
        }

        static void b(PopupWindow popupWindow, Transition transition) {
            popupWindow.setExitTransition(transition);
        }
    }

    static class b {
        static void a(PopupWindow popupWindow, boolean z10) {
            popupWindow.setTouchModal(z10);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                K = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
    }

    public void R(Object obj) {
        a.a(this.F, (Transition) obj);
    }

    public void S(Object obj) {
        a.b(this.F, (Transition) obj);
    }

    public void T(a0 a0Var) {
        this.J = a0Var;
    }

    public void U(boolean z10) {
        if (Build.VERSION.SDK_INT > 28) {
            b.a(this.F, z10);
            return;
        }
        Method method = K;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z10));
            } catch (Exception unused) {
            }
        }
    }

    @Override // androidx.appcompat.widget.a0
    public void d(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        a0 a0Var = this.J;
        if (a0Var != null) {
            a0Var.d(fVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.a0
    public void n(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        a0 a0Var = this.J;
        if (a0Var != null) {
            a0Var.n(fVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    DropDownListView r(Context context, boolean z10) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z10);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }
}
