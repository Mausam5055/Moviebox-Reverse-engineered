package com.google.android.libraries.places.internal;

import android.content.Context;
import com.google.android.datatransport.runtime.t;
import r8.d;
import r8.f;
import r8.g;
import r8.h;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkf implements zzkg {
    private static final Integer zza = 79508299;
    private final h zzb;

    public zzkf(Context context) {
        t.f(context.getApplicationContext());
        this.zzb = t.c().h("cct").a("LE", zzsm.class, new g() { // from class: com.google.android.libraries.places.internal.zzke
            @Override // r8.g
            public final Object apply(Object obj) {
                return ((zzsm) obj).zzao();
            }
        });
    }

    @Override // com.google.android.libraries.places.internal.zzkg
    public final void zza(zzsm zzsmVar) {
        this.zzb.b(d.g(zzsmVar, f.b(zza)));
    }
}
