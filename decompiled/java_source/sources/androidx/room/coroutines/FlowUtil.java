package androidx.room.coroutines;

import androidx.room.RoomDatabase;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FlowUtil {
    public static final kotlinx.coroutines.flow.b a(final RoomDatabase db2, final boolean z10, String[] tableNames, final Function1 block) {
        Intrinsics.h(db2, "db");
        Intrinsics.h(tableNames, "tableNames");
        Intrinsics.h(block, "block");
        final kotlinx.coroutines.flow.b bVarJ = kotlinx.coroutines.flow.d.j(db2.y().l((String[]) Arrays.copyOf(tableNames, tableNames.length), true));
        return new kotlinx.coroutines.flow.b() { // from class: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1

            /* JADX INFO: renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.c {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.c f14610a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ RoomDatabase f14611b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ boolean f14612c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                final /* synthetic */ Function1 f14613d;

                /* JADX INFO: renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                @DebugMetadata(c = "androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2", f = "FlowBuilder.kt", l = {224, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "emit")
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.c cVar, RoomDatabase roomDatabase, boolean z10, Function1 function1) {
                    this.f14610a = cVar;
                    this.f14611b = roomDatabase;
                    this.f14612c = z10;
                    this.f14613d = function1;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.c
                public final Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    kotlinx.coroutines.flow.c cVar;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i11 = anonymousClass1.label;
                        if ((i11 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i11 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object objF = IntrinsicsKt.f();
                    int i12 = anonymousClass1.label;
                    if (i12 != 0) {
                        if (i12 == 1) {
                            cVar = (kotlinx.coroutines.flow.c) anonymousClass1.L$0;
                            ResultKt.b(obj2);
                        } else {
                            if (i12 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj2);
                        }
                        return Unit.f67061a;
                    }
                    ResultKt.b(obj2);
                    kotlinx.coroutines.flow.c cVar2 = this.f14610a;
                    RoomDatabase roomDatabase = this.f14611b;
                    boolean z10 = this.f14612c;
                    Function1 function1 = this.f14613d;
                    anonymousClass1.L$0 = cVar2;
                    anonymousClass1.label = 1;
                    Object objF2 = androidx.room.util.b.f(roomDatabase, true, z10, function1, anonymousClass1);
                    if (objF2 == objF) {
                        return objF;
                    }
                    obj2 = objF2;
                    cVar = cVar2;
                    anonymousClass1.L$0 = null;
                    anonymousClass1.label = 2;
                    if (cVar.emit(obj2, anonymousClass1) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                }
            }

            @Override // kotlinx.coroutines.flow.b
            public Object a(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
                Object objA = bVarJ.a(new AnonymousClass2(cVar, db2, z10, block), continuation);
                return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
            }
        };
    }
}
