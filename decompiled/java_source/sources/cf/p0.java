package cf;

import android.os.Build;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class p0 extends d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f17208f = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override // cf.e
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17145a.t(this);
    }

    @Override // cf.e
    public void request() {
        boolean zJ;
        if (this.f17145a.F()) {
            if (Build.VERSION.SDK_INT < 29) {
                this.f17145a.f17194f.remove("android.permission.ACCESS_BACKGROUND_LOCATION");
                this.f17145a.f17197i.add("android.permission.ACCESS_BACKGROUND_LOCATION");
                finish();
                return;
            }
            ye.c cVar = ye.c.f78993a;
            if (cVar.f(this.f17145a.m(), "android.permission.ACCESS_BACKGROUND_LOCATION")) {
                finish();
                return;
            }
            boolean zF = cVar.f(this.f17145a.m(), "android.permission.ACCESS_FINE_LOCATION");
            boolean zF2 = cVar.f(this.f17145a.m(), "android.permission.ACCESS_COARSE_LOCATION");
            if (zF || zF2) {
                this.f17145a.getClass();
                if (this.f17145a.f17205q == null) {
                    a(CollectionsKt.l());
                    return;
                }
                if (d().getBoolean("android.permission.ACCESS_BACKGROUND_LOCATION", false)) {
                    zJ = ActivityCompat.j(this.f17145a.m(), "android.permission.ACCESS_BACKGROUND_LOCATION");
                } else {
                    d().putBoolean("android.permission.ACCESS_BACKGROUND_LOCATION", true);
                    zJ = true;
                }
                this.f17145a.E(this);
                List listQ = CollectionsKt.q("android.permission.ACCESS_BACKGROUND_LOCATION");
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
