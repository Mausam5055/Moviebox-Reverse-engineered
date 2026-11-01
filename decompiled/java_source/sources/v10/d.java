package v10;

import retrofit2.j0;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f77000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Throwable f77001b;

    private d(j0 j0Var, Throwable th2) {
        this.f77000a = j0Var;
        this.f77001b = th2;
    }

    public static d a(Throwable th2) {
        if (th2 != null) {
            return new d(null, th2);
        }
        throw new NullPointerException("error == null");
    }

    public static d b(j0 j0Var) {
        if (j0Var != null) {
            return new d(j0Var, null);
        }
        throw new NullPointerException("response == null");
    }
}
