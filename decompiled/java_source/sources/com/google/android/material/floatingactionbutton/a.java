package com.google.android.material.floatingactionbutton;

import android.animation.Animator;

/* JADX INFO: loaded from: classes4.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animator f28980a;

    a() {
    }

    public void a() {
        Animator animator = this.f28980a;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void b() {
        this.f28980a = null;
    }

    public void c(Animator animator) {
        a();
        this.f28980a = animator;
    }
}
