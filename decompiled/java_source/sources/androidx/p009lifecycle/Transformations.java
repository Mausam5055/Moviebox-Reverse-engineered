package androidx.p009lifecycle;

import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public abstract class Transformations {

    static final class a implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f9567a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f9567a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f9567a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f9567a.invoke(obj);
        }
    }

    public static final LiveData a(LiveData liveData) {
        final z zVar;
        Intrinsics.h(liveData, "<this>");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        if (liveData.i()) {
            booleanRef.element = false;
            zVar = new z(liveData.f());
        } else {
            zVar = new z();
        }
        zVar.r(liveData, new a(new Function1<Object, Unit>() { // from class: androidx.lifecycle.Transformations$distinctUntilChanged$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m193invoke(obj);
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m193invoke(Object obj) {
                Object objF = zVar.f();
                if (booleanRef.element || ((objF == null && obj != null) || !(objF == null || Intrinsics.c(objF, obj)))) {
                    booleanRef.element = false;
                    zVar.q(obj);
                }
            }
        }));
        return zVar;
    }
}
