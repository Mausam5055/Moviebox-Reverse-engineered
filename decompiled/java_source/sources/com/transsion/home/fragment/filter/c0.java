package com.transsion.home.fragment.filter;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class c0 implements androidx.p009lifecycle.c0, FunctionAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Function1 f45022a;

    c0(Function1 function) {
        Intrinsics.h(function, "function");
        this.f45022a = function;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function a() {
        return this.f45022a;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    @Override // androidx.p009lifecycle.c0
    public final /* synthetic */ void onChanged(Object obj) {
        this.f45022a.invoke(obj);
    }
}
