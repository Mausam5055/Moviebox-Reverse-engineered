package cf;

import androidx.core.app.ActivityCompat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class u0 extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override // cf.e
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        HashSet hashSet = new HashSet(this.f17145a.f17198j);
        hashSet.addAll(permissions);
        if (hashSet.isEmpty()) {
            finish();
        } else {
            this.f17145a.y(hashSet, this);
        }
    }

    @Override // cf.e
    public void request() {
        boolean zJ;
        ArrayList arrayList = new ArrayList();
        for (String str : this.f17145a.f17193e) {
            if (ye.c.f78993a.f(this.f17145a.m(), str)) {
                this.f17145a.f17198j.add(str);
            } else {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            finish();
            return;
        }
        o0 o0Var = this.f17145a;
        if (o0Var.f17195g) {
            o0Var.getClass();
            if (this.f17145a.f17205q != null) {
                if (arrayList.size() == 1) {
                    Object obj = arrayList.get(0);
                    Intrinsics.g(obj, "get(...)");
                    String str2 = (String) obj;
                    if (d().getBoolean(str2, false)) {
                        zJ = ActivityCompat.j(this.f17145a.m(), str2);
                    } else {
                        d().putBoolean(str2, true);
                        zJ = true;
                    }
                } else {
                    zJ = true;
                }
                o0 o0Var2 = this.f17145a;
                o0Var2.f17195g = false;
                o0Var2.f17199k.addAll(arrayList);
                this.f17145a.E(this);
                o0 o0Var3 = this.f17145a;
                ze.b bVar = o0Var3.f17205q;
                if (bVar != null) {
                    Intrinsics.e(bVar);
                    bVar.a(b(), arrayList, true, !zJ);
                    return;
                } else {
                    o0Var3.getClass();
                    Intrinsics.e(null);
                    b();
                    throw null;
                }
            }
        }
        o0 o0Var4 = this.f17145a;
        o0Var4.y(o0Var4.f17193e, this);
    }
}
