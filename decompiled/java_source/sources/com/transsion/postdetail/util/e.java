package com.transsion.postdetail.util;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f50163a = new e();

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Function0 function0, View view) {
        function0.invoke();
    }

    public final void b(View[] view, final Function0 click) {
        Intrinsics.h(view, "view");
        Intrinsics.h(click, "click");
        for (View view2 : view) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.util.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    e.c(click, view3);
                }
            });
        }
    }
}
