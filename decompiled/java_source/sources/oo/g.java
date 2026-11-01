package oo;

import android.app.Activity;
import android.view.OrientationEventListener;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends OrientationEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f71076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f71077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f71078c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Activity activity, Function1 callback) {
        super(activity);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        this.f71076a = activity;
        this.f71077b = callback;
    }

    private final int a(Activity activity) {
        return activity.getWindowManager().getDefaultDisplay().getRotation();
    }

    private final void b(int i11) {
        if (this.f71078c == i11) {
            return;
        }
        this.f71078c = i11;
        this.f71077b.invoke(Integer.valueOf(i11));
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i11) {
        if (71 <= i11 && i11 < 110) {
            if (this.f71078c != 3 && a(this.f71076a) == 3) {
                b(3);
                return;
            }
            return;
        }
        if (251 > i11 || i11 >= 290 || this.f71078c == 1 || a(this.f71076a) != 1) {
            return;
        }
        b(1);
    }
}
