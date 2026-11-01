package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;

/* JADX INFO: loaded from: classes4.dex */
public class r extends androidx.appcompat.view.menu.f {
    public r(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.f, android.view.Menu
    public SubMenu addSubMenu(int i11, int i12, int i13, CharSequence charSequence) {
        androidx.appcompat.view.menu.h hVar = (androidx.appcompat.view.menu.h) a(i11, i12, i13, charSequence);
        t tVar = new t(w(), this, hVar);
        hVar.x(tVar);
        return tVar;
    }
}
