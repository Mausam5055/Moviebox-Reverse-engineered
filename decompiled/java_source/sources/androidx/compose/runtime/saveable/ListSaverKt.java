package androidx.compose.runtime.saveable;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ListSaverKt {
    public static final d a(final Function2 function2, Function1 function1) {
        Function2<e, Object, Object> function3 = new Function2<e, Object, Object>() { // from class: androidx.compose.runtime.saveable.ListSaverKt$listSaver$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(e eVar, Object obj) {
                List list = (List) function2.invoke(eVar, obj);
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    Object obj2 = list.get(i11);
                    if (obj2 != null && !eVar.a(obj2)) {
                        throw new IllegalArgumentException("item can't be saved");
                    }
                }
                List list2 = list;
                if (list2.isEmpty()) {
                    return null;
                }
                return new ArrayList(list2);
            }
        };
        Intrinsics.f(function1, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, Original of androidx.compose.runtime.saveable.ListSaverKt.listSaver?>");
        return SaverKt.a(function3, (Function1) TypeIntrinsics.e(function1, 1));
    }
}
