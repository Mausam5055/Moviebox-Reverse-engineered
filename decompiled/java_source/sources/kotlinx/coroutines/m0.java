package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class m0 extends AbstractCoroutineContextElement {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f67899b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f67900a;

    public static final class a implements CoroutineContext.Key {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public m0(String str) {
        super(f67899b);
        this.f67900a = str;
    }

    public final String d() {
        return this.f67900a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof m0) && Intrinsics.c(this.f67900a, ((m0) obj).f67900a);
    }

    public int hashCode() {
        return this.f67900a.hashCode();
    }

    public String toString() {
        return "CoroutineName(" + this.f67900a + ')';
    }
}
