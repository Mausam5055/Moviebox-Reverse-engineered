package bw;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d {
    public static void a(Window window, Context context) {
        int i11;
        Intrinsics.h(window, "window");
        Intrinsics.h(context, "context");
        window.setBackgroundDrawableResource(R.color.transparent);
        Intrinsics.h(context, "context");
        int i12 = (int) ((context.getResources().getDisplayMetrics().density * 16.0f) + 0.5f);
        Object systemService = context.getSystemService("window");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i13 = displayMetrics.widthPixels - (i12 * 2);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = i13;
        attributes.height = -2;
        attributes.gravity = 81;
        Intrinsics.h(context, "context");
        int i14 = (int) ((context.getResources().getDisplayMetrics().density * 28.0f) + 0.5f);
        Intrinsics.h(context, "context");
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
        if (dimensionPixelSize <= 0 || (i11 = i14 - dimensionPixelSize) <= 0) {
            Intrinsics.h(context, "context");
            int i15 = (int) ((context.getResources().getDisplayMetrics().density * 16.0f) + 0.5f);
            Intrinsics.h(context, "context");
            try {
                Resources resources2 = context.getResources();
                int identifier2 = resources2.getIdentifier("config_navBarInteractionMode", "integer", "android");
                if (identifier2 <= 0 || resources2.getInteger(identifier2) != 2) {
                    i14 = i15;
                }
            } catch (Exception unused) {
            }
        } else {
            i14 = i11;
        }
        attributes.y = i14;
        Intrinsics.h(context, "context");
        attributes.dimAmount = (context.getResources().getConfiguration().uiMode & 48) == 32 ? 0.65f : 0.2f;
        window.addFlags(2);
        window.setAttributes(attributes);
    }
}
