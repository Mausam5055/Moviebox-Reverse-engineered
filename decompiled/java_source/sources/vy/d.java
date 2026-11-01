package vy;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f77480a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f77481b = LazyKt.b(new Function0() { // from class: vy.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.c();
        }
    });

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvJ = MMKV.J("kv_login", 2);
        Intrinsics.g(mmkvJ, "mmkvWithID(...)");
        return mmkvJ;
    }

    public final MMKV b() {
        return (MMKV) f77481b.getValue();
    }
}
