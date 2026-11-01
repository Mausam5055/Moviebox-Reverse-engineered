package kotlinx.serialization.json.internal;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class q extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f68340c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(h0 writer, boolean z10) {
        super(writer);
        Intrinsics.h(writer, "writer");
        this.f68340c = z10;
    }

    @Override // kotlinx.serialization.json.internal.j
    public void d(byte b11) {
        boolean z10 = this.f68340c;
        String strF = UByte.f(UByte.b(b11));
        if (z10) {
            m(strF);
        } else {
            j(strF);
        }
    }

    @Override // kotlinx.serialization.json.internal.j
    public void h(int i11) {
        boolean z10 = this.f68340c;
        int iB = UInt.b(i11);
        if (z10) {
            m(Long.toString(((long) iB) & 4294967295L, 10));
        } else {
            j(Long.toString(((long) iB) & 4294967295L, 10));
        }
    }

    @Override // kotlinx.serialization.json.internal.j
    public void i(long j11) {
        boolean z10 = this.f68340c;
        long jB = ULong.b(j11);
        if (z10) {
            m(o.a(jB, 10));
        } else {
            j(p.a(jB, 10));
        }
    }

    @Override // kotlinx.serialization.json.internal.j
    public void k(short s11) {
        boolean z10 = this.f68340c;
        String strF = UShort.f(UShort.b(s11));
        if (z10) {
            m(strF);
        } else {
            j(strF);
        }
    }
}
