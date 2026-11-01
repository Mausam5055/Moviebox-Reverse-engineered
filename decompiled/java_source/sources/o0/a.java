package o0;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static final e a(Context context) {
        float f11 = context.getResources().getConfiguration().fontScale;
        float f12 = context.getResources().getDisplayMetrics().density;
        p0.a aVarB = p0.b.f72221a.b(f11);
        if (aVarB == null) {
            aVarB = new v(f11);
        }
        return new h(f12, f11, aVarB);
    }
}
