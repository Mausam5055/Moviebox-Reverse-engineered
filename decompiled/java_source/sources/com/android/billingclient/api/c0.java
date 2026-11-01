package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzaf;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class c0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f19044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ u f19045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ i f19046c;

    c0(i iVar, String str, u uVar) {
        this.f19046c = iVar;
        this.f19044a = str;
        this.f19045b = uVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        e1 e1VarE = i.E(this.f19046c, this.f19044a, 9);
        if (e1VarE.b() != null) {
            this.f19045b.a(e1VarE.a(), e1VarE.b());
            return null;
        }
        this.f19045b.a(e1VarE.a(), zzaf.zzk());
        return null;
    }
}
