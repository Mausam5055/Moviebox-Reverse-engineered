package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a0 {
    public static final void a(kotlinx.serialization.json.a aVar, h0 writer, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(aVar, "<this>");
        Intrinsics.h(writer, "writer");
        Intrinsics.h(serializer, "serializer");
        new l0(writer, aVar, WriteMode.OBJ, new kotlinx.serialization.json.l[WriteMode.values().length]).e(serializer, obj);
    }
}
