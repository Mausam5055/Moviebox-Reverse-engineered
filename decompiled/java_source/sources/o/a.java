package o;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i1 f70594a;

    /* JADX INFO: renamed from: o.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0855a {

        /* JADX INFO: renamed from: o.a$a$a, reason: collision with other inner class name */
        public static final class C0856a extends AbstractC0855a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0856a f70595a = new C0856a();

            private C0856a() {
                super(null);
            }

            public String toString() {
                return "Closed";
            }
        }

        private AbstractC0855a() {
        }

        public /* synthetic */ AbstractC0855a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public a(AbstractC0855a abstractC0855a) {
        this.f70594a = u2.c(abstractC0855a, null, 2, null);
    }

    public /* synthetic */ a(AbstractC0855a abstractC0855a, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? AbstractC0855a.C0856a.f70595a : abstractC0855a);
    }

    public final AbstractC0855a a() {
        return (AbstractC0855a) this.f70594a.getValue();
    }

    public final void b(AbstractC0855a abstractC0855a) {
        this.f70594a.setValue(abstractC0855a);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            return Intrinsics.c(((a) obj).a(), a());
        }
        return false;
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return "ContextMenuState(status=" + a() + ')';
    }
}
