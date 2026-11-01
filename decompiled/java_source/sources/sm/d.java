package sm;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f75403a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f75404b = LazyKt.b(new Function0() { // from class: sm.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.i();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f75405c = LazyKt.b(new Function0() { // from class: sm.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.h();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f75406d = LazyKt.b(new Function0() { // from class: sm.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.d();
        }
    });

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("kv_bucket_config");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV h() {
        MMKV mmkvI = MMKV.I("kv_local_config");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV i() {
        MMKV mmkvI = MMKV.I("kv_app_config");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV e() {
        return (MMKV) f75406d.getValue();
    }

    public final MMKV f() {
        return (MMKV) f75405c.getValue();
    }

    public final MMKV g() {
        return (MMKV) f75404b.getValue();
    }
}
