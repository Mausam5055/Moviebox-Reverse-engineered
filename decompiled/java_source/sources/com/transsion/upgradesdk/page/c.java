package com.transsion.upgradesdk.page;

import android.os.Bundle;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f56606a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(f fVar) {
        super(0);
        this.f56606a = fVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Bundle arguments = this.f56606a.getArguments();
        return Integer.valueOf(arguments != null ? arguments.getInt("dialogStyle", 0) : 0);
    }
}
