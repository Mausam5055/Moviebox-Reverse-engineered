package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.n0;
import androidx.core.view.ViewCompat;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ToolbarActionBar extends androidx.appcompat.app.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final androidx.appcompat.widget.t f1090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Window.Callback f1091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final AppCompatDelegateImpl.e f1092c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1095f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList f1096g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f1097h = new Runnable() { // from class: androidx.appcompat.app.ToolbarActionBar.1
        @Override // java.lang.Runnable
        public void run() {
            ToolbarActionBar.this.x();
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Toolbar.g f1098i;

    class a implements Toolbar.g {
        a() {
        }

        @Override // androidx.appcompat.widget.Toolbar.g
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ToolbarActionBar.this.f1091b.onMenuItemSelected(0, menuItem);
        }
    }

    private final class b implements androidx.appcompat.view.menu.l.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1100a;

        b() {
        }

        @Override // androidx.appcompat.view.menu.l.a
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
            if (this.f1100a) {
                return;
            }
            this.f1100a = true;
            ToolbarActionBar.this.f1090a.k();
            ToolbarActionBar.this.f1091b.onPanelClosed(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            this.f1100a = false;
        }

        @Override // androidx.appcompat.view.menu.l.a
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            ToolbarActionBar.this.f1091b.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            return true;
        }
    }

    private final class c implements androidx.appcompat.view.menu.f.a {
        c() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void b(androidx.appcompat.view.menu.f fVar) {
            if (ToolbarActionBar.this.f1090a.isOverflowMenuShowing()) {
                ToolbarActionBar.this.f1091b.onPanelClosed(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            } else if (ToolbarActionBar.this.f1091b.onPreparePanel(0, null, fVar)) {
                ToolbarActionBar.this.f1091b.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            }
        }
    }

    private class d implements AppCompatDelegateImpl.e {
        d() {
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.e
        public boolean a(int i11) {
            if (i11 != 0) {
                return false;
            }
            ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
            if (toolbarActionBar.f1093d) {
                return false;
            }
            toolbarActionBar.f1090a.setMenuPrepared();
            ToolbarActionBar.this.f1093d = true;
            return false;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.e
        public View onCreatePanelView(int i11) {
            if (i11 == 0) {
                return new View(ToolbarActionBar.this.f1090a.getContext());
            }
            return null;
        }
    }

    ToolbarActionBar(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        a aVar = new a();
        this.f1098i = aVar;
        androidx.core.util.i.g(toolbar);
        n0 n0Var = new n0(toolbar, false);
        this.f1090a = n0Var;
        this.f1091b = (Window.Callback) androidx.core.util.i.g(callback);
        n0Var.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(aVar);
        n0Var.setWindowTitle(charSequence);
        this.f1092c = new d();
    }

    private Menu w() {
        if (!this.f1094e) {
            this.f1090a.o(new b(), new c());
            this.f1094e = true;
        }
        return this.f1090a.c();
    }

    @Override // androidx.appcompat.app.a
    public boolean g() {
        return this.f1090a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        if (!this.f1090a.a()) {
            return false;
        }
        this.f1090a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z10) {
        if (z10 == this.f1095f) {
            return;
        }
        this.f1095f = z10;
        if (this.f1096g.size() <= 0) {
            return;
        }
        android.support.v4.media.session.c.a(this.f1096g.get(0));
        throw null;
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f1090a.r();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        return this.f1090a.getContext();
    }

    @Override // androidx.appcompat.app.a
    public void l() {
        this.f1090a.setVisibility(8);
    }

    @Override // androidx.appcompat.app.a
    public boolean m() {
        this.f1090a.g().removeCallbacks(this.f1097h);
        ViewCompat.postOnAnimation(this.f1090a.g(), this.f1097h);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void n(Configuration configuration) {
        super.n(configuration);
    }

    @Override // androidx.appcompat.app.a
    void o() {
        this.f1090a.g().removeCallbacks(this.f1097h);
    }

    @Override // androidx.appcompat.app.a
    public boolean p(int i11, KeyEvent keyEvent) {
        Menu menuW = w();
        if (menuW == null) {
            return false;
        }
        menuW.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuW.performShortcut(i11, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public boolean q(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            r();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean r() {
        return this.f1090a.showOverflowMenu();
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z10) {
    }

    @Override // androidx.appcompat.app.a
    public void t(boolean z10) {
    }

    @Override // androidx.appcompat.app.a
    public void u(CharSequence charSequence) {
        this.f1090a.setWindowTitle(charSequence);
    }

    void x() {
        Menu menuW = w();
        androidx.appcompat.view.menu.f fVar = menuW instanceof androidx.appcompat.view.menu.f ? (androidx.appcompat.view.menu.f) menuW : null;
        if (fVar != null) {
            fVar.i0();
        }
        try {
            menuW.clear();
            if (!this.f1091b.onCreatePanelMenu(0, menuW) || !this.f1091b.onPreparePanel(0, null, menuW)) {
                menuW.clear();
            }
        } finally {
            if (fVar != null) {
                fVar.h0();
            }
        }
    }
}
