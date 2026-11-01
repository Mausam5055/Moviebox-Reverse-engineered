package com.transsion.shorttv.ad.playeroverlayad;

import com.transsion.shorttv.ad.AdLoadState;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AdLoadState f52723a = AdLoadState.IDLE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f52724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f52725c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f52726d;

    public final void a() {
        this.f52723a = AdLoadState.DESTROYED;
        e eVar = this.f52724b;
        if (eVar != null) {
            eVar.f();
        }
        this.f52724b = null;
        this.f52725c = false;
    }

    public final e b() {
        return this.f52724b;
    }

    public final AdLoadState c() {
        return this.f52723a;
    }

    public final boolean d() {
        return this.f52726d;
    }

    public final boolean e() {
        return this.f52725c;
    }

    public final void f(e eVar) {
        this.f52724b = eVar;
    }

    public final void g(AdLoadState adLoadState) {
        Intrinsics.h(adLoadState, "<set-?>");
        this.f52723a = adLoadState;
    }

    public final void h(boolean z10) {
        this.f52726d = z10;
    }

    public final void i(boolean z10) {
        this.f52725c = z10;
    }
}
