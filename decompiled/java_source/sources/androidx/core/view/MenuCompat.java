package androidx.core.view;

import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public final class MenuCompat {

    static class a {
        static void a(Menu menu, boolean z10) {
            menu.setGroupDividerEnabled(z10);
        }
    }

    private MenuCompat() {
    }

    public static void setGroupDividerEnabled(Menu menu, boolean z10) {
        if (menu instanceof b1.a) {
            ((b1.a) menu).setGroupDividerEnabled(z10);
        } else if (Build.VERSION.SDK_INT >= 28) {
            a.a(menu, z10);
        }
    }

    @Deprecated
    public static void setShowAsAction(MenuItem menuItem, int i11) {
        menuItem.setShowAsAction(i11);
    }
}
