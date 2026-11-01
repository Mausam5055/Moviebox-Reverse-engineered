package com.transsion.room.helper;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.libraries.places.api.net.FindCurrentPlaceRequest;
import com.transsion.room.api.bean.LocationPlace;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.helper.LocationPlaceHelper$getNearbyPlacesWithDetailApi$1", f = "LocationPlaceHelper.kt", l = {TTAdConstant.IMAGE_LIST_SIZE_CODE}, m = "invokeSuspend")
final class LocationPlaceHelper$getNearbyPlacesWithDetailApi$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<List<LocationPlace>, Unit> $callback;
    final /* synthetic */ LatLng $currentLatLng;
    final /* synthetic */ FindCurrentPlaceRequest $request;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LocationPlaceHelper$getNearbyPlacesWithDetailApi$1(Function1<? super List<LocationPlace>, Unit> function1, FindCurrentPlaceRequest findCurrentPlaceRequest, LatLng latLng, Continuation<? super LocationPlaceHelper$getNearbyPlacesWithDetailApi$1> continuation) {
        super(2, continuation);
        this.$callback = function1;
        this.$request = findCurrentPlaceRequest;
        this.$currentLatLng = latLng;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocationPlaceHelper$getNearbyPlacesWithDetailApi$1(this.$callback, this.$request, this.$currentLatLng, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocationPlaceHelper$getNearbyPlacesWithDetailApi$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1 locationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1 = new LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1(this.$request, this.$currentLatLng, null);
                this.label = 1;
                obj = TimeoutKt.c(10000L, locationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            this.$callback.invoke((List) obj);
        } catch (TimeoutCancellationException unused) {
            lg.a.C0828a.f(lg.a.f68839a, "LocationP", "getNearbyPlaces request timed out", false, 4, null);
            this.$callback.invoke(null);
        }
        return Unit.f67061a;
    }
}
