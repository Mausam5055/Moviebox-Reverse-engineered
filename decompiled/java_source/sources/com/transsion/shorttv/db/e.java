package com.transsion.shorttv.db;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f53023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f53024b;

    /* JADX WARN: Multi-variable type inference failed */
    public e() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public e(String subjectId, String unlockedEps) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(unlockedEps, "unlockedEps");
        this.f53023a = subjectId;
        this.f53024b = unlockedEps;
    }

    public /* synthetic */ e(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2);
    }

    public final String a() {
        return this.f53023a;
    }

    public final String b() {
        return this.f53024b;
    }

    public final Set c() {
        if (StringsKt.q0(this.f53024b)) {
            return new LinkedHashSet();
        }
        List listS0 = StringsKt.S0(this.f53024b, new String[]{","}, false, 0, 6, null);
        ArrayList arrayList = new ArrayList();
        Iterator it = listS0.iterator();
        while (it.hasNext()) {
            Integer numV = StringsKt.v(StringsKt.n1((String) it.next()).toString());
            if (numV != null) {
                arrayList.add(numV);
            }
        }
        return CollectionsKt.V0(arrayList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.c(this.f53023a, eVar.f53023a) && Intrinsics.c(this.f53024b, eVar.f53024b);
    }

    public int hashCode() {
        return (this.f53023a.hashCode() * 31) + this.f53024b.hashCode();
    }

    public String toString() {
        return "ShortTvAdUnlockStateBean(subjectId=" + this.f53023a + ", unlockedEps=" + this.f53024b + ")";
    }
}
