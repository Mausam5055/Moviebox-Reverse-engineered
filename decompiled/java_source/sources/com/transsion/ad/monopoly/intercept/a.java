package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f42144a;

    /* JADX INFO: renamed from: com.transsion.ad.monopoly.intercept.a$a, reason: collision with other inner class name */
    public static final class C0598a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private a f42145a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private a f42146b;

        public final C0598a a(a aVar) {
            if (this.f42145a == null) {
                this.f42146b = aVar;
                this.f42145a = aVar;
                return this;
            }
            a aVar2 = this.f42146b;
            if (aVar2 != null) {
                aVar2.f(aVar);
            }
            this.f42146b = aVar;
            return this;
        }

        public final a b() {
            return this.f42145a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(a aVar) {
        this.f42144a = aVar;
    }

    public abstract Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation);

    public final a c() {
        return this.f42144a;
    }

    protected final String d() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    protected final AdPlansHitResponse e() {
        return new AdPlansHitResponse(true, "default");
    }
}
