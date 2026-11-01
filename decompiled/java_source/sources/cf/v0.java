package cf;

import android.os.Build;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class v0 extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override // cf.e
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17145a.x(this);
    }

    @Override // cf.e
    public void request() {
        boolean zJ;
        if (this.f17145a.J()) {
            if (ye.c.f78993a.b(this.f17145a.m())) {
                finish();
                return;
            }
            this.f17145a.getClass();
            if (this.f17145a.f17205q != null) {
                boolean z10 = d().getBoolean("android.permission.POST_NOTIFICATIONS", false);
                if (Build.VERSION.SDK_INT < 33) {
                    zJ = true;
                } else if (z10) {
                    zJ = ActivityCompat.j(this.f17145a.m(), "android.permission.POST_NOTIFICATIONS");
                } else {
                    d().putBoolean("android.permission.POST_NOTIFICATIONS", true);
                    zJ = true;
                }
                this.f17145a.E(this);
                List listQ = CollectionsKt.q("android.permission.POST_NOTIFICATIONS");
                o0 o0Var = this.f17145a;
                ze.b bVar = o0Var.f17205q;
                if (bVar != null) {
                    Intrinsics.e(bVar);
                    bVar.a(b(), listQ, true, !zJ);
                    return;
                } else {
                    o0Var.getClass();
                    Intrinsics.e(null);
                    b();
                    throw null;
                }
            }
        }
        finish();
    }
}
