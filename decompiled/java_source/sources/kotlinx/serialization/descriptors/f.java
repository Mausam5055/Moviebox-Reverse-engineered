package kotlinx.serialization.descriptors;

import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes7.dex */
public interface f {

    public static final class a {
        public static List a(f fVar) {
            return CollectionsKt.l();
        }

        public static boolean b(f fVar) {
            return false;
        }

        public static boolean c(f fVar) {
            return false;
        }
    }

    boolean b();

    int c(String str);

    h d();

    int e();

    String f(int i11);

    List g(int i11);

    List getAnnotations();

    f h(int i11);

    String i();

    boolean isInline();

    boolean j(int i11);
}
