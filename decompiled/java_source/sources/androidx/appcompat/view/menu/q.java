package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class q extends f implements SubMenu {
    private f B;
    private h C;

    public q(Context context, f fVar, h hVar) {
        super(context);
        this.B = fVar;
        this.C = hVar;
    }

    @Override // androidx.appcompat.view.menu.f
    public f F() {
        return this.B.F();
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean I() {
        return this.B.I();
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean J() {
        return this.B.J();
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean K() {
        return this.B.K();
    }

    @Override // androidx.appcompat.view.menu.f
    public void W(f.a aVar) {
        this.B.W(aVar);
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean f(h hVar) {
        return this.B.f(hVar);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.C;
    }

    @Override // androidx.appcompat.view.menu.f
    boolean h(f fVar, MenuItem menuItem) {
        return super.h(fVar, menuItem) || this.B.h(fVar, menuItem);
    }

    public Menu j0() {
        return this.B;
    }

    @Override // androidx.appcompat.view.menu.f
    public boolean m(h hVar) {
        return this.B.m(hVar);
    }

    @Override // androidx.appcompat.view.menu.f, b1.a, android.view.Menu
    public void setGroupDividerEnabled(boolean z10) {
        this.B.setGroupDividerEnabled(z10);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i11) {
        return (SubMenu) super.Z(i11);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.a0(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i11) {
        return (SubMenu) super.c0(i11);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.d0(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.e0(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i11) {
        this.C.setIcon(i11);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.f, android.view.Menu
    public void setQwertyMode(boolean z10) {
        this.B.setQwertyMode(z10);
    }

    @Override // androidx.appcompat.view.menu.f
    public String v() {
        h hVar = this.C;
        int itemId = hVar != null ? hVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.v() + ":" + itemId;
    }
}
