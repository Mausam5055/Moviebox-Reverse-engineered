package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f22801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f22802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g4 f22803c;

    public o0(Activity activity, View rootView, g4 helper) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(helper, "helper");
        this.f22801a = activity;
        this.f22802b = rootView;
        this.f22803c = helper;
    }

    public final Activity a() {
        return this.f22801a;
    }

    public abstract void b(ImageView imageView, float f11);

    public abstract void c(HSChronometer hSChronometer);

    public abstract void d(AdsDTO adsDTO);

    public abstract void e(boolean z10, DownUpPointBean downUpPointBean, View view);

    public final g4 f() {
        return this.f22803c;
    }

    public final View g() {
        return this.f22802b;
    }

    public abstract void h();

    public abstract void i();

    public abstract void j();

    public abstract void k();

    public abstract void l();
}
