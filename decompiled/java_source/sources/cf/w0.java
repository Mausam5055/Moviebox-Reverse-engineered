package cf;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class w0 extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override // cf.e
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17145a.z(this);
    }

    @Override // cf.e
    public void request() {
        if (this.f17145a.K()) {
            if (ye.c.f78993a.c(this.f17145a.m())) {
                finish();
                return;
            }
            this.f17145a.getClass();
            o0 o0Var = this.f17145a;
            if (o0Var.f17205q != null) {
                o0Var.E(this);
                List listQ = CollectionsKt.q("android.permission.PICTURE_IN_PICTURE");
                o0 o0Var2 = this.f17145a;
                ze.b bVar = o0Var2.f17205q;
                if (bVar != null) {
                    Intrinsics.e(bVar);
                    bVar.a(b(), listQ, true, true);
                    return;
                } else {
                    o0Var2.getClass();
                    Intrinsics.e(null);
                    b();
                    throw null;
                }
            }
        }
        finish();
    }
}
