package vy;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f77482a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f77483b = LazyKt.b(new Function0() { // from class: vy.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.c();
        }
    });

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_login_sms");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f77483b.getValue();
    }
}
