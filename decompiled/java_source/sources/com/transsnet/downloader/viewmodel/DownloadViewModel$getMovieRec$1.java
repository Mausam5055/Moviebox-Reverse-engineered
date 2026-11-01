package com.transsnet.downloader.viewmodel;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadViewModel$getMovieRec$1", f = "DownloadViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
final class DownloadViewModel$getMovieRec$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $page;
    final /* synthetic */ int $perPage;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadViewModel$getMovieRec$1(DownloadViewModel downloadViewModel, int i11, int i12, Continuation<? super DownloadViewModel$getMovieRec$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadViewModel;
        this.$page = i11;
        this.$perPage = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadViewModel$getMovieRec$1(this.this$0, this.$page, this.$perPage, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadViewModel$getMovieRec$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        DownloadViewModel downloadViewModel;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                this.this$0.f60044d = true;
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("page", Boxing.d(this.$page));
                jsonObject.addProperty("perPage", Boxing.d(this.$perPage));
                bh.b.a aVar = bh.b.f16471a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    DownloadViewModel downloadViewModel2 = this.this$0;
                    qy.a aVarW = downloadViewModel2.W();
                    this.L$0 = requestBodyA;
                    this.L$1 = downloadViewModel2;
                    this.label = 1;
                    obj = aVarW.l(requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    downloadViewModel = downloadViewModel2;
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            downloadViewModel = (DownloadViewModel) this.L$1;
            ResultKt.b(obj);
            downloadViewModel.T().n((BaseDto) obj);
            downloadViewModel.f60044d = false;
        } catch (Exception unused) {
            this.this$0.T().n(new BaseDto());
            this.this$0.f60044d = false;
        }
        return Unit.f67061a;
    }
}
