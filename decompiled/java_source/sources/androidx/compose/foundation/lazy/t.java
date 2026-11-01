package androidx.compose.foundation.lazy;

import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class t {
    public static /* synthetic */ void a(u uVar, Object obj, Object obj2, Function3 function3, int i11, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: item");
        }
        if ((i11 & 1) != 0) {
            obj = null;
        }
        if ((i11 & 2) != 0) {
            obj2 = null;
        }
        uVar.a(obj, obj2, function3);
    }
}
