package q;

import kotlin.jvm.internal.DefaultConstructorMarker;
import o0.i;

/* JADX INFO: loaded from: classes2.dex */
final class d implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f73040a;

    private d(float f11) {
        this.f73040a = f11;
    }

    public /* synthetic */ d(float f11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11);
    }

    @Override // q.b
    public float a(long j11, o0.e eVar) {
        return eVar.E0(this.f73040a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && i.i(this.f73040a, ((d) obj).f73040a);
    }

    public int hashCode() {
        return i.j(this.f73040a);
    }

    public String toString() {
        return "CornerSize(size = " + this.f73040a + ".dp)";
    }
}
