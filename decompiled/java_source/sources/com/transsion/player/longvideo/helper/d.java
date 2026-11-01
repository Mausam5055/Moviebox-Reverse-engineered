package com.transsion.player.longvideo.helper;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ho.j f47984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f47985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private fo.a.b f47986c;

    protected final fo.a.b a() {
        return this.f47986c;
    }

    protected final ho.j b() {
        return this.f47984a;
    }

    public void c(String str, ho.j viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        this.f47985b = str;
        this.f47984a = viewBinding;
    }

    public final void d(fo.a.b bVar) {
        this.f47986c = bVar;
    }
}
