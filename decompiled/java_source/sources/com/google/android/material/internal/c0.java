package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* JADX INFO: loaded from: classes4.dex */
class c0 implements d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewOverlay f29194a;

    c0(View view) {
        this.f29194a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.d0
    public void a(Drawable drawable) {
        this.f29194a.add(drawable);
    }

    @Override // com.google.android.material.internal.d0
    public void b(Drawable drawable) {
        this.f29194a.remove(drawable);
    }
}
