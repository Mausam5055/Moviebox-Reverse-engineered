package hs;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements gs.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final gs.c f64830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f64831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f64832c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f64833d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f64834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f64835f;

    public b(gs.c mStyle, int i11, int i12, int i13, float f11, float f12) {
        Intrinsics.h(mStyle, "mStyle");
        this.f64830a = mStyle;
        this.f64831b = i11;
        this.f64832c = i12;
        this.f64833d = i13;
        this.f64834e = f11;
        this.f64835f = f12;
    }

    @Override // gs.c
    public View createView(Context context) {
        View viewCreateView = this.f64830a.createView(context);
        Intrinsics.e(viewCreateView);
        return viewCreateView;
    }

    @Override // gs.c
    public int getGravity() {
        return this.f64831b;
    }

    @Override // gs.c
    public float getHorizontalMargin() {
        return this.f64834e;
    }

    @Override // gs.c
    public float getVerticalMargin() {
        return this.f64835f;
    }

    @Override // gs.c
    public int getXOffset() {
        return this.f64832c;
    }

    @Override // gs.c
    public int getYOffset() {
        return this.f64833d;
    }
}
