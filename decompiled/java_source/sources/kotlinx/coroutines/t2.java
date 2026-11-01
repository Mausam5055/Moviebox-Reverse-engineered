package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public final class t2 extends AbstractCoroutineContextElement {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f67998b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f67999a;

    public static final class a implements CoroutineContext.Key {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public t2() {
        super(f67998b);
    }
}
