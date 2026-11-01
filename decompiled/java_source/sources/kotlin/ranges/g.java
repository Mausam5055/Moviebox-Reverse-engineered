package kotlin.ranges;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
final class g implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f67378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f67379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f67380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f67381d;

    private g(long j11, long j12, long j13) {
        this.f67378a = j12;
        boolean z10 = false;
        if (j13 <= 0 ? Long.compare(j11 ^ Long.MIN_VALUE, j12 ^ Long.MIN_VALUE) >= 0 : Long.compare(j11 ^ Long.MIN_VALUE, j12 ^ Long.MIN_VALUE) <= 0) {
            z10 = true;
        }
        this.f67379b = z10;
        this.f67380c = ULong.b(j13);
        this.f67381d = this.f67379b ? j11 : j12;
    }

    public /* synthetic */ g(long j11, long j12, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13);
    }

    public long a() {
        long j11 = this.f67381d;
        if (j11 != this.f67378a) {
            this.f67381d = ULong.b(this.f67380c + j11);
        } else {
            if (!this.f67379b) {
                throw new NoSuchElementException();
            }
            this.f67379b = false;
        }
        return j11;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67379b;
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return ULong.a(a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
