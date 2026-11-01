package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.widget.video.AdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AdsDTO f21567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference f21568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference f21569c;

    public a5(AdsDTO key, AdVideoView view, e5 measureListener) {
        Intrinsics.h(key, "key");
        Intrinsics.h(view, "view");
        Intrinsics.h(measureListener, "measureListener");
        this.f21567a = key;
        this.f21568b = new WeakReference(view);
        this.f21569c = new WeakReference(measureListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(e5 e5Var, AdVideoView adVideoView) {
        e5Var.a(VideoMeasureManager.INSTANCE.d(adVideoView));
    }

    public final AdsDTO b() {
        return this.f21567a;
    }

    public final void d() {
        final AdVideoView adVideoView = (AdVideoView) this.f21568b.get();
        final e5 e5Var = (e5) this.f21569c.get();
        if (adVideoView == null || e5Var == null) {
            return;
        }
        Preconditions.d(new Preconditions.a() { // from class: com.cloud.hisavana.sdk.z4
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                a5.c(e5Var, adVideoView);
            }
        });
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.c(a5.class, obj != null ? obj.getClass() : null)) {
            return (obj instanceof a5) && Intrinsics.c(this.f21567a, ((a5) obj).f21567a);
        }
        return false;
    }

    public int hashCode() {
        return this.f21567a.hashCode();
    }
}
