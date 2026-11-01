package androidx.compose.ui.layout;

import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class w {
    public static v a(x xVar, int i11, int i12, Map map, Function1 function1) {
        return xVar.M0(i11, i12, map, null, function1);
    }

    public static /* synthetic */ v b(x xVar, int i11, int i12, Map map, Function1 function1, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: layout");
        }
        if ((i13 & 4) != 0) {
            map = MapsKt.h();
        }
        return xVar.p0(i11, i12, map, function1);
    }
}
