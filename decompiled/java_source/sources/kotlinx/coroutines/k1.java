package kotlinx.coroutines;

import java.io.Closeable;
import java.util.concurrent.Executor;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class k1 extends i0 implements Closeable, AutoCloseable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f67894a = new a(null);

    public static final class a extends AbstractCoroutineContextKey {
        private a() {
            super(i0.Key, new Function1() { // from class: kotlinx.coroutines.j1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return k1.a.d((CoroutineContext.Element) obj);
                }
            });
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final k1 d(CoroutineContext.Element element) {
            if (element instanceof k1) {
                return (k1) element;
            }
            return null;
        }
    }

    public abstract Executor d();
}
