package com.transsion.shorttv._channel.ui.viewmodel;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv._channel.model.ShortTvCategoryBean;
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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv._channel.ui.viewmodel.ShortTvCategoryViewModel$getCategoryList$1", f = "ShortTvCategoryViewModel.kt", l = {36}, m = "invokeSuspend")
final class ShortTvCategoryViewModel$getCategoryList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $type;
    Object L$0;
    int label;
    final /* synthetic */ ShortTvCategoryViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvCategoryViewModel$getCategoryList$1(String str, ShortTvCategoryViewModel shortTvCategoryViewModel, Continuation<? super ShortTvCategoryViewModel$getCategoryList$1> continuation) {
        super(2, continuation);
        this.$type = str;
        this.this$0 = shortTvCategoryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvCategoryViewModel$getCategoryList$1(this.$type, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvCategoryViewModel$getCategoryList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ShortTvCategoryViewModel shortTvCategoryViewModel;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, this.$type);
                jsonObject.addProperty("page", Boxing.d(this.this$0.k()));
                jsonObject.addProperty("perPage", Boxing.d(this.this$0.f52634c));
                bh.b.a aVar = bh.b.f16471a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    ShortTvCategoryViewModel shortTvCategoryViewModel2 = this.this$0;
                    nr.a aVarL = shortTvCategoryViewModel2.l();
                    String strA = vg.a.f77324a.a();
                    this.L$0 = shortTvCategoryViewModel2;
                    this.label = 1;
                    obj = aVarL.c(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    shortTvCategoryViewModel = shortTvCategoryViewModel2;
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            shortTvCategoryViewModel = (ShortTvCategoryViewModel) this.L$0;
            ResultKt.b(obj);
            BaseDto baseDto = (BaseDto) obj;
            shortTvCategoryViewModel.m((ShortTvCategoryBean) baseDto.getData());
            shortTvCategoryViewModel.j().n(baseDto);
            int iK = shortTvCategoryViewModel.k();
            shortTvCategoryViewModel.o(iK + 1);
            Boxing.d(iK);
        } catch (Exception e11) {
            this.this$0.j().n(new BaseDto());
            e11.printStackTrace();
        }
        return Unit.f67061a;
    }
}
