package com.transsion.publish.viewmodel;

import ak.s;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.publish.api.bean.LocationPlaceBean;
import com.transsion.room.api.bean.LocationPlace;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1", f = "LocationPlaceViewModel.kt", l = {67}, m = "invokeSuspend")
final class LocationPlaceViewModel$getLocationPlaceList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Double $lat;
    final /* synthetic */ Double $lon;
    int label;
    final /* synthetic */ LocationPlaceViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/publish/api/bean/LocationPlaceBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1$1", f = "LocationPlaceViewModel.kt", l = {50, Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE, 62}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ Double $lat;
        final /* synthetic */ Double $lon;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ LocationPlaceViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LocationPlaceViewModel locationPlaceViewModel, Double d11, Double d12, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = locationPlaceViewModel;
            this.$lat = d11;
            this.$lon = d12;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$lat, this.$lon, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            Object objA;
            LocationPlaceBean locationPlaceBean;
            List<LocationPlace> items;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    objA = obj;
                } else {
                    if (i11 != 2 && i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            cVar = (kotlinx.coroutines.flow.c) this.L$0;
            lp.a aVarN = this.this$0.n();
            String strA = vg.a.f77324a.a();
            Double d11 = this.$lat;
            Double d12 = this.$lon;
            this.L$0 = cVar;
            this.label = 1;
            objA = aVarN.a(strA, d11, d12, this);
            if (objA == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) objA;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                if (this.$lat != null && this.$lon != null && (locationPlaceBean = (LocationPlaceBean) baseDto.getData()) != null && (items = locationPlaceBean.getItems()) != null) {
                    Double d13 = this.$lat;
                    Double d14 = this.$lon;
                    for (LocationPlace locationPlace : items) {
                        if (locationPlace.getLat() != null && locationPlace.getLon() != null) {
                            s sVar = s.f651a;
                            double dDoubleValue = d13.doubleValue();
                            double dDoubleValue2 = d14.doubleValue();
                            Double lat = locationPlace.getLat();
                            Intrinsics.e(lat);
                            double dDoubleValue3 = lat.doubleValue();
                            Double lon = locationPlace.getLon();
                            Intrinsics.e(lon);
                            locationPlace.setDistance(sVar.a(dDoubleValue, dDoubleValue2, dDoubleValue3, lon.doubleValue()));
                        }
                    }
                }
                Object data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/publish/api/bean/LocationPlaceBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1$2", f = "LocationPlaceViewModel.kt", l = {66}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = cVar;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                this.label = 1;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LocationPlaceViewModel f50773a;

        a(LocationPlaceViewModel locationPlaceViewModel) {
            this.f50773a = locationPlaceViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(LocationPlaceBean locationPlaceBean, Continuation continuation) {
            this.f50773a.f50770c.n(locationPlaceBean != null ? locationPlaceBean.getItems() : null);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocationPlaceViewModel$getLocationPlaceList$1(LocationPlaceViewModel locationPlaceViewModel, Double d11, Double d12, Continuation<? super LocationPlaceViewModel$getLocationPlaceList$1> continuation) {
        super(2, continuation);
        this.this$0 = locationPlaceViewModel;
        this.$lat = d11;
        this.$lon = d12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocationPlaceViewModel$getLocationPlaceList$1(this.this$0, this.$lat, this.$lon, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocationPlaceViewModel$getLocationPlaceList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$lat, this.$lon, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0);
            this.label = 1;
            if (bVarF.a(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
