package androidx.room;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InvalidationTracker.b f14718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f14719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f14720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f14721d;

    public o(InvalidationTracker.b observer, int[] tableIds, String[] tableNames) {
        Intrinsics.h(observer, "observer");
        Intrinsics.h(tableIds, "tableIds");
        Intrinsics.h(tableNames, "tableNames");
        this.f14718a = observer;
        this.f14719b = tableIds;
        this.f14720c = tableNames;
        if (tableIds.length != tableNames.length) {
            throw new IllegalStateException("Check failed.");
        }
        this.f14721d = !(tableNames.length == 0) ? SetsKt.d(tableNames[0]) : SetsKt.f();
    }

    public final InvalidationTracker.b a() {
        return this.f14718a;
    }

    public final int[] b() {
        return this.f14719b;
    }

    public final void c(Set invalidatedTablesIds) {
        Set setF;
        Intrinsics.h(invalidatedTablesIds, "invalidatedTablesIds");
        int[] iArr = this.f14719b;
        int length = iArr.length;
        if (length != 0) {
            int i11 = 0;
            if (length != 1) {
                Set setB = SetsKt.b();
                int[] iArr2 = this.f14719b;
                int length2 = iArr2.length;
                int i12 = 0;
                while (i11 < length2) {
                    int i13 = i12 + 1;
                    if (invalidatedTablesIds.contains(Integer.valueOf(iArr2[i11]))) {
                        setB.add(this.f14720c[i12]);
                    }
                    i11++;
                    i12 = i13;
                }
                setF = SetsKt.a(setB);
            } else {
                setF = invalidatedTablesIds.contains(Integer.valueOf(iArr[0])) ? this.f14721d : SetsKt.f();
            }
        } else {
            setF = SetsKt.f();
        }
        if (setF.isEmpty()) {
            return;
        }
        this.f14718a.c(setF);
    }

    public final void d(Set invalidatedTablesNames) {
        Set setF;
        Intrinsics.h(invalidatedTablesNames, "invalidatedTablesNames");
        int length = this.f14720c.length;
        if (length == 0) {
            setF = SetsKt.f();
        } else if (length == 1) {
            Set set = invalidatedTablesNames;
            if (!(set instanceof Collection) || !set.isEmpty()) {
                Iterator it = set.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (StringsKt.H((String) it.next(), this.f14720c[0], true)) {
                            setF = this.f14721d;
                            break;
                        }
                    } else {
                        setF = SetsKt.f();
                        break;
                    }
                }
            } else {
                setF = SetsKt.f();
                break;
            }
        } else {
            Set setB = SetsKt.b();
            Iterator it2 = invalidatedTablesNames.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                for (String str2 : this.f14720c) {
                    if (StringsKt.H(str2, str, true)) {
                        setB.add(str2);
                        break;
                    }
                }
            }
            setF = SetsKt.a(setB);
        }
        if (setF.isEmpty()) {
            return;
        }
        this.f14718a.c(setF);
    }
}
