package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f9977c = a1.C0(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f9978d = a1.C0(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f0 f9979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f9980b;

    public g0(f0 f0Var, int i11) {
        this(f0Var, ImmutableList.of(Integer.valueOf(i11)));
    }

    public g0(f0 f0Var, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= f0Var.f9971a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f9979a = f0Var;
        this.f9980b = ImmutableList.copyOf((Collection) list);
    }

    public int a() {
        return this.f9979a.f9973c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g0.class != obj.getClass()) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.f9979a.equals(g0Var.f9979a) && this.f9980b.equals(g0Var.f9980b);
    }

    public int hashCode() {
        return this.f9979a.hashCode() + (this.f9980b.hashCode() * 31);
    }
}
