package com.transsion.postdetail.helper;

import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/t0;", "VM", "Landroidx/lifecycle/x0;", "<anonymous>", "()Landroidx/lifecycle/x0;", "androidx/fragment/app/FragmentViewModelLazyKt$viewModels$2"}, k = 3, mv = {2, 1, 0})
public final class LocalVideoRecommendHelper$special$$inlined$viewModels$default$2 extends Lambda implements Function0<x0> {
    final /* synthetic */ Function0 $ownerProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalVideoRecommendHelper$special$$inlined$viewModels$default$2(Function0 function0) {
        super(0);
        this.$ownerProducer = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final x0 invoke() {
        x0 viewModelStore = ((y0) this.$ownerProducer.invoke()).getViewModelStore();
        Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
        return viewModelStore;
    }
}
