package com.transsion.ad.strategy;

/* JADX INFO: loaded from: classes5.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f42248a = new t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f42249b;

    private t() {
    }

    public final boolean a() {
        if (f42249b == null) {
            f42249b = Boolean.valueOf(f.f42232a.c().getBoolean("mmkv_key_teen_mode", false));
        }
        Boolean bool = f42249b;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final void b(boolean z10) {
        f.f42232a.c().putBoolean("mmkv_key_teen_mode", z10);
        f42249b = Boolean.valueOf(z10);
    }
}
