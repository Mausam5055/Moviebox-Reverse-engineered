package com.transsion.member.dialog;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class i implements androidx.p009lifecycle.c0, FunctionAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Function1 f46536a;

    i(Function1 function) {
        Intrinsics.h(function, "function");
        this.f46536a = function;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function a() {
        return this.f46536a;
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
        this.f46536a.invoke(obj);
    }
}
