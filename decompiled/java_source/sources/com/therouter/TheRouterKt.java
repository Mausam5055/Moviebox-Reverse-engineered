package com.therouter;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TheRouterKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f40710a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f40711b = true;

    public static final void c(String tag, String msg, Function0 block) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        Intrinsics.h(block, "block");
        if (TheRouter.m()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("TheRouter::");
            sb2.append(tag);
            block.invoke();
            return;
        }
        TheRouter.f().invoke("TheRouter::" + tag, msg);
    }

    public static /* synthetic */ void d(String str, String str2, Function0 function0, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function0 = new Function0<Unit>() { // from class: com.therouter.TheRouterKt$debug$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m296invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m296invoke() {
                }
            };
        }
        c(str, str2, function0);
    }

    public static final void e(String tag, String msg, Function0 block) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        Intrinsics.h(block, "block");
        if (TheRouter.m()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("TheRouter::");
            sb2.append(tag);
            block.invoke();
        }
    }

    public static /* synthetic */ void f(String str, String str2, Function0 function0, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function0 = new Function0<Unit>() { // from class: com.therouter.TheRouterKt$debugOnly$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m297invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m297invoke() {
                }
            };
        }
        e(str, str2, function0);
    }

    public static final boolean g() {
        return f40711b;
    }

    public static final void h(boolean z10, String tag, String msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (z10) {
            return;
        }
        if (TheRouter.m()) {
            throw new IllegalArgumentException("TheRouter::" + tag + "::" + msg);
        }
        TheRouter.f().invoke("TheRouter::" + tag, msg);
    }
}
