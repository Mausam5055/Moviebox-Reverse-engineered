package la;

import android.os.Bundle;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class o implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f68795c = new com.google.android.exoplayer2.k.a() { // from class: la.n
        @Override // com.google.android.exoplayer2.k.a
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return o.d(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TrackGroup f68796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f68797b;

    public o(TrackGroup trackGroup, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= trackGroup.f25673a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f68796a = trackGroup;
        this.f68797b = ImmutableList.copyOf((Collection) list);
    }

    private static String c(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o d(Bundle bundle) {
        return new o((TrackGroup) TrackGroup.f25672f.a((Bundle) com.google.android.exoplayer2.util.a.e(bundle.getBundle(c(0)))), Ints.c((int[]) com.google.android.exoplayer2.util.a.e(bundle.getIntArray(c(1)))));
    }

    public int b() {
        return this.f68796a.f25675c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return this.f68796a.equals(oVar.f68796a) && this.f68797b.equals(oVar.f68797b);
    }

    public int hashCode() {
        return this.f68796a.hashCode() + (this.f68797b.hashCode() * 31);
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBundle(c(0), this.f68796a.toBundle());
        bundle.putIntArray(c(1), Ints.o(this.f68797b));
        return bundle;
    }
}
