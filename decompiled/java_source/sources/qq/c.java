package qq;

import com.tencent.mmkv.MMKV;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f73672a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f73673b = LazyKt.b(new Function0() { // from class: qq.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.e();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static List f73674c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return c.f73674c;
        }

        public final MMKV b() {
            return (MMKV) c.f73673b.getValue();
        }

        public final void c(List list) {
            c.f73674c = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV e() {
        MMKV mmkvI = MMKV.I("search_mmKv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }
}
