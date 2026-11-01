package kx;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f68401a = new a();

    private a() {
    }

    public final void a(String msg) {
        Intrinsics.h(msg, "msg");
    }

    public final void b(String msg) {
        Intrinsics.h(msg, "msg");
        Log.e("m_d_log", msg);
    }

    public final void c(String msg) {
        Intrinsics.h(msg, "msg");
        Log.w("m_d_log", msg);
    }
}
