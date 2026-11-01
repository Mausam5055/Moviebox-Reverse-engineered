package com.transsion.postdetail.shorttv.factory;

import android.app.Activity;
import android.view.MotionEvent;
import com.therouter.TheRouter;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.room.api.IFloatingApi;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements qs.j {
    @Override // qs.j
    public void a(WeakReference refer) {
        Intrinsics.h(refer, "refer");
        IFloatingApi iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
        if (iFloatingApi != null) {
            iFloatingApi.g(refer);
        }
    }

    @Override // qs.j
    public void b() {
        IFloatingApi iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
        if (iFloatingApi != null) {
            iFloatingApi.b();
        }
    }

    @Override // qs.j
    public void c(Activity activity, MotionEvent event) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(event, "event");
        MusicFloatManager.f43454h.b().i(activity, event);
    }

    @Override // qs.j
    public void d() {
        MusicFloatManager.f43454h.b().B(null);
        com.transsion.player.mediasession.h.f48399a.p();
    }

    @Override // qs.j
    public void e(WeakReference refer) {
        Intrinsics.h(refer, "refer");
        IFloatingApi iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
        if (iFloatingApi != null) {
            iFloatingApi.i(refer);
        }
    }
}
