package androidx.core.widget;

import android.view.View;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    static class a {
        static void a(PopupWindow popupWindow, boolean z10) {
            popupWindow.setOverlapAnchor(z10);
        }

        static void b(PopupWindow popupWindow, int i11) {
            popupWindow.setWindowLayoutType(i11);
        }
    }

    public static void a(PopupWindow popupWindow, boolean z10) {
        a.a(popupWindow, z10);
    }

    public static void b(PopupWindow popupWindow, int i11) {
        a.b(popupWindow, i11);
    }

    public static void c(PopupWindow popupWindow, View view, int i11, int i12, int i13) {
        popupWindow.showAsDropDown(view, i11, i12, i13);
    }
}
