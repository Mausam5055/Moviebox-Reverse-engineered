package com.transsnet.flow.event;

import android.app.Application;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f60254a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Application f60255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f60256c;

    private b() {
    }

    public final Application a() {
        Application application = f60255b;
        if (application != null) {
            return application;
        }
        Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
        return null;
    }

    public final c b() {
        return f60256c;
    }

    public final void c(Application application) {
        Intrinsics.h(application, "application");
        f60254a.d(application);
        f60256c = new d();
    }

    public final void d(Application application) {
        Intrinsics.h(application, "<set-?>");
        f60255b = application;
    }
}
