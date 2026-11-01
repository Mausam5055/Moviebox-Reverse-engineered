package kotlin.ranges;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
final class f implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f67374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f67375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f67376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f67377d;

    private f(int i11, int i12, int i13) {
        this.f67374a = i12;
        boolean z10 = false;
        int iCompare = Integer.compare(i11 ^ Integer.MIN_VALUE, i12 ^ Integer.MIN_VALUE);
        if (i13 <= 0 ? iCompare >= 0 : iCompare <= 0) {
            z10 = true;
        }
        this.f67375b = z10;
        this.f67376c = UInt.b(i13);
        this.f67377d = this.f67375b ? i11 : i12;
    }

    public /* synthetic */ f(int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, i12, i13);
    }

    public int a() {
        int i11 = this.f67377d;
        if (i11 != this.f67374a) {
            this.f67377d = UInt.b(this.f67376c + i11);
        } else {
            if (!this.f67375b) {
                throw new NoSuchElementException();
            }
            this.f67375b = false;
        }
        return i11;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67375b;
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return UInt.a(a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
