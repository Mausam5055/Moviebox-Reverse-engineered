package com.google.android.libraries.places.internal;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w0;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes4.dex */
public final class zzll implements v0.c {
    private final zzla zza;
    private final zzlq zzb;
    private final zzlr zzc;

    public zzll(zzla zzlaVar, zzlq zzlqVar, zzlr zzlrVar) {
        this.zza = zzlaVar;
        this.zzb = zzlqVar;
        this.zzc = zzlrVar;
    }

    @Override // androidx.lifecycle.v0.c
    public final t0 create(Class cls) {
        zzmt.zzf(cls == zzln.class, "This factory can only be used to instantiate its enclosing class.");
        return new zzln(this.zza, this.zzb, this.zzc, null);
    }

    @Override // androidx.lifecycle.v0.c
    public final t0 create(Class cls, p1.a aVar) {
        return create(cls);
    }

    @Override // androidx.lifecycle.v0.c
    public /* bridge */ /* synthetic */ t0 create(KClass kClass, p1.a aVar) {
        return w0.c(this, kClass, aVar);
    }
}
