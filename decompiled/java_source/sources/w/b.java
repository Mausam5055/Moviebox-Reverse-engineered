package w;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f77486a;

    public b() {
        this(0, 1, null);
    }

    public b(int i11) {
        this.f77486a = i11;
    }

    public /* synthetic */ b(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    public final int a() {
        return this.f77486a;
    }

    public final void b(int i11) {
        this.f77486a += i11;
    }

    public final void c(int i11) {
        this.f77486a = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f77486a == ((b) obj).f77486a;
    }

    public int hashCode() {
        return this.f77486a;
    }

    public String toString() {
        return "DeltaCounter(count=" + this.f77486a + ')';
    }
}
