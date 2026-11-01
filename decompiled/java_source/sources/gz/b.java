package gz;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f64036a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f64037b = LazyKt.b(new Function0() { // from class: gz.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.c();
        }
    });

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvJ = MMKV.J("dyso_config", 2);
        Intrinsics.g(mmkvJ, "mmkvWithID(...)");
        return mmkvJ;
    }

    public final MMKV b() {
        return (MMKV) f64037b.getValue();
    }
}
