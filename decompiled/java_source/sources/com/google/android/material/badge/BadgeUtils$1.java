package com.google.android.material.badge;

import android.widget.FrameLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.internal.ToolbarUtils;

/* JADX INFO: loaded from: classes4.dex */
class BadgeUtils$1 implements Runnable {
    final /* synthetic */ BadgeDrawable val$badgeDrawable;
    final /* synthetic */ FrameLayout val$customBadgeParent;
    final /* synthetic */ int val$menuItemId;
    final /* synthetic */ Toolbar val$toolbar;

    BadgeUtils$1(Toolbar toolbar, int i11, BadgeDrawable badgeDrawable, FrameLayout frameLayout) {
        this.val$toolbar = toolbar;
        this.val$menuItemId = i11;
        this.val$badgeDrawable = badgeDrawable;
        this.val$customBadgeParent = frameLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        ActionMenuItemView actionMenuItemViewA = ToolbarUtils.a(this.val$toolbar, this.val$menuItemId);
        if (actionMenuItemViewA != null) {
            c.h(this.val$badgeDrawable, this.val$toolbar.getResources());
            c.c(this.val$badgeDrawable, actionMenuItemViewA, this.val$customBadgeParent);
            c.b(this.val$badgeDrawable, actionMenuItemViewA);
        }
    }
}
