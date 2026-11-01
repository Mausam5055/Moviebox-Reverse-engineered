package com.transsion.usercenter.profile.fragment;

import androidx.p009lifecycle.c0;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class v implements c0, FunctionAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Function1 f57213a;

    v(Function1 function) {
        Intrinsics.h(function, "function");
        this.f57213a = function;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function a() {
        return this.f57213a;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    @Override // androidx.p009lifecycle.c0
    public final /* synthetic */ void onChanged(Object obj) {
        this.f57213a.invoke(obj);
    }
}
