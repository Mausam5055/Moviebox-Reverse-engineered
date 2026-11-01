package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.h;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends androidx.appcompat.view.menu.f {
    private final Class B;
    private final int C;

    public d(Context context, Class cls, int i11) {
        super(context);
        this.B = cls;
        this.C = i11;
    }

    @Override // androidx.appcompat.view.menu.f
    protected MenuItem a(int i11, int i12, int i13, CharSequence charSequence) {
        if (size() + 1 <= this.C) {
            i0();
            MenuItem menuItemA = super.a(i11, i12, i13, charSequence);
            if (menuItemA instanceof h) {
                ((h) menuItemA).t(true);
            }
            h0();
            return menuItemA;
        }
        String simpleName = this.B.getSimpleName();
        throw new IllegalArgumentException("Maximum number of items supported by " + simpleName + " is " + this.C + ". Limit can be checked with " + simpleName + "#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.f, android.view.Menu
    public SubMenu addSubMenu(int i11, int i12, int i13, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.B.getSimpleName() + " does not support submenus");
    }
}
