package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f1 extends c2 {
    protected String d0(String parentName, String childName) {
        Intrinsics.h(parentName, "parentName");
        Intrinsics.h(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    protected String e0(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return descriptor.f(i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final String a0(kotlinx.serialization.descriptors.f fVar, int i11) {
        Intrinsics.h(fVar, "<this>");
        return g0(e0(fVar, i11));
    }

    protected final String g0(String nestedName) {
        Intrinsics.h(nestedName, "nestedName");
        String str = (String) Z();
        if (str == null) {
            str = "";
        }
        return d0(str, nestedName);
    }
}
