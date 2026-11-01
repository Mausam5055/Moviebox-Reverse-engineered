package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class i0 extends c0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference f2038b;

    public i0(Context context, Resources resources) {
        super(resources);
        this.f2038b = new WeakReference(context);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i11) {
        Drawable drawableA = a(i11);
        Context context = (Context) this.f2038b.get();
        if (drawableA != null && context != null) {
            b0.h().x(context, i11, drawableA);
        }
        return drawableA;
    }
}
