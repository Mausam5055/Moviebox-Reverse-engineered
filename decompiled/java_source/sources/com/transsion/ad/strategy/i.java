package com.transsion.ad.strategy;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f42235a = new i();

    private i() {
    }

    public final void a(View view) {
        Intrinsics.h(view, "view");
        if (com.transsion.ad.scene.b.f42202a.m()) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }
}
