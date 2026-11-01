package cf;

import android.provider.Settings;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class y0 extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override // cf.e
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17145a.B(this);
    }

    @Override // cf.e
    public void request() {
        boolean zJ;
        if (!this.f17145a.M()) {
            finish();
            return;
        }
        if (this.f17145a.p() < 23) {
            this.f17145a.f17198j.add("android.permission.WRITE_SETTINGS");
            this.f17145a.f17194f.remove("android.permission.WRITE_SETTINGS");
            finish();
            return;
        }
        if (Settings.System.canWrite(this.f17145a.m())) {
            finish();
            return;
        }
        this.f17145a.getClass();
        if (this.f17145a.f17205q == null) {
            finish();
            return;
        }
        if (d().getBoolean("android.permission.WRITE_SETTINGS", false)) {
            zJ = ActivityCompat.j(this.f17145a.m(), "android.permission.WRITE_SETTINGS");
        } else {
            d().putBoolean("android.permission.WRITE_SETTINGS", true);
            zJ = true;
        }
        this.f17145a.E(this);
        List listQ = CollectionsKt.q("android.permission.WRITE_SETTINGS");
        o0 o0Var = this.f17145a;
        ze.b bVar = o0Var.f17205q;
        if (bVar != null) {
            Intrinsics.e(bVar);
            bVar.a(b(), listQ, true, !zJ);
        } else {
            o0Var.getClass();
            Intrinsics.e(null);
            b();
            throw null;
        }
    }
}
