package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e1 extends TaggedDecoder {
    protected String b0(String parentName, String childName) {
        Intrinsics.h(parentName, "parentName");
        Intrinsics.h(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    protected String c0(kotlinx.serialization.descriptors.f desc, int i11) {
        Intrinsics.h(desc, "desc");
        return desc.f(i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public final String X(kotlinx.serialization.descriptors.f fVar, int i11) {
        Intrinsics.h(fVar, "<this>");
        return e0(c0(fVar, i11));
    }

    protected final String e0(String nestedName) {
        Intrinsics.h(nestedName, "nestedName");
        String str = (String) W();
        if (str == null) {
            str = "";
        }
        return b0(str, nestedName);
    }
}
