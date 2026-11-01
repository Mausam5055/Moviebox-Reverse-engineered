package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class r1 extends w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68194b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r1(kotlinx.serialization.b primitiveSerializer) {
        super(primitiveSerializer, null);
        Intrinsics.h(primitiveSerializer, "primitiveSerializer");
        this.f68194b = new q1(primitiveSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.a
    protected final Iterator d(Object obj) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // kotlinx.serialization.internal.a, kotlinx.serialization.a
    public final Object deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return f(decoder, null);
    }

    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public final kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f68194b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final p1 a() {
        return (p1) k(r());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final int b(p1 p1Var) {
        Intrinsics.h(p1Var, "<this>");
        return p1Var.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final void c(p1 p1Var, int i11) {
        Intrinsics.h(p1Var, "<this>");
        p1Var.b(i11);
    }

    protected abstract Object r();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final void n(p1 p1Var, int i11, Object obj) {
        Intrinsics.h(p1Var, "<this>");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.g
    public final void serialize(e00.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        int iE = e(obj);
        kotlinx.serialization.descriptors.f fVar = this.f68194b;
        e00.d dVarJ = encoder.j(fVar, iE);
        u(dVarJ, obj, iE);
        dVarJ.c(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final Object l(p1 p1Var) {
        Intrinsics.h(p1Var, "<this>");
        return p1Var.a();
    }

    protected abstract void u(e00.d dVar, Object obj, int i11);
}
