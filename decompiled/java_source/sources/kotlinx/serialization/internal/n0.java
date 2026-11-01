package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class n0 extends PluginGeneratedSerialDescriptor {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f68172m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(String name, i0 generatedSerializer) {
        super(name, generatedSerializer, 1);
        Intrinsics.h(name, "name");
        Intrinsics.h(generatedSerializer, "generatedSerializer");
        this.f68172m = true;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n0) {
            kotlinx.serialization.descriptors.f fVar = (kotlinx.serialization.descriptors.f) obj;
            if (Intrinsics.c(i(), fVar.i())) {
                n0 n0Var = (n0) obj;
                if (n0Var.isInline() && Arrays.equals(p(), n0Var.p()) && e() == fVar.e()) {
                    int iE = e();
                    for (int i11 = 0; i11 < iE; i11++) {
                        if (Intrinsics.c(h(i11).i(), fVar.h(i11).i()) && Intrinsics.c(h(i11).d(), fVar.h(i11).d())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public int hashCode() {
        return super.hashCode() * 31;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.f
    public boolean isInline() {
        return this.f68172m;
    }
}
