package androidx.datastore.core;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    public static final class a extends m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function2 f8596a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final kotlinx.coroutines.w f8597b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final r f8598c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final CoroutineContext f8599d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Function2 transform, kotlinx.coroutines.w ack, r rVar, CoroutineContext callerContext) {
            super(null);
            Intrinsics.h(transform, "transform");
            Intrinsics.h(ack, "ack");
            Intrinsics.h(callerContext, "callerContext");
            this.f8596a = transform;
            this.f8597b = ack;
            this.f8598c = rVar;
            this.f8599d = callerContext;
        }

        public final kotlinx.coroutines.w a() {
            return this.f8597b;
        }

        public final CoroutineContext b() {
            return this.f8599d;
        }

        public r c() {
            return this.f8598c;
        }

        public final Function2 d() {
            return this.f8596a;
        }
    }

    private m() {
    }

    public /* synthetic */ m(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
