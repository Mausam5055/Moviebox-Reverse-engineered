package androidx.room.util;

import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class i {
    public static final void a(androidx.collection.a map, boolean z10, Function1 fetchBlock) {
        Intrinsics.h(map, "map");
        Intrinsics.h(fetchBlock, "fetchBlock");
        androidx.collection.a aVar = new androidx.collection.a(DescriptorProtos$Edition.EDITION_PROTO3_VALUE);
        int size = map.size();
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            if (z10) {
                aVar.put(map.keyAt(i11), map.valueAt(i11));
            } else {
                aVar.put(map.keyAt(i11), null);
            }
            i11++;
            i12++;
            if (i12 == 999) {
                fetchBlock.invoke(aVar);
                if (!z10) {
                    map.putAll((Map<Object, Object>) aVar);
                }
                aVar.clear();
                i12 = 0;
            }
        }
        if (i12 > 0) {
            fetchBlock.invoke(aVar);
            if (z10) {
                return;
            }
            map.putAll((Map<Object, Object>) aVar);
        }
    }
}
