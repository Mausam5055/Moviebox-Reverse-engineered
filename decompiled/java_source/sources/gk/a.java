package gk;

import android.content.Context;
import android.util.DisplayMetrics;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f63625a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static DisplayMetrics f63626b;

    private a() {
    }

    public final int a(Context context) {
        Intrinsics.h(context, "context");
        if (f63626b == null) {
            f63626b = context.getResources().getDisplayMetrics();
        }
        DisplayMetrics displayMetrics = f63626b;
        if (displayMetrics != null) {
            return displayMetrics.widthPixels;
        }
        return 0;
    }
}
