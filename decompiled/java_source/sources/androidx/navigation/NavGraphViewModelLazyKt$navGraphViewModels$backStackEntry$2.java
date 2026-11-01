package androidx.navigation;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/t0;", "VM", "Landroidx/navigation/NavBackStackEntry;", "invoke", "()Landroidx/navigation/NavBackStackEntry;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
public final class NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2 extends Lambda implements Function0<NavBackStackEntry> {
    final /* synthetic */ int $navGraphId;
    final /* synthetic */ Fragment $this_navGraphViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(Fragment fragment, int i11) {
        super(0);
        this.$this_navGraphViewModels = fragment;
        this.$navGraphId = i11;
    }

    @Override // kotlin.jvm.functions.Function0
    public final NavBackStackEntry invoke() {
        return androidx.navigation.fragment.d.a(this.$this_navGraphViewModels).w(this.$navGraphId);
    }
}
