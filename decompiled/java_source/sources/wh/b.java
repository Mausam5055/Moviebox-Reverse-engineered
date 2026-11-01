package wh;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements vh.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final vh.c f77680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f77681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f77682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f77683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f77684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f77685f;

    public b(vh.c mStyle, int i11, int i12, int i13, float f11, float f12) {
        Intrinsics.h(mStyle, "mStyle");
        this.f77680a = mStyle;
        this.f77681b = i11;
        this.f77682c = i12;
        this.f77683d = i13;
        this.f77684e = f11;
        this.f77685f = f12;
    }

    @Override // vh.c
    public View createView(Context context) {
        View viewCreateView = this.f77680a.createView(context);
        Intrinsics.e(viewCreateView);
        return viewCreateView;
    }

    @Override // vh.c
    public int getGravity() {
        return this.f77681b;
    }

    @Override // vh.c
    public float getHorizontalMargin() {
        return this.f77684e;
    }

    @Override // vh.c
    public float getVerticalMargin() {
        return this.f77685f;
    }

    @Override // vh.c
    public int getXOffset() {
        return this.f77682c;
    }

    @Override // vh.c
    public int getYOffset() {
        return this.f77683d;
    }
}
