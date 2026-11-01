package kotlin.uuid;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
class a {
    public static final void a(long j11, byte[] dst, int i11, int i12, int i13) {
        Intrinsics.h(dst, "dst");
        b.d(j11, dst, i11, i12, i13);
    }

    public static final Object b(Uuid uuid) {
        Intrinsics.h(uuid, "uuid");
        return new UuidSerialized(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    public static final void c(byte[] bArr, int i11, long j11) {
        Intrinsics.h(bArr, "<this>");
        b.e(bArr, i11, j11);
    }
}
