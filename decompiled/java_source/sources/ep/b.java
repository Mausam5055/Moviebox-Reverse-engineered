package ep;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    public static final class a {
        public static /* synthetic */ void a(b bVar, Function0 function0, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: doRefresh");
            }
            if ((i11 & 1) != 0) {
                function0 = null;
            }
            bVar.doRefresh(function0);
        }
    }

    void doRefresh(Function0 function0);
}
