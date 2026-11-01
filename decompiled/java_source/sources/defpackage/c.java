package defpackage;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f16958a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f16959b = LazyKt.b(new Function0() { // from class: b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.c();
        }
    });

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        return MMKV.I("palm_pay_kv");
    }

    public final MMKV b() {
        return (MMKV) f16959b.getValue();
    }
}
