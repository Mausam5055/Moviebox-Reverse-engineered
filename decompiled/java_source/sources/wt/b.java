package wt;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes7.dex */
public interface b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f77949a = a.f77950a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f77950a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Lazy f77951b = LazyKt.b(new Function0() { // from class: wt.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a.c();
            }
        });

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final d c() {
            return new d();
        }

        public final b b() {
            return (b) f77951b.getValue();
        }
    }

    void init();
}
