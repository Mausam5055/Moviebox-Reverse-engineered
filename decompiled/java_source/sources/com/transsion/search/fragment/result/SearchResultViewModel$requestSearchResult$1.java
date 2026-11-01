package com.transsion.search.fragment.result;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.search.bean.SearchResultEntity;
import com.transsion.search.net.RequestSearchResultEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
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
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.search.fragment.result.SearchResultViewModel$requestSearchResult$1", f = "SearchResultViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE}, m = "invokeSuspend")
final class SearchResultViewModel$requestSearchResult$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isLoadMore;
    final /* synthetic */ String $keyword;
    final /* synthetic */ String $tabId;
    private /* synthetic */ Object L$0;
    boolean Z$0;
    int label;
    final /* synthetic */ SearchResultViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchResultViewModel$requestSearchResult$1(SearchResultViewModel searchResultViewModel, String str, String str2, boolean z10, Continuation<? super SearchResultViewModel$requestSearchResult$1> continuation) {
        super(2, continuation);
        this.this$0 = searchResultViewModel;
        this.$keyword = str;
        this.$tabId = str2;
        this.$isLoadMore = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SearchResultViewModel$requestSearchResult$1 searchResultViewModel$requestSearchResult$1 = new SearchResultViewModel$requestSearchResult$1(this.this$0, this.$keyword, this.$tabId, this.$isLoadMore, continuation);
        searchResultViewModel$requestSearchResult$1.L$0 = obj;
        return searchResultViewModel$requestSearchResult$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SearchResultViewModel$requestSearchResult$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        SearchResultViewModel searchResultViewModel;
        boolean z10;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                RequestSearchResultEntity requestSearchResultEntity = new RequestSearchResultEntity(this.this$0.f52117f, 10, this.$keyword);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("page", Boxing.d(requestSearchResultEntity.getPage()));
                jsonObject.addProperty("perPage", Boxing.d(requestSearchResultEntity.getPerPage()));
                jsonObject.addProperty("keyword", requestSearchResultEntity.getKeyword());
                String str = this.$tabId;
                if (str != null && str.length() != 0) {
                    jsonObject.addProperty("tabId", this.$tabId);
                }
                RequestBody.Companion companion = RequestBody.INSTANCE;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion.create(string, MediaType.INSTANCE.parse("application/json"));
                searchResultViewModel = this.this$0;
                boolean z11 = this.$isLoadMore;
                Result.Companion companion2 = Result.INSTANCE;
                yq.g gVarL = searchResultViewModel.l();
                String strL = CacheIpPool.f40825a.l();
                this.L$0 = searchResultViewModel;
                this.Z$0 = z11;
                this.label = 1;
                obj = gVarL.c(strL, requestBodyCreate, this);
                if (obj == objF) {
                    return objF;
                }
                z10 = z11;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z10 = this.Z$0;
                searchResultViewModel = (SearchResultViewModel) this.L$0;
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            SearchResultEntity searchResultEntity = (SearchResultEntity) baseDto.getData();
            if (searchResultEntity != null) {
                SearchResultEntity searchResultEntity2 = (SearchResultEntity) baseDto.getData();
                searchResultEntity.setConvertData(searchResultViewModel.h(searchResultEntity2 != null ? searchResultEntity2.getResults() : null));
            }
            if (z10) {
                searchResultViewModel.j().n(baseDto.getData());
            } else {
                searchResultViewModel.k().n(baseDto.getData());
            }
            int i12 = searchResultViewModel.f52117f;
            searchResultViewModel.f52117f = 1 + i12;
            objM454constructorimpl = Result.m454constructorimpl(Boxing.d(i12));
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        SearchResultViewModel searchResultViewModel2 = this.this$0;
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            searchResultViewModel2.k().n(null);
            lg.a.C0828a.l(lg.a.f68839a, "SearchResultViewModel", "requestSearchResult error: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        return Unit.f67061a;
    }
}
