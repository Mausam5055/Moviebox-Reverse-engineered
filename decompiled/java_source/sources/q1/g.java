package q1;

import androidx.p009lifecycle.m;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f73051a = new g();

    public static final class a implements p1.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f73052a = new a();

        private a() {
        }
    }

    private g() {
    }

    public final p1.a a(y0 owner) {
        Intrinsics.h(owner, "owner");
        return owner instanceof m ? ((m) owner).getDefaultViewModelCreationExtras() : p1.a.C0880a.f72270b;
    }

    public final v0.c b(y0 owner) {
        Intrinsics.h(owner, "owner");
        return owner instanceof m ? ((m) owner).getDefaultViewModelProviderFactory() : c.f73045a;
    }

    public final String c(KClass modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        String strA = h.a(modelClass);
        if (strA == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return "androidx.lifecycle.ViewModelProvider.DefaultKey:" + strA;
    }

    public final t0 d() {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }
}
