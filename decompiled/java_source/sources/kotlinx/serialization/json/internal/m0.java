package kotlinx.serialization.json.internal;

import java.util.Set;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set f68336a = SetsKt.j(d00.a.u(UInt.INSTANCE).getDescriptor(), d00.a.v(ULong.INSTANCE).getDescriptor(), d00.a.t(UByte.INSTANCE).getDescriptor(), d00.a.w(UShort.INSTANCE).getDescriptor());

    public static final boolean a(kotlinx.serialization.descriptors.f fVar) {
        Intrinsics.h(fVar, "<this>");
        return fVar.isInline() && f68336a.contains(fVar);
    }
}
