package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    public static Interpolator a(Context context, int i11) {
        return AnimationUtils.loadInterpolator(context, i11);
    }
}
