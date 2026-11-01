package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import mb.h;
import mb.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
@KeepForSdk
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    @KeepForSdk
    public List<mb.c> getComponents() {
        return Arrays.asList(mb.c.c(kb.a.class).b(r.k(com.google.firebase.f.class)).b(r.k(Context.class)).b(r.k(fc.d.class)).f(new h() { // from class: com.google.firebase.analytics.connector.internal.b
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return kb.b.h((com.google.firebase.f) eVar.a(com.google.firebase.f.class), (Context) eVar.a(Context.class), (fc.d) eVar.a(fc.d.class));
            }
        }).e().d(), xc.h.b("fire-analytics", "22.1.2"));
    }
}
