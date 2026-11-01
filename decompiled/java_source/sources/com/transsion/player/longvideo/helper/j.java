package com.transsion.player.longvideo.helper;

import android.util.Log;
import android.view.ViewGroup;
import com.transsion.player.longvideo.ui.LongVodUiType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f47998e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ho.j f47999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f48000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f48001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f48002d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public j(ho.j viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        this.f47999a = viewBinding;
        this.f48000b = com.blankj.utilcode.util.y.c();
        int iE = com.blankj.utilcode.util.y.e();
        this.f48001c = iE;
        int i11 = this.f48000b;
        if (iE < i11) {
            this.f48001c = i11;
            this.f48000b = iE;
        }
        int iA = com.blankj.utilcode.util.d.a();
        if (iA > 10) {
            this.f48001c -= iA;
        }
    }

    public final int a() {
        return this.f48002d;
    }

    public final void b(int i11, int i12) {
        com.blankj.utilcode.util.d.c();
    }

    public final void c() {
        this.f48002d = 0;
    }

    public final void d(LongVodUiType uiType, int i11) {
        Intrinsics.h(uiType, "uiType");
        if (this.f48002d == 0) {
            this.f48002d = com.blankj.utilcode.util.d.c();
        }
        LongVodUiType longVodUiType = LongVodUiType.LAND;
        int i12 = 0;
        int i13 = (uiType == longVodUiType && i11 == 1) ? this.f48002d : 0;
        if (uiType == longVodUiType && i11 == 3) {
            i12 = this.f48002d;
        }
        Log.e("LongVodLandSpace", "setSpace  uiType:" + uiType + "  rotation:" + i11 + "  spaceLeft:" + i13 + "  spaceRight:" + i12);
        ViewGroup.LayoutParams layoutParams = this.f47999a.f64620j.f64609i.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = this.f47999a.f64618h.C.getLayoutParams();
        layoutParams.width = i13;
        layoutParams2.width = i13;
        this.f47999a.f64620j.f64609i.setLayoutParams(layoutParams);
        this.f47999a.f64618h.C.setLayoutParams(layoutParams2);
        ViewGroup.LayoutParams layoutParams3 = this.f47999a.f64620j.f64608h.getLayoutParams();
        ViewGroup.LayoutParams layoutParams4 = this.f47999a.f64618h.B.getLayoutParams();
        layoutParams3.width = i12;
        layoutParams4.width = i12;
        this.f47999a.f64620j.f64608h.setLayoutParams(layoutParams3);
        this.f47999a.f64618h.B.setLayoutParams(layoutParams4);
    }
}
