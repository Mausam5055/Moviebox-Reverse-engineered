package androidx.compose.runtime.saveable;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SaverKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final d f3907a = a(new Function2<e, Object, Object>() { // from class: androidx.compose.runtime.saveable.SaverKt$AutoSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(e eVar, Object obj) {
            return obj;
        }
    }, new Function1<Object, Object>() { // from class: androidx.compose.runtime.saveable.SaverKt$AutoSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return obj;
        }
    });

    public static final class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2 f3908a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function1 f3909b;

        a(Function2 function2, Function1 function1) {
            this.f3908a = function2;
            this.f3909b = function1;
        }

        @Override // androidx.compose.runtime.saveable.d
        public Object a(e eVar, Object obj) {
            return this.f3908a.invoke(eVar, obj);
        }

        @Override // androidx.compose.runtime.saveable.d
        public Object b(Object obj) {
            return this.f3909b.invoke(obj);
        }
    }

    public static final d a(Function2 function2, Function1 function1) {
        return new a(function2, function1);
    }

    public static final d b() {
        d dVar = f3907a;
        Intrinsics.f(dVar, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.SaverKt.autoSaver, kotlin.Any>");
        return dVar;
    }
}
