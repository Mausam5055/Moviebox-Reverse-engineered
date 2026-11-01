package com.transsion.moviedetail.viewmodel;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.bean.ForYouBean;
import java.util.List;
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
@DebugMetadata(c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$fetchRec$1", f = "MovieDetailViewModel.kt", l = {193}, m = "invokeSuspend")
final class MovieDetailViewModel$fetchRec$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isTablet;
    final /* synthetic */ int $page;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ Integer $subjectType;
    int label;
    final /* synthetic */ MovieDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MovieDetailViewModel$fetchRec$1(String str, Integer num, int i11, boolean z10, MovieDetailViewModel movieDetailViewModel, Continuation<? super MovieDetailViewModel$fetchRec$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.$subjectType = num;
        this.$page = i11;
        this.$isTablet = z10;
        this.this$0 = movieDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MovieDetailViewModel$fetchRec$1(this.$subjectId, this.$subjectType, this.$page, this.$isTablet, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MovieDetailViewModel$fetchRec$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00dd  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<Subject> items;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                lg.a.C0828a.f(lg.a.f68839a, "MovieDetailViewModel", "fetchRec,subjectId:" + this.$subjectId + ", subjectType:" + this.$subjectType + ",page: " + this.$page, false, 4, null);
                JsonObject jsonObject = new JsonObject();
                Integer num = this.$subjectType;
                int value = SubjectType.MUSIC.getValue();
                int i12 = 8;
                if (num == null || num.intValue() != value) {
                    Integer num2 = this.$subjectType;
                    int value2 = SubjectType.EDUCATION.getValue();
                    if (num2 == null || num2.intValue() != value2) {
                        if (!this.$isTablet) {
                            i12 = 6;
                        }
                    }
                }
                jsonObject.addProperty("subjectId", this.$subjectId);
                jsonObject.addProperty("perPage", Boxing.d(i12));
                jsonObject.addProperty("page", Boxing.d(this.$page));
                bh.b.a aVar = bh.b.f16471a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    fn.a aVarN = this.this$0.N();
                    String strA = vg.a.f77324a.a();
                    this.label = 1;
                    obj = aVarN.d(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    items = null;
                }
                this.this$0.f47439j.n(items);
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            BaseDto baseDto = (BaseDto) obj;
            if (baseDto == null) {
                items = null;
            } else {
                ForYouBean forYouBean = Intrinsics.c(baseDto.getCode(), "0") ? (ForYouBean) baseDto.getData() : null;
                if (forYouBean != null) {
                    items = forYouBean.getItems();
                } else {
                    items = null;
                }
            }
            this.this$0.f47439j.n(items);
        } catch (Exception unused) {
            this.this$0.f47439j.n(null);
        }
        return Unit.f67061a;
    }
}
