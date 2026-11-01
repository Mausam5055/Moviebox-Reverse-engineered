package com.transsion.room.helper;

import android.location.Address;
import com.transsion.room.api.bean.LocationPlace;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.helper.LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1", f = "LocationPlaceHelper.kt", l = {Sdk$SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE}, m = "invokeSuspend")
final class LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<LocationPlace, Unit> $callback;
    final /* synthetic */ double $latitude;
    final /* synthetic */ double $longitude;
    int label;

    /* JADX INFO: renamed from: com.transsion.room.helper.LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.helper.LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1$1", f = "LocationPlaceHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<LocationPlace, Unit> $callback;
        final /* synthetic */ LocationPlace $data;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super LocationPlace, Unit> function1, LocationPlace locationPlace, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.$data = locationPlace;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, this.$data, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$callback.invoke(this.$data);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1(double d11, double d12, Function1<? super LocationPlace, Unit> function1, Continuation<? super LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1> continuation) {
        super(2, continuation);
        this.$latitude = d11;
        this.$longitude = d12;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1(this.$latitude, this.$longitude, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            LocationPlaceHelper locationPlaceHelper = LocationPlaceHelper.f51610a;
            Address addressM = locationPlaceHelper.m(this.$latitude, this.$longitude);
            lg.a.f68839a.c("LocationP", "Location--update--------------2 success " + this.$longitude + ", :" + this.$latitude + ", address:" + addressM, true);
            LocationPlace locationPlaceL = locationPlaceHelper.l(this.$latitude, this.$longitude, addressM);
            a2 a2VarC = y0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, locationPlaceL, null);
            this.label = 1;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
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
