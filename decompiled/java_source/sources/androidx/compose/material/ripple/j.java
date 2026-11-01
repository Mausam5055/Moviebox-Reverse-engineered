package androidx.compose.material.ripple;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.ui.graphics.x1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f3506a = Intrinsics.c(Build.DEVICE, "layoutlib");

    /* JADX INFO: Access modifiers changed from: private */
    public static final RippleContainer c(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt instanceof RippleContainer) {
                return (RippleContainer) childAt;
            }
        }
        RippleContainer rippleContainer = new RippleContainer(viewGroup.getContext());
        viewGroup.addView(rippleContainer);
        return rippleContainer;
    }

    public static final androidx.compose.ui.node.f d(p.g gVar, boolean z10, float f11, x1 x1Var, Function0 function0) {
        return f3506a ? new CommonRippleNode(gVar, z10, f11, x1Var, function0, null) : new AndroidRippleNode(gVar, z10, f11, x1Var, function0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewGroup e(View view) {
        Object obj = view;
        while (!(obj instanceof ViewGroup)) {
            ViewParent parent = ((View) obj).getParent();
            if (!(parent instanceof View)) {
                throw new IllegalArgumentException(("Couldn't find a valid parent for " + obj + ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?").toString());
            }
            obj = parent;
        }
        return (ViewGroup) obj;
    }
}
