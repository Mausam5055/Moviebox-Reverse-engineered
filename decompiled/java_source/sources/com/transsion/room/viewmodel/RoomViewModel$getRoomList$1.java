package com.transsion.room.viewmodel;

import android.location.Address;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.room.api.bean.RoomGeo;
import com.transsion.room.api.bean.RoomRequestEntity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomList$1", f = "RoomViewModel.kt", l = {270}, m = "invokeSuspend")
final class RoomViewModel$getRoomList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Address $address;
    final /* synthetic */ int $cid;
    final /* synthetic */ boolean $isRefresh;
    final /* synthetic */ Double $lat;
    final /* synthetic */ Double $lon;
    final /* synthetic */ String $page;
    final /* synthetic */ int $perPage;
    int label;
    final /* synthetic */ RoomViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.room.viewmodel.RoomViewModel$getRoomList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomList$1$1", f = "RoomViewModel.kt", l = {261, 263, 265}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ Address $address;
        final /* synthetic */ int $cid;
        final /* synthetic */ Double $lat;
        final /* synthetic */ Double $lon;
        final /* synthetic */ String $page;
        final /* synthetic */ int $perPage;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ RoomViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Double d11, Double d12, Address address, String str, int i11, int i12, RoomViewModel roomViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$lon = d11;
            this.$lat = d12;
            this.$address = address;
            this.$page = str;
            this.$perPage = i11;
            this.$cid = i12;
            this.this$0 = roomViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$lon, this.$lat, this.$address, this.$page, this.$perPage, this.$cid, this.this$0, continuation);
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
            RoomGeo roomGeo;
            Object objL;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    objL = obj;
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
            if (this.$lon == null || this.$lat == null) {
                roomGeo = null;
            } else {
                double dDoubleValue = this.$lon.doubleValue();
                double dDoubleValue2 = this.$lat.doubleValue();
                Address address = this.$address;
                String countryCode = address != null ? address.getCountryCode() : null;
                Address address2 = this.$address;
                String adminArea = address2 != null ? address2.getAdminArea() : null;
                Address address3 = this.$address;
                roomGeo = new RoomGeo(dDoubleValue, dDoubleValue2, countryCode, adminArea, address3 != null ? address3.getLocality() : null, null, null, 96, null);
            }
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String strJ = com.blankj.utilcode.util.o.j(new RoomRequestEntity(this.$page, this.$perPage, 0, Boxing.d(this.$cid), roomGeo, null, 32, null));
            Intrinsics.g(strJ, "toJson(...)");
            RequestBody requestBodyCreate = companion.create(strJ, MediaType.INSTANCE.parse("application/json"));
            eq.a aVarK = this.this$0.K();
            String strA = vg.a.f77324a.a();
            this.L$0 = cVar;
            this.label = 1;
            objL = aVarK.l(strA, requestBodyCreate, this);
            if (objL == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) objL;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
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

    /* JADX INFO: renamed from: com.transsion.room.viewmodel.RoomViewModel$getRoomList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomList$1$2", f = "RoomViewModel.kt", l = {269}, m = "invokeSuspend")
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
        final /* synthetic */ boolean f51852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoomViewModel f51853b;

        a(boolean z10, RoomViewModel roomViewModel) {
            this.f51852a = z10;
            this.f51853b = roomViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(RoomBean roomBean, Continuation continuation) {
            if (roomBean != null) {
                roomBean.setRefresh(this.f51852a);
            }
            this.f51853b.f51842i.n(roomBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomViewModel$getRoomList$1(Double d11, Double d12, Address address, String str, int i11, int i12, RoomViewModel roomViewModel, boolean z10, Continuation<? super RoomViewModel$getRoomList$1> continuation) {
        super(2, continuation);
        this.$lon = d11;
        this.$lat = d12;
        this.$address = address;
        this.$page = str;
        this.$perPage = i11;
        this.$cid = i12;
        this.this$0 = roomViewModel;
        this.$isRefresh = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomViewModel$getRoomList$1(this.$lon, this.$lat, this.$address, this.$page, this.$perPage, this.$cid, this.this$0, this.$isRefresh, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomViewModel$getRoomList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$lon, this.$lat, this.$address, this.$page, this.$perPage, this.$cid, this.this$0, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$isRefresh, this.this$0);
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
