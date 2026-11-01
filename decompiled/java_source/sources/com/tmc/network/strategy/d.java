package com.tmc.network.strategy;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f40818b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicBoolean f40819a = new AtomicBoolean(false);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return b.f40820a.a();
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f40820a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d f40821b = new d();

        private b() {
        }

        public final d a() {
            return f40821b;
        }
    }

    public final void a(Context context) {
        if (context != null && this.f40819a.compareAndSet(false, true)) {
            gg.b.f63567a.d("StrategyCenter", "StrategyCenter init");
            fg.b.f62390a.g(context);
            LocalDnsStrategy.f40804c.a().h(context);
        }
    }
}
