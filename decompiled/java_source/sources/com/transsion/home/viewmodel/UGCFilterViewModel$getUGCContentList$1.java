package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.RefreshBaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.UGCFilterViewModel$getUGCContentList$1", f = "UGCFilterViewModel.kt", l = {102}, m = "invokeSuspend")
@SourceDebugExtension
final class UGCFilterViewModel$getUGCContentList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Integer $categoryLve2;
    final /* synthetic */ Integer $categoryLve3;
    final /* synthetic */ Integer $categoryLve4;
    final /* synthetic */ String $finallyCateGory;
    final /* synthetic */ boolean $isRefresh;
    final /* synthetic */ int $page;
    final /* synthetic */ int $perPage;
    final /* synthetic */ String $selectGrade;
    final /* synthetic */ String $sort;
    int label;
    final /* synthetic */ UGCFilterViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCFilterViewModel$getUGCContentList$1(String str, int i11, String str2, Integer num, Integer num2, Integer num3, boolean z10, UGCFilterViewModel uGCFilterViewModel, int i12, String str3, Continuation<? super UGCFilterViewModel$getUGCContentList$1> continuation) {
        super(2, continuation);
        this.$finallyCateGory = str;
        this.$page = i11;
        this.$sort = str2;
        this.$categoryLve2 = num;
        this.$categoryLve3 = num2;
        this.$categoryLve4 = num3;
        this.$isRefresh = z10;
        this.this$0 = uGCFilterViewModel;
        this.$perPage = i12;
        this.$selectGrade = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCFilterViewModel$getUGCContentList$1(this.$finallyCateGory, this.$page, this.$sort, this.$categoryLve2, this.$categoryLve3, this.$categoryLve4, this.$isRefresh, this.this$0, this.$perPage, this.$selectGrade, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCFilterViewModel$getUGCContentList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        String str2;
        String str3;
        Object objD;
        List<UGCContent> items;
        List<UGCContent> listU0;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        Object obj2 = ", sort=";
        String str4 = "UGCFilterViewModel";
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                lg.a.f68839a.c("UGCFilterViewModel", "getUGCContentList: category=" + this.$finallyCateGory + ", page=" + this.$page + ", sort=" + this.$sort + ", lv2=" + this.$categoryLve2 + ", lv3=" + this.$categoryLve3 + ", lv4=" + this.$categoryLve4 + ", isRefresh=" + this.$isRefresh, false);
                ol.c cVar = this.this$0.f45870e;
                String strA = vg.a.f77324a.a();
                String str5 = this.$finallyCateGory;
                int i12 = this.$page;
                int i13 = this.$perPage;
                String str6 = this.$sort;
                Integer num = this.$categoryLve2;
                Integer num2 = this.$categoryLve3;
                Integer num3 = this.$categoryLve4;
                String str7 = this.$selectGrade;
                this.label = 1;
                str = "UGCFilterViewModel";
                str4 = str7;
                str3 = ", sort=";
                UGCFilterViewModel$getUGCContentList$1 uGCFilterViewModel$getUGCContentList$1 = this;
                try {
                    objD = cVar.d(strA, str5, i12, i13, str6, num, num2, num3, str4, uGCFilterViewModel$getUGCContentList$1);
                    obj2 = uGCFilterViewModel$getUGCContentList$1;
                    str3 = str3;
                    if (objD == objF) {
                        return objF;
                    }
                } catch (Exception e11) {
                    e = e11;
                    str2 = str3;
                    e.printStackTrace();
                    this.this$0.o().n(null);
                    lg.a.f68839a.i(str, "getUGCContentList error: " + e.getMessage() + ", page=" + this.$page + str2 + this.$sort, true);
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                objD = obj;
                str = "UGCFilterViewModel";
                str3 = ", sort=";
                obj2 = obj2;
            }
            BaseDto baseDto = (BaseDto) objD;
            UGCContentList uGCContentList = (UGCContentList) baseDto.getData();
            if (uGCContentList != null) {
                List<UGCContent> items2 = uGCContentList.getItems();
                if (items2 != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj3 : items2) {
                        UGCContent uGCContent = (UGCContent) obj3;
                        if (Intrinsics.c(uGCContent.getTopicType(), "UGC_VIDEO") && uGCContent.getVideo() != null) {
                            arrayList.add(obj3);
                        }
                    }
                    listU0 = CollectionsKt.U0(arrayList);
                } else {
                    listU0 = null;
                }
                uGCContentList.setItems(listU0);
            }
            String msg = baseDto.getMsg();
            String str8 = msg == null ? "" : msg;
            String code = baseDto.getCode();
            String str9 = code == null ? "" : code;
            String reason = baseDto.getReason();
            this.this$0.o().n(new RefreshBaseDto(str8, str9, uGCContentList, reason == null ? "" : reason, this.$isRefresh));
            lg.a.C0828a c0828a = lg.a.f68839a;
            int i14 = this.$page;
            String str10 = this.$sort;
            UGCContentList uGCContentList2 = (UGCContentList) baseDto.getData();
            c0828a.c(str, "getUGCContentList success: page=" + i14 + str3 + str10 + ", size=" + ((uGCContentList2 == null || (items = uGCContentList2.getItems()) == null) ? 0 : items.size()), false);
        } catch (Exception e12) {
            e = e12;
            str = str4;
            str2 = obj2;
        }
        return Unit.f67061a;
    }
}
