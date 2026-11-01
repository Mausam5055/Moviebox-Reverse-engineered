package com.google.firebase.perf.util;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final sc.a f32367b = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f32368a;

    public d() {
        this(new Bundle());
    }

    public d(Bundle bundle) {
        this.f32368a = (Bundle) bundle.clone();
    }

    private e d(String str) {
        if (!a(str)) {
            return e.a();
        }
        try {
            return e.b((Integer) this.f32368a.get(str));
        } catch (ClassCastException e11) {
            f32367b.b("Metadata key %s contains type other than int: %s", str, e11.getMessage());
            return e.a();
        }
    }

    public boolean a(String str) {
        return str != null && this.f32368a.containsKey(str);
    }

    public e b(String str) {
        if (!a(str)) {
            return e.a();
        }
        try {
            return e.b((Boolean) this.f32368a.get(str));
        } catch (ClassCastException e11) {
            f32367b.b("Metadata key %s contains type other than boolean: %s", str, e11.getMessage());
            return e.a();
        }
    }

    public e c(String str) {
        Object obj;
        if (a(str) && (obj = this.f32368a.get(str)) != null) {
            if (obj instanceof Float) {
                return e.e(Double.valueOf(((Float) obj).doubleValue()));
            }
            if (obj instanceof Double) {
                return e.e((Double) obj);
            }
            f32367b.b("Metadata key %s contains type other than double: %s", str);
            return e.a();
        }
        return e.a();
    }

    public e e(String str) {
        e eVarD = d(str);
        return eVarD.d() ? e.e(Long.valueOf(((Integer) eVarD.c()).intValue())) : e.a();
    }
}
