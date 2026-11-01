package com.transsion.baseui.util;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f43532a = new o();

    private o() {
    }

    public final void a(View[] view, View.OnClickListener click) {
        Intrinsics.h(view, "view");
        Intrinsics.h(click, "click");
        for (View view2 : view) {
            if (view2 != null) {
                view2.setOnClickListener(click);
            }
        }
    }
}
