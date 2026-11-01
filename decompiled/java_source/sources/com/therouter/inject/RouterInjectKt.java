package com.therouter.inject;

import com.therouter.TheRouterKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class RouterInjectKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final RecyclerBin f40751a = new RecyclerBin();

    private static final void b(String str, Function0 function0) {
        TheRouterKt.c("RouterInject", str, function0);
    }

    static /* synthetic */ void c(String str, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: com.therouter.inject.RouterInjectKt$routerInjectDebugLog$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m304invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m304invoke() {
                }
            };
        }
        b(str, function0);
    }
}
