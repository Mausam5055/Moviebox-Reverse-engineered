package androidx.room;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f14652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f14653c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f14654a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f14655b;

        public a(boolean z10, String str) {
            this.f14654a = z10;
            this.f14655b = str;
        }
    }

    public d0(int i11, String identityHash, String legacyIdentityHash) {
        Intrinsics.h(identityHash, "identityHash");
        Intrinsics.h(legacyIdentityHash, "legacyIdentityHash");
        this.f14651a = i11;
        this.f14652b = identityHash;
        this.f14653c = legacyIdentityHash;
    }

    public abstract void a(z3.b bVar);

    public abstract void b(z3.b bVar);

    public final String c() {
        return this.f14652b;
    }

    public final String d() {
        return this.f14653c;
    }

    public final int e() {
        return this.f14651a;
    }

    public abstract void f(z3.b bVar);

    public abstract void g(z3.b bVar);

    public abstract void h(z3.b bVar);

    public abstract void i(z3.b bVar);

    public abstract a j(z3.b bVar);
}
