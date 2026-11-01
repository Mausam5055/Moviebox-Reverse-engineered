package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
public interface m2 extends CoroutineContext.Element {

    public static final class a {
        public static Object a(m2 m2Var, Object obj, Function2 function2) {
            return CoroutineContext.Element.DefaultImpls.a(m2Var, obj, function2);
        }

        public static CoroutineContext b(m2 m2Var, CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.d(m2Var, coroutineContext);
        }
    }

    void m(CoroutineContext coroutineContext, Object obj);

    Object r(CoroutineContext coroutineContext);
}
