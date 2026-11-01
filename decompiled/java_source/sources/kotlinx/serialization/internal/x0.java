package kotlinx.serialization.internal;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class x0 extends x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68212b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(kotlinx.serialization.b eSerializer) {
        super(eSerializer);
        Intrinsics.h(eSerializer, "eSerializer");
        this.f68212b = new w0(eSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f68212b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public LinkedHashSet a() {
        return new LinkedHashSet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public int b(LinkedHashSet linkedHashSet) {
        Intrinsics.h(linkedHashSet, "<this>");
        return linkedHashSet.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void c(LinkedHashSet linkedHashSet, int i11) {
        Intrinsics.h(linkedHashSet, "<this>");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void n(LinkedHashSet linkedHashSet, int i11, Object obj) {
        Intrinsics.h(linkedHashSet, "<this>");
        linkedHashSet.add(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public LinkedHashSet k(Set set) {
        Intrinsics.h(set, "<this>");
        LinkedHashSet linkedHashSet = set instanceof LinkedHashSet ? (LinkedHashSet) set : null;
        return linkedHashSet == null ? new LinkedHashSet(set) : linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public Set l(LinkedHashSet linkedHashSet) {
        Intrinsics.h(linkedHashSet, "<this>");
        return linkedHashSet;
    }
}
