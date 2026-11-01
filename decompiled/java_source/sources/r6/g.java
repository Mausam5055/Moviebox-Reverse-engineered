package r6;

import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BaseQuickAdapter f74163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p6.g f74164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f74165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f74166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f74167e;

    public g(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        this.f74163a = baseQuickAdapter;
        this.f74167e = 1;
    }

    public final void a(int i11) {
        p6.g gVar;
        if (!this.f74165c || this.f74166d || i11 > this.f74167e || (gVar = this.f74164b) == null) {
            return;
        }
        gVar.a();
    }

    public void b(p6.g gVar) {
        this.f74164b = gVar;
    }

    public final void c(int i11) {
        this.f74167e = i11;
    }

    public final void d(boolean z10) {
        this.f74165c = z10;
    }

    public final void e(boolean z10) {
        this.f74166d = z10;
    }
}
