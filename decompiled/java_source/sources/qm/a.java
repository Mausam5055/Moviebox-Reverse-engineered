package qm;

import com.therouter.router.RouteItem;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    public final void a(RouteItem postcard, bg.b callback) {
        Intrinsics.h(postcard, "postcard");
        Intrinsics.h(callback, "callback");
        e.f73644a.d(postcard.getPath(), postcard.getExtras());
        callback.a(postcard);
    }
}
