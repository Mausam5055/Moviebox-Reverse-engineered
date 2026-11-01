package androidx.compose.ui.graphics.vector;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public final class j extends l implements Iterable, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f4844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f4845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f4846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f4847e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f4848f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f4849g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f4850h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f4851i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f4852j;

    public static final class a implements Iterator, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Iterator f4853a;

        a(j jVar) {
            this.f4853a = jVar.f4852j.iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l next() {
            return (l) this.f4853a.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4853a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public j() {
        this(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
    }

    public j(String str, float f11, float f12, float f13, float f14, float f15, float f16, float f17, List list, List list2) {
        super(null);
        this.f4843a = str;
        this.f4844b = f11;
        this.f4845c = f12;
        this.f4846d = f13;
        this.f4847e = f14;
        this.f4848f = f15;
        this.f4849g = f16;
        this.f4850h = f17;
        this.f4851i = list;
        this.f4852j = list2;
    }

    public /* synthetic */ j(String str, float f11, float f12, float f13, float f14, float f15, float f16, float f17, List list, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? 0.0f : f11, (i11 & 4) != 0 ? 0.0f : f12, (i11 & 8) != 0 ? 0.0f : f13, (i11 & 16) != 0 ? 1.0f : f14, (i11 & 32) == 0 ? f15 : 1.0f, (i11 & 64) != 0 ? 0.0f : f16, (i11 & 128) == 0 ? f17 : 0.0f, (i11 & 256) != 0 ? k.d() : list, (i11 & 512) != 0 ? CollectionsKt.l() : list2);
    }

    public final l c(int i11) {
        return (l) this.f4852j.get(i11);
    }

    public final List e() {
        return this.f4851i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof j)) {
            j jVar = (j) obj;
            return Intrinsics.c(this.f4843a, jVar.f4843a) && this.f4844b == jVar.f4844b && this.f4845c == jVar.f4845c && this.f4846d == jVar.f4846d && this.f4847e == jVar.f4847e && this.f4848f == jVar.f4848f && this.f4849g == jVar.f4849g && this.f4850h == jVar.f4850h && Intrinsics.c(this.f4851i, jVar.f4851i) && Intrinsics.c(this.f4852j, jVar.f4852j);
        }
        return false;
    }

    public final String f() {
        return this.f4843a;
    }

    public final float h() {
        return this.f4845c;
    }

    public int hashCode() {
        return (((((((((((((((((this.f4843a.hashCode() * 31) + Float.floatToIntBits(this.f4844b)) * 31) + Float.floatToIntBits(this.f4845c)) * 31) + Float.floatToIntBits(this.f4846d)) * 31) + Float.floatToIntBits(this.f4847e)) * 31) + Float.floatToIntBits(this.f4848f)) * 31) + Float.floatToIntBits(this.f4849g)) * 31) + Float.floatToIntBits(this.f4850h)) * 31) + this.f4851i.hashCode()) * 31) + this.f4852j.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new a(this);
    }

    public final float j() {
        return this.f4846d;
    }

    public final float l() {
        return this.f4844b;
    }

    public final float m() {
        return this.f4847e;
    }

    public final float n() {
        return this.f4848f;
    }

    public final int o() {
        return this.f4852j.size();
    }

    public final float p() {
        return this.f4849g;
    }

    public final float q() {
        return this.f4850h;
    }
}
