package mt;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements lt.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final lt.c f69987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f69988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f69989c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f69990d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f69991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f69992f;

    public b(lt.c mStyle, int i11, int i12, int i13, float f11, float f12) {
        Intrinsics.h(mStyle, "mStyle");
        this.f69987a = mStyle;
        this.f69988b = i11;
        this.f69989c = i12;
        this.f69990d = i13;
        this.f69991e = f11;
        this.f69992f = f12;
    }

    @Override // lt.c
    public View createView(Context context) {
        View viewCreateView = this.f69987a.createView(context);
        Intrinsics.e(viewCreateView);
        return viewCreateView;
    }

    @Override // lt.c
    public int getGravity() {
        return this.f69988b;
    }

    @Override // lt.c
    public float getHorizontalMargin() {
        return this.f69991e;
    }

    @Override // lt.c
    public float getVerticalMargin() {
        return this.f69992f;
    }

    @Override // lt.c
    public int getXOffset() {
        return this.f69989c;
    }

    @Override // lt.c
    public int getYOffset() {
        return this.f69990d;
    }
}
