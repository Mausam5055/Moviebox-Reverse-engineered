package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f6170a = new q();

    private q() {
    }

    public final int a(Context context) {
        if (Build.VERSION.SDK_INT >= 31) {
            return r.f6171a.a(context);
        }
        return 0;
    }
}
