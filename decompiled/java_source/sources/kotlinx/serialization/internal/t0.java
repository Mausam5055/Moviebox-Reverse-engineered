package kotlinx.serialization.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class t0 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.serialization.b f68200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.b f68201b;

    private t0(kotlinx.serialization.b bVar, kotlinx.serialization.b bVar2) {
        this.f68200a = bVar;
        this.f68201b = bVar2;
    }

    public /* synthetic */ t0(kotlinx.serialization.b bVar, kotlinx.serialization.b bVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, bVar2);
    }

    protected abstract Object a(Object obj);

    protected abstract Object b(Object obj);

    protected abstract Object c(Object obj, Object obj2);

    @Override // kotlinx.serialization.a
    public Object deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        e00.c cVarB = decoder.b(getDescriptor());
        if (cVarB.p()) {
            return c(e00.c.a.c(cVarB, getDescriptor(), 0, this.f68200a, null, 8, null), e00.c.a.c(cVarB, getDescriptor(), 1, this.f68201b, null, 8, null));
        }
        Object objC = d2.f68125a;
        Object objC2 = d2.f68125a;
        while (true) {
            int iO = cVarB.o(getDescriptor());
            if (iO == -1) {
                cVarB.c(getDescriptor());
                if (objC == d2.f68125a) {
                    throw new SerializationException("Element 'key' is missing");
                }
                if (objC2 != d2.f68125a) {
                    return c(objC, objC2);
                }
                throw new SerializationException("Element 'value' is missing");
            }
            if (iO == 0) {
                objC = e00.c.a.c(cVarB, getDescriptor(), 0, this.f68200a, null, 8, null);
            } else {
                if (iO != 1) {
                    throw new SerializationException("Invalid index: " + iO);
                }
                objC2 = e00.c.a.c(cVarB, getDescriptor(), 1, this.f68201b, null, 8, null);
            }
        }
    }

    @Override // kotlinx.serialization.g
    public void serialize(e00.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        e00.d dVarB = encoder.b(getDescriptor());
        dVarB.C(getDescriptor(), 0, this.f68200a, a(obj));
        dVarB.C(getDescriptor(), 1, this.f68201b, b(obj));
        dVarB.c(getDescriptor());
    }
}
