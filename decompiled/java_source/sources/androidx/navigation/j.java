package androidx.navigation;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.x0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class j extends NavController {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // androidx.navigation.NavController
    public final void d0(u owner) {
        Intrinsics.h(owner, "owner");
        super.d0(owner);
    }

    @Override // androidx.navigation.NavController
    public final void e0(OnBackPressedDispatcher dispatcher) {
        Intrinsics.h(dispatcher, "dispatcher");
        super.e0(dispatcher);
    }

    @Override // androidx.navigation.NavController
    public final void f0(x0 viewModelStore) {
        Intrinsics.h(viewModelStore, "viewModelStore");
        super.f0(viewModelStore);
    }

    @Override // androidx.navigation.NavController
    public final void r(boolean z10) {
        super.r(z10);
    }
}
