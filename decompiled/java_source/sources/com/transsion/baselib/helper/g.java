package com.transsion.baselib.helper;

import android.content.Context;
import android.view.OrientationEventListener;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends OrientationEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f43270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f43271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f43272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f43273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f43274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f43275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f43276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f43277h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context, Function1 callback) {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        this.f43270a = callback;
        this.f43271b = 500;
        this.f43273d = -1;
        this.f43274e = 1;
        this.f43275f = 2;
        this.f43276g = 3;
        this.f43277h = 4;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i11) {
        if (i11 == -1 || System.currentTimeMillis() - this.f43272c < this.f43271b) {
            return;
        }
        this.f43272c = System.currentTimeMillis();
        if (i11 >= 335 || i11 < 25) {
            int i12 = this.f43273d;
            int i13 = this.f43274e;
            if (i12 != i13) {
                this.f43273d = i13;
                this.f43270a.invoke(Boolean.TRUE);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("竖屏：");
            sb2.append(i11);
            return;
        }
        if (65 <= i11 && i11 < 116) {
            int i14 = this.f43273d;
            int i15 = this.f43275f;
            if (i14 != i15) {
                this.f43273d = i15;
                this.f43270a.invoke(Boolean.FALSE);
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("横屏：");
            sb3.append(i11);
            return;
        }
        if (155 <= i11 && i11 < 206) {
            int i16 = this.f43273d;
            int i17 = this.f43276g;
            if (i16 != i17) {
                this.f43273d = i17;
                this.f43270a.invoke(Boolean.TRUE);
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("反向-竖屏：");
            sb4.append(i11);
            return;
        }
        if (245 > i11 || i11 >= 296) {
            return;
        }
        int i18 = this.f43273d;
        int i19 = this.f43277h;
        if (i18 != i19) {
            this.f43273d = i19;
            this.f43270a.invoke(Boolean.FALSE);
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("反向-横屏：");
        sb5.append(i11);
    }
}
