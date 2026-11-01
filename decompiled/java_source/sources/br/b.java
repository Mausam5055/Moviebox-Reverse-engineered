package br;

import com.tencent.mmkv.MMKV;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f16914a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f16915b = LazyKt.b(new Function0() { // from class: br.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.c();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static List f16916c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return b.f16916c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("search_mmKv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }
}
