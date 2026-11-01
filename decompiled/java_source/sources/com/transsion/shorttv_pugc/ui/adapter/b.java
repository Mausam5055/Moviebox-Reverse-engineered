package com.transsion.shorttv_pugc.ui.adapter;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import ms.e0;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends RecyclerView.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f54014a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(View view) {
        super(view);
        Intrinsics.h(view, "view");
        e0 e0VarA = e0.a(view);
        Intrinsics.g(e0VarA, "bind(...)");
        this.f54014a = e0VarA;
    }

    public final e0 f() {
        return this.f54014a;
    }
}
