package cf;

import android.os.Build;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class s0 extends d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f17216f = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override // cf.e
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17145a.v(this);
    }

    @Override // cf.e
    public void request() {
        boolean zJ;
        if (!this.f17145a.H() || Build.VERSION.SDK_INT < 26 || this.f17145a.p() < 26) {
            finish();
            return;
        }
        if (this.f17145a.m().getPackageManager().canRequestPackageInstalls()) {
            finish();
            return;
        }
        this.f17145a.getClass();
        if (this.f17145a.f17205q == null) {
            finish();
            return;
        }
        if (d().getBoolean("android.permission.REQUEST_INSTALL_PACKAGES", false)) {
            zJ = ActivityCompat.j(this.f17145a.m(), "android.permission.REQUEST_INSTALL_PACKAGES");
        } else {
            d().putBoolean("android.permission.REQUEST_INSTALL_PACKAGES", true);
            zJ = true;
        }
        this.f17145a.E(this);
        List listQ = CollectionsKt.q("android.permission.REQUEST_INSTALL_PACKAGES");
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
