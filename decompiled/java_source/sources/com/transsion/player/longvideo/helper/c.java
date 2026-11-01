package com.transsion.player.longvideo.helper;

import com.transsion.player.longvideo.ui.LongVodUiType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ho.j f47974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f47975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f47976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f47977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f47978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f47979f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f47980g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f47981h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LongVodUiType f47982i;

    public c(ho.j viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        this.f47974a = viewBinding;
        this.f47975b = 200L;
        this.f47976c = com.blankj.utilcode.util.a0.a(24.0f);
        this.f47977d = com.blankj.utilcode.util.a0.a(16.0f);
        this.f47978e = com.blankj.utilcode.util.a0.a(20.0f);
        this.f47979f = 1.0f;
        this.f47981h = true;
        this.f47982i = LongVodUiType.MIDDLE;
    }

    public final void a() {
    }

    public final boolean b() {
        return this.f47980g;
    }

    public final void c(LongVodUiType uiType) {
        Intrinsics.h(uiType, "uiType");
    }

    public final void d() {
    }

    public final void e(long j11, long j12) {
    }

    public final void f() {
    }
}
