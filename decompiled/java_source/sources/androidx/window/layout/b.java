package androidx.window.layout;

import android.app.Activity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f15334a = new b();

    private b() {
    }

    public final boolean a(Activity activity) {
        Intrinsics.h(activity, "activity");
        return activity.isInMultiWindowMode();
    }
}
