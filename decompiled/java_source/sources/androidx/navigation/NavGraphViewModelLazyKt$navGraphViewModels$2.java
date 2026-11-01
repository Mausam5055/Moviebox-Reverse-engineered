package androidx.navigation;

import androidx.p009lifecycle.v0;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/t0;", "VM", "Landroidx/lifecycle/v0$c;", "invoke", "()Landroidx/lifecycle/v0$c;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
public final class NavGraphViewModelLazyKt$navGraphViewModels$2 extends Lambda implements Function0<v0.c> {
    final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;
    final /* synthetic */ Function0<v0.c> $factoryProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavGraphViewModelLazyKt$navGraphViewModels$2(Function0<? extends v0.c> function0, Lazy<NavBackStackEntry> lazy) {
        super(0);
        this.$factoryProducer = function0;
        this.$backStackEntry$delegate = lazy;
    }

    @Override // kotlin.jvm.functions.Function0
    public final v0.c invoke() {
        Function0<v0.c> function0 = this.$factoryProducer;
        v0.c cVar = function0 == null ? null : (v0.c) function0.invoke();
        return cVar == null ? i.d(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory() : cVar;
    }
}
