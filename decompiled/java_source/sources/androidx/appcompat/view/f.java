package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.n;
import androidx.collection.x0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f1274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f1275b;

    public static class a implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionMode.Callback f1276a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Context f1277b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList f1278c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final x0 f1279d = new x0();

        public a(Context context, ActionMode.Callback callback) {
            this.f1277b = context;
            this.f1276a = callback;
        }

        private Menu f(Menu menu) {
            Menu menu2 = (Menu) this.f1279d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            n nVar = new n(this.f1277b, (b1.a) menu);
            this.f1279d.put(menu, nVar);
            return nVar;
        }

        @Override // androidx.appcompat.view.b.a
        public void a(b bVar) {
            this.f1276a.onDestroyActionMode(e(bVar));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean b(b bVar, Menu menu) {
            return this.f1276a.onCreateActionMode(e(bVar), f(menu));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean c(b bVar, MenuItem menuItem) {
            return this.f1276a.onActionItemClicked(e(bVar), new androidx.appcompat.view.menu.i(this.f1277b, (b1.b) menuItem));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean d(b bVar, Menu menu) {
            return this.f1276a.onPrepareActionMode(e(bVar), f(menu));
        }

        public ActionMode e(b bVar) {
            int size = this.f1278c.size();
            for (int i11 = 0; i11 < size; i11++) {
                f fVar = (f) this.f1278c.get(i11);
                if (fVar != null && fVar.f1275b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f1277b, bVar);
            this.f1278c.add(fVar2);
            return fVar2;
        }
    }

    public f(Context context, b bVar) {
        this.f1274a = context;
        this.f1275b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f1275b.c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f1275b.d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new n(this.f1274a, (b1.a) this.f1275b.e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f1275b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f1275b.g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f1275b.h();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f1275b.i();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f1275b.j();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f1275b.k();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f1275b.l();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f1275b.m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i11) {
        this.f1275b.n(i11);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f1275b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f1275b.p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i11) {
        this.f1275b.q(i11);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f1275b.r(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z10) {
        this.f1275b.s(z10);
    }
}
