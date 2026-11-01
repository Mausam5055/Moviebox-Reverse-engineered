package com.google.firebase.remoteconfig.internal;

/* JADX INFO: loaded from: classes4.dex */
public class t implements yc.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f32572b;

    t(String str, int i11) {
        this.f32571a = str;
        this.f32572b = i11;
    }

    private String f() {
        return b().trim();
    }

    private void g() {
        if (this.f32571a == null) {
            throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
        }
    }

    @Override // yc.k
    public int a() {
        return this.f32572b;
    }

    @Override // yc.k
    public String b() {
        if (this.f32572b == 0) {
            return "";
        }
        g();
        return this.f32571a;
    }

    @Override // yc.k
    public long c() {
        if (this.f32572b == 0) {
            return 0L;
        }
        String strF = f();
        try {
            return Long.valueOf(strF).longValue();
        } catch (NumberFormatException e11) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", strF, "long"), e11);
        }
    }

    @Override // yc.k
    public double d() {
        if (this.f32572b == 0) {
            return 0.0d;
        }
        String strF = f();
        try {
            return Double.valueOf(strF).doubleValue();
        } catch (NumberFormatException e11) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", strF, "double"), e11);
        }
    }

    @Override // yc.k
    public boolean e() {
        if (this.f32572b == 0) {
            return false;
        }
        String strF = f();
        if (m.f32531f.matcher(strF).matches()) {
            return true;
        }
        if (m.f32532g.matcher(strF).matches()) {
            return false;
        }
        throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", strF, "boolean"));
    }
}
