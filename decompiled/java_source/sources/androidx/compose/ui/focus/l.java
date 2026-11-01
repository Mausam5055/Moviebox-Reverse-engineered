package androidx.compose.ui.focus;

import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    static final class a implements p, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f4251a;

        a(Function1 function1) {
            this.f4251a = function1;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f4251a;
        }

        @Override // androidx.compose.ui.focus.p
        public final /* synthetic */ void b(k kVar) {
            this.f4251a.invoke(kVar);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof p) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }
    }

    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, Function1 function1) {
        return fVar.e(new FocusPropertiesElement(new a(function1)));
    }
}
