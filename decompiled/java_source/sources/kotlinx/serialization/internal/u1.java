package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes7.dex */
public final class u1 extends w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final KClass f68203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68204c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u1(KClass kClass, kotlinx.serialization.b eSerializer) {
        super(eSerializer, null);
        Intrinsics.h(kClass, "kClass");
        Intrinsics.h(eSerializer, "eSerializer");
        this.f68203b = kClass;
        this.f68204c = new d(eSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f68204c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public ArrayList a() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public int b(ArrayList arrayList) {
        Intrinsics.h(arrayList, "<this>");
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void c(ArrayList arrayList, int i11) {
        Intrinsics.h(arrayList, "<this>");
        arrayList.ensureCapacity(i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Iterator d(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return ArrayIteratorKt.a(objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public int e(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return objArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void n(ArrayList arrayList, int i11, Object obj) {
        Intrinsics.h(arrayList, "<this>");
        arrayList.add(i11, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public ArrayList k(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return new ArrayList(ArraysKt.i(objArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public Object[] l(ArrayList arrayList) {
        Intrinsics.h(arrayList, "<this>");
        return k1.n(arrayList, this.f68203b);
    }
}
