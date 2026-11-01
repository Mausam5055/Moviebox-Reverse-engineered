package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.x0;

/* JADX INFO: loaded from: classes.dex */
abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f1418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x0 f1419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private x0 f1420c;

    c(Context context) {
        this.f1418a = context;
    }

    final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof b1.b)) {
            return menuItem;
        }
        b1.b bVar = (b1.b) menuItem;
        if (this.f1419b == null) {
            this.f1419b = new x0();
        }
        MenuItem menuItem2 = (MenuItem) this.f1419b.get(bVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        i iVar = new i(this.f1418a, bVar);
        this.f1419b.put(bVar, iVar);
        return iVar;
    }

    final SubMenu d(SubMenu subMenu) {
        return subMenu;
    }

    final void e() {
        x0 x0Var = this.f1419b;
        if (x0Var != null) {
            x0Var.clear();
        }
        x0 x0Var2 = this.f1420c;
        if (x0Var2 != null) {
            x0Var2.clear();
        }
    }

    final void f(int i11) {
        if (this.f1419b == null) {
            return;
        }
        int i12 = 0;
        while (i12 < this.f1419b.size()) {
            if (((b1.b) this.f1419b.keyAt(i12)).getGroupId() == i11) {
                this.f1419b.removeAt(i12);
                i12--;
            }
            i12++;
        }
    }

    final void g(int i11) {
        if (this.f1419b == null) {
            return;
        }
        for (int i12 = 0; i12 < this.f1419b.size(); i12++) {
            if (((b1.b) this.f1419b.keyAt(i12)).getItemId() == i11) {
                this.f1419b.removeAt(i12);
                return;
            }
        }
    }
}
