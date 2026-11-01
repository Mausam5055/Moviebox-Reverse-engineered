package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.MissingFieldException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class m1 {
    public static final void a(int i11, int i12, kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        ArrayList arrayList = new ArrayList();
        int i13 = (~i11) & i12;
        for (int i14 = 0; i14 < 32; i14++) {
            if ((i13 & 1) != 0) {
                arrayList.add(descriptor.f(i14));
            }
            i13 >>>= 1;
        }
        throw new MissingFieldException(arrayList, descriptor.i());
    }
}
