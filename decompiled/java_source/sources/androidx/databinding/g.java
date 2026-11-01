package androidx.databinding;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f8548a = new DataBinderMapperImpl();

    public static ViewDataBinding a(View view) {
        b(view, null);
        return null;
    }

    public static ViewDataBinding b(View view, f fVar) {
        c(view);
        Object tag = view.getTag();
        if (!(tag instanceof String)) {
            throw new IllegalArgumentException("View is not a binding layout");
        }
        int iC = f8548a.c((String) tag);
        if (iC != 0) {
            f8548a.b(fVar, view, iC);
            return null;
        }
        throw new IllegalArgumentException("View is not a binding layout. Tag: " + tag);
    }

    public static ViewDataBinding c(View view) {
        ViewDataBinding.g(view);
        return null;
    }
}
