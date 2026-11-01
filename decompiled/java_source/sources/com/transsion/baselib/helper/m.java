package com.transsion.baselib.helper;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f43283b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f43284c = LazyKt.b(new Function0() { // from class: com.transsion.baselib.helper.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return m.c();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f43285a = "";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a() {
            return (m) m.f43284c.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final m c() {
        return new m();
    }

    public final void d(String userPrefer) {
        Intrinsics.h(userPrefer, "userPrefer");
        this.f43285a = userPrefer;
    }
}
