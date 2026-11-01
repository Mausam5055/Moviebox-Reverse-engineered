package androidx.p009lifecycle;

import android.app.Application;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Application f9577a;

    public b(Application application) {
        Intrinsics.h(application, "application");
        this.f9577a = application;
    }

    public Application b() {
        Application application = this.f9577a;
        Intrinsics.f(application, "null cannot be cast to non-null type T of androidx.lifecycle.AndroidViewModel.getApplication");
        return application;
    }
}
