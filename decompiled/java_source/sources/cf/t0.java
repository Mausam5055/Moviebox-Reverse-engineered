package cf;

import android.os.Build;
import android.os.Environment;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class t0 extends d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f17218f = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override // cf.e
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f17145a.w(this);
    }

    @Override // cf.e
    public void request() {
        boolean zJ;
        if (!this.f17145a.I() || Build.VERSION.SDK_INT < 30) {
            finish();
            return;
        }
        if (Environment.isExternalStorageManager()) {
            finish();
            return;
        }
        this.f17145a.getClass();
        if (this.f17145a.f17205q == null) {
            finish();
            return;
        }
        if (d().getBoolean("android.permission.MANAGE_EXTERNAL_STORAGE", false)) {
            zJ = ActivityCompat.j(this.f17145a.m(), "android.permission.MANAGE_EXTERNAL_STORAGE");
        } else {
            d().putBoolean("android.permission.MANAGE_EXTERNAL_STORAGE", true);
            zJ = true;
        }
        this.f17145a.E(this);
        List listQ = CollectionsKt.q("android.permission.MANAGE_EXTERNAL_STORAGE");
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
