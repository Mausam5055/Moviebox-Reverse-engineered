package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public abstract class l0 extends AbstractCoroutineContextElement implements m2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f67896a = new a(null);

    public static final class a implements CoroutineContext.Key {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public abstract long d();
}
