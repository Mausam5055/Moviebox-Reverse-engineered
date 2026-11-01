package h0;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.compose.ui.platform.actionmodecallback.MenuItemOption;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import y.i;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0 f64044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f64045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function0 f64046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function0 f64047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function0 f64048e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function0 f64049f;

    public b() {
        this(null, null, null, null, null, null, 63, null);
    }

    public b(Function0 function0, i iVar, Function0 function1, Function0 function2, Function0 function3, Function0 function4) {
        this.f64044a = function0;
        this.f64045b = iVar;
        this.f64046c = function1;
        this.f64047d = function2;
        this.f64048e = function3;
        this.f64049f = function4;
    }

    public /* synthetic */ b(Function0 function0, i iVar, Function0 function1, Function0 function2, Function0 function3, Function0 function4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : function0, (i11 & 2) != 0 ? i.f78475e.a() : iVar, (i11 & 4) != 0 ? null : function1, (i11 & 8) != 0 ? null : function2, (i11 & 16) != 0 ? null : function3, (i11 & 32) != 0 ? null : function4);
    }

    private final void b(Menu menu, MenuItemOption menuItemOption, Function0 function0) {
        if (function0 != null && menu.findItem(menuItemOption.getId()) == null) {
            a(menu, menuItemOption);
        } else {
            if (function0 != null || menu.findItem(menuItemOption.getId()) == null) {
                return;
            }
            menu.removeItem(menuItemOption.getId());
        }
    }

    public final void a(Menu menu, MenuItemOption menuItemOption) {
        menu.add(0, menuItemOption.getId(), menuItemOption.getOrder(), menuItemOption.getTitleResource()).setShowAsAction(1);
    }

    public final i c() {
        return this.f64045b;
    }

    public final boolean d(ActionMode actionMode, MenuItem menuItem) {
        Intrinsics.e(menuItem);
        int itemId = menuItem.getItemId();
        if (itemId == MenuItemOption.Copy.getId()) {
            Function0 function0 = this.f64046c;
            if (function0 != null) {
                function0.invoke();
            }
        } else if (itemId == MenuItemOption.Paste.getId()) {
            Function0 function1 = this.f64047d;
            if (function1 != null) {
                function1.invoke();
            }
        } else if (itemId == MenuItemOption.Cut.getId()) {
            Function0 function2 = this.f64048e;
            if (function2 != null) {
                function2.invoke();
            }
        } else {
            if (itemId != MenuItemOption.SelectAll.getId()) {
                return false;
            }
            Function0 function3 = this.f64049f;
            if (function3 != null) {
                function3.invoke();
            }
        }
        if (actionMode == null) {
            return true;
        }
        actionMode.finish();
        return true;
    }

    public final boolean e(ActionMode actionMode, Menu menu) {
        if (menu == null) {
            throw new IllegalArgumentException("onCreateActionMode requires a non-null menu");
        }
        if (actionMode == null) {
            throw new IllegalArgumentException("onCreateActionMode requires a non-null mode");
        }
        if (this.f64046c != null) {
            a(menu, MenuItemOption.Copy);
        }
        if (this.f64047d != null) {
            a(menu, MenuItemOption.Paste);
        }
        if (this.f64048e != null) {
            a(menu, MenuItemOption.Cut);
        }
        if (this.f64049f == null) {
            return true;
        }
        a(menu, MenuItemOption.SelectAll);
        return true;
    }

    public final void f() {
        Function0 function0 = this.f64044a;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final boolean g(ActionMode actionMode, Menu menu) {
        if (actionMode == null || menu == null) {
            return false;
        }
        m(menu);
        return true;
    }

    public final void h(Function0 function0) {
        this.f64046c = function0;
    }

    public final void i(Function0 function0) {
        this.f64048e = function0;
    }

    public final void j(Function0 function0) {
        this.f64047d = function0;
    }

    public final void k(Function0 function0) {
        this.f64049f = function0;
    }

    public final void l(i iVar) {
        this.f64045b = iVar;
    }

    public final void m(Menu menu) {
        b(menu, MenuItemOption.Copy, this.f64046c);
        b(menu, MenuItemOption.Paste, this.f64047d);
        b(menu, MenuItemOption.Cut, this.f64048e);
        b(menu, MenuItemOption.SelectAll, this.f64049f);
    }
}
