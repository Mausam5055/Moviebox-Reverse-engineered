package rl;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f74553a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f74554b = LazyKt.b(new Function0() { // from class: rl.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.c();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f74555c = 8;

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("home_mmkv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final MMKV b() {
        return (MMKV) f74554b.getValue();
    }
}
