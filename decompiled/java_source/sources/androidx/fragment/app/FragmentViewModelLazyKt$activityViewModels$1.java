package androidx.fragment.app;

import androidx.p009lifecycle.x0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/t0;", "VM", "Landroidx/lifecycle/x0;", "<anonymous>", "()Landroidx/lifecycle/x0;"}, k = 3, mv = {1, 5, 1})
public final class FragmentViewModelLazyKt$activityViewModels$1 extends Lambda implements Function0<x0> {
    final /* synthetic */ Fragment $this_activityViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentViewModelLazyKt$activityViewModels$1(Fragment fragment) {
        super(0);
        this.$this_activityViewModels = fragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final x0 invoke() {
        x0 viewModelStore = this.$this_activityViewModels.requireActivity().getViewModelStore();
        Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
        return viewModelStore;
    }
}
