package jm;

import com.transsion.lib_web.download_render.data.PageData;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f66224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PageData f66225b;

    public a(long j11, PageData remotePageData) {
        Intrinsics.h(remotePageData, "remotePageData");
        this.f66224a = j11;
        this.f66225b = remotePageData;
    }

    public final PageData a() {
        return this.f66225b;
    }

    public final long b() {
        return this.f66224a;
    }

    public final void c() {
        Iterator it = CollectionsKt.o(new e(this.f66224a, this.f66225b), new c(this.f66224a, this.f66225b)).iterator();
        while (it.hasNext()) {
            ((d) it.next()).start();
        }
    }
}
