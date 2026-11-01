package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* JADX INFO: loaded from: classes.dex */
public interface t {
    boolean a();

    void b(int i11);

    Menu c();

    boolean canShowOverflowMenu();

    void collapseActionView();

    int d();

    ViewPropertyAnimatorCompat e(int i11, long j11);

    boolean f();

    ViewGroup g();

    Context getContext();

    CharSequence getTitle();

    void h(boolean z10);

    boolean hideOverflowMenu();

    void i();

    boolean isOverflowMenuShowPending();

    boolean isOverflowMenuShowing();

    void j(boolean z10);

    void k();

    void l(ScrollingTabContainerView scrollingTabContainerView);

    void m(SparseArray sparseArray);

    void n(int i11);

    void o(androidx.appcompat.view.menu.l.a aVar, androidx.appcompat.view.menu.f.a aVar2);

    void p(SparseArray sparseArray);

    boolean q();

    int r();

    void s();

    void setIcon(int i11);

    void setIcon(Drawable drawable);

    void setMenu(Menu menu, androidx.appcompat.view.menu.l.a aVar);

    void setMenuPrepared();

    void setVisibility(int i11);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    boolean showOverflowMenu();
}
