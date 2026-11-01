package rh;

import android.content.res.Resources;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f74530a = new a();

    private a() {
    }

    public final int a(float f11) {
        return (int) TypedValue.applyDimension(1, f11, Resources.getSystem().getDisplayMetrics());
    }
}
