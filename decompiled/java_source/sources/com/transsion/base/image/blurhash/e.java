package com.transsion.base.image.blurhash;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f42991a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42992b = LazyKt.b(new Function0() { // from class: com.transsion.base.image.blurhash.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.b();
        }
    });

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BlurHash b() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return new BlurHash(applicationA, 10, 0.6f);
    }

    public static /* synthetic */ void d(e eVar, String str, int i11, int i12, Function1 function1, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 20;
        }
        if ((i13 & 4) != 0) {
            i12 = 20;
        }
        eVar.c(str, i11, i12, function1);
    }

    private final BlurHash e() {
        return (BlurHash) f42992b.getValue();
    }

    public final void c(String blurString, int i11, int i12, Function1 response) {
        Intrinsics.h(blurString, "blurString");
        Intrinsics.h(response, "response");
        e().f(blurString, i11, i12, response);
    }
}
