package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class w extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.serialization.b f68211a;

    private w(kotlinx.serialization.b bVar) {
        super(null);
        this.f68211a = bVar;
    }

    public /* synthetic */ w(kotlinx.serialization.b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar);
    }

    @Override // kotlinx.serialization.internal.a
    protected final void g(e00.c decoder, Object obj, int i11, int i12) {
        Intrinsics.h(decoder, "decoder");
        if (i12 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        for (int i13 = 0; i13 < i12; i13++) {
            h(decoder, i11 + i13, obj, false);
        }
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public abstract kotlinx.serialization.descriptors.f getDescriptor();

    @Override // kotlinx.serialization.internal.a
    protected void h(e00.c decoder, int i11, Object obj, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        n(obj, i11, e00.c.a.c(decoder, getDescriptor(), i11, this.f68211a, null, 8, null));
    }

    protected abstract void n(Object obj, int i11, Object obj2);

    @Override // kotlinx.serialization.g
    public void serialize(e00.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        int iE = e(obj);
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        e00.d dVarJ = encoder.j(descriptor, iE);
        Iterator itD = d(obj);
        for (int i11 = 0; i11 < iE; i11++) {
            dVarJ.C(getDescriptor(), i11, this.f68211a, itD.next());
        }
        dVarJ.c(descriptor);
    }
}
