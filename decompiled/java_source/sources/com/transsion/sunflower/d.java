package com.transsion.sunflower;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f55065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Function1 f55066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function1 f55067c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function0 f55068d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function0 f55069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FSNConfig f55070f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f55071g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f55072h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Intent f55073i;

    public d(Context ctx) {
        Intrinsics.h(ctx, "ctx");
        this.f55065a = ctx;
        this.f55071g = R$mipmap.ic_launcher;
    }

    public final FSNManager a() {
        return FSNManager.f55052f.b(this);
    }

    public final FSNConfig b() {
        return this.f55070f;
    }

    public final Context c() {
        return this.f55065a;
    }

    public final int d() {
        return this.f55071g;
    }

    public final Function1 e() {
        return this.f55066b;
    }

    public final Function1 f() {
        return this.f55067c;
    }

    public final Function0 g() {
        return this.f55069e;
    }

    public final Intent h() {
        return this.f55073i;
    }

    public final Function0 i() {
        return this.f55068d;
    }

    public final boolean j() {
        return this.f55072h;
    }

    public final void k(Function0 function0) {
        this.f55068d = function0;
    }

    public final void l(FSNConfig fSNConfig) {
        this.f55070f = fSNConfig;
    }

    public final void m(boolean z10) {
        this.f55072h = z10;
    }

    public final void n(int i11) {
        this.f55071g = i11;
    }

    public final void o(Function1 function1) {
        this.f55066b = function1;
    }

    public final void p(Function1 function1) {
        this.f55067c = function1;
    }

    public final void q(Function0 function0) {
        this.f55069e = function0;
    }

    public final void r(Intent intent) {
        this.f55073i = intent;
    }
}
