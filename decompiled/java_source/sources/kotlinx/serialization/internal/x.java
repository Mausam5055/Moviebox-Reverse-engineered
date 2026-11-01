package kotlinx.serialization.internal;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class x extends w {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(kotlinx.serialization.b element) {
        super(element, null);
        Intrinsics.h(element, "element");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public Iterator d(Collection collection) {
        Intrinsics.h(collection, "<this>");
        return collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public int e(Collection collection) {
        Intrinsics.h(collection, "<this>");
        return collection.size();
    }
}
