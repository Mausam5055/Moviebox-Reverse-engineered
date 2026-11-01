package f00;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlinx.serialization.g;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {
    private c() {
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ kotlinx.serialization.b c(c cVar, KClass kClass, List list, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
        }
        if ((i11 & 2) != 0) {
            list = CollectionsKt.l();
        }
        return cVar.b(kClass, list);
    }

    public abstract void a(e eVar);

    public abstract kotlinx.serialization.b b(KClass kClass, List list);

    public abstract kotlinx.serialization.a d(KClass kClass, String str);

    public abstract g e(KClass kClass, Object obj);
}
