package kotlinx.coroutines.channels;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
public interface r {

    public static final class a {
        public static /* synthetic */ boolean a(r rVar, Throwable th2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i11 & 1) != 0) {
                th2 = null;
            }
            return rVar.j(th2);
        }
    }

    void a(Function1 function1);

    Object c(Object obj);

    boolean j(Throwable th2);

    Object p(Object obj, Continuation continuation);

    boolean q();
}
