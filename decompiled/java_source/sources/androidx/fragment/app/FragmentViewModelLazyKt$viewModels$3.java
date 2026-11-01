package androidx.fragment.app;

import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.y0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/t0;", "VM", "Landroidx/lifecycle/v0$c;", "<anonymous>", "()Landroidx/lifecycle/v0$c;"}, k = 3, mv = {1, 5, 1})
public final class FragmentViewModelLazyKt$viewModels$3 extends Lambda implements Function0<v0.c> {
    final /* synthetic */ Function0<y0> $ownerProducer;
    final /* synthetic */ Fragment $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentViewModelLazyKt$viewModels$3(Function0<? extends y0> function0, Fragment fragment) {
        super(0);
        this.$ownerProducer = function0;
        this.$this_viewModels = fragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final v0.c invoke() {
        Object objInvoke = this.$ownerProducer.invoke();
        androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
        v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
        if (defaultViewModelProviderFactory == null) {
            defaultViewModelProviderFactory = this.$this_viewModels.getDefaultViewModelProviderFactory();
        }
        Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
        return defaultViewModelProviderFactory;
    }
}
