package androidx.compose.ui;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface j extends CoroutineContext.Element {

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public static final b f5092a1 = b.f5093a;

    public static final class a {
        public static Object a(j jVar, Object obj, Function2 function2) {
            return CoroutineContext.Element.DefaultImpls.a(jVar, obj, function2);
        }

        public static CoroutineContext.Element b(j jVar, CoroutineContext.Key key) {
            return CoroutineContext.Element.DefaultImpls.b(jVar, key);
        }

        public static CoroutineContext c(j jVar, CoroutineContext.Key key) {
            return CoroutineContext.Element.DefaultImpls.c(jVar, key);
        }

        public static CoroutineContext d(j jVar, CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.d(jVar, coroutineContext);
        }
    }

    public static final class b implements CoroutineContext.Key {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ b f5093a = new b();

        private b() {
        }
    }

    float k();
}
