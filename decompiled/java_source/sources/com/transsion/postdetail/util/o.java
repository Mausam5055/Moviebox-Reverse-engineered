package com.transsion.postdetail.util;

import android.app.Activity;
import android.view.OrientationEventListener;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class o extends OrientationEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f50175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f50176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f50177c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(Activity activity, Function1 callback) {
        super(activity);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        this.f50175a = activity;
        this.f50176b = callback;
    }

    public final int a() {
        return this.f50177c;
    }

    public final int b(Activity activity) {
        Intrinsics.h(activity, "activity");
        return activity.getWindowManager().getDefaultDisplay().getRotation();
    }

    public final void c(int i11) {
        if (this.f50177c == i11) {
            return;
        }
        this.f50177c = i11;
        this.f50176b.invoke(Integer.valueOf(i11));
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i11) {
        if (71 <= i11 && i11 < 110) {
            if (this.f50177c != 3 && b(this.f50175a) == 3) {
                c(3);
                return;
            }
            return;
        }
        if (251 > i11 || i11 >= 290 || this.f50177c == 1 || b(this.f50175a) != 1) {
            return;
        }
        c(1);
    }
}
