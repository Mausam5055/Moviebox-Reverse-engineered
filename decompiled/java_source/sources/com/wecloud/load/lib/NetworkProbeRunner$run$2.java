package com.wecloud.load.lib;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Lcom/wecloud/load/lib/n;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/List;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.wecloud.load.lib.NetworkProbeRunner$run$2", f = "NetworkProbeRunner.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW}, m = "invokeSuspend")
@SourceDebugExtension
final class NetworkProbeRunner$run$2 extends SuspendLambda implements Function2<n0, Continuation<? super List<? extends n>>, Object> {
    final /* synthetic */ String $payloadJson;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: com.wecloud.load.lib.NetworkProbeRunner$run$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Lcom/wecloud/load/lib/n;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/List;"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.wecloud.load.lib.NetworkProbeRunner$run$2$1", f = "NetworkProbeRunner.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super List<? extends n>>, Object> {
        final /* synthetic */ List<NetworkProbeRunner.Link> $links;
        final /* synthetic */ kotlinx.coroutines.sync.h $semaphore;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<NetworkProbeRunner.Link> list, kotlinx.coroutines.sync.h hVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$links = list;
            this.$semaphore = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$links, this.$semaphore, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super List<n>> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                List<NetworkProbeRunner.Link> list = this.$links;
                kotlinx.coroutines.sync.h hVar = this.$semaphore;
                ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(kotlinx.coroutines.k.b(n0Var, null, null, new NetworkProbeRunner$run$2$1$1$1(hVar, (NetworkProbeRunner.Link) it.next(), null), 3, null));
                }
                this.label = 1;
                obj = kotlinx.coroutines.f.a(arrayList, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NetworkProbeRunner$run$2(String str, Continuation<? super NetworkProbeRunner$run$2> continuation) {
        super(2, continuation);
        this.$payloadJson = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NetworkProbeRunner$run$2 networkProbeRunner$run$2 = new NetworkProbeRunner$run$2(this.$payloadJson, continuation);
        networkProbeRunner$run$2.L$0 = obj;
        return networkProbeRunner$run$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super List<n>> continuation) {
        return ((NetworkProbeRunner$run$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        ArrayList arrayList;
        Iterator<T> it;
        Integer maxConcurrency;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String str = this.$payloadJson;
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl((NetworkProbeRunner.Payload) NetworkProbeRunner.f60813b.fromJson(str, NetworkProbeRunner.Payload.class));
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    String url = ((NetworkProbeRunner.Link) next).getUrl();
                    if (!(url == null || StringsKt.q0(url))) {
                        arrayList.add(next);
                    }
                }
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            NetworkProbeRunner.Payload payload = (NetworkProbeRunner.Payload) objM454constructorimpl;
            List<NetworkProbeRunner.Link> proberLinks = payload != null ? payload.getProberLinks() : null;
            if (proberLinks == null) {
                proberLinks = CollectionsKt.l();
            }
            arrayList = new ArrayList();
            it = proberLinks.iterator();
            if (arrayList.isEmpty()) {
                return CollectionsKt.l();
            }
            int iF = RangesKt.f((payload == null || (maxConcurrency = payload.getMaxConcurrency()) == null) ? 0 : maxConcurrency.intValue(), 0);
            if (iF <= 0) {
                iF = RangesKt.f(Runtime.getRuntime().availableProcessors(), 1);
            }
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(arrayList, kotlinx.coroutines.sync.k.b(iF, 0, 2, null), null);
            this.label = 1;
            obj = o0.e(anonymousClass1, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
