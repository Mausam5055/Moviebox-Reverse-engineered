package com.transsion.search_pugc.fragment.result;

import android.util.Log;
import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.search_pugc.bean.SecondTab;
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
@DebugMetadata(c = "com.transsion.search_pugc.fragment.result.SearchResultViewModel$requestUGCSearchResult$1", f = "SearchResultViewModel.kt", l = {68}, m = "invokeSuspend")
final class SearchResultViewModel$requestUGCSearchResult$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isLoadMore;
    final /* synthetic */ String $keyword;
    final /* synthetic */ String $pageFrom;
    final /* synthetic */ SecondTab $secondTab;
    final /* synthetic */ String $tabId;
    private /* synthetic */ Object L$0;
    boolean Z$0;
    int label;
    final /* synthetic */ SearchResultViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchResultViewModel$requestUGCSearchResult$1(SearchResultViewModel searchResultViewModel, String str, String str2, String str3, SecondTab secondTab, boolean z10, Continuation<? super SearchResultViewModel$requestUGCSearchResult$1> continuation) {
        super(2, continuation);
        this.this$0 = searchResultViewModel;
        this.$keyword = str;
        this.$pageFrom = str2;
        this.$tabId = str3;
        this.$secondTab = secondTab;
        this.$isLoadMore = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SearchResultViewModel$requestUGCSearchResult$1 searchResultViewModel$requestUGCSearchResult$1 = new SearchResultViewModel$requestUGCSearchResult$1(this.this$0, this.$keyword, this.$pageFrom, this.$tabId, this.$secondTab, this.$isLoadMore, continuation);
        searchResultViewModel$requestUGCSearchResult$1.L$0 = obj;
        return searchResultViewModel$requestUGCSearchResult$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SearchResultViewModel$requestUGCSearchResult$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
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
                JsonObject jsonObject = new JsonObject();
                SearchResultViewModel searchResultViewModel2 = this.this$0;
                String str = this.$keyword;
                String str2 = this.$pageFrom;
                String str3 = this.$tabId;
                SecondTab secondTab = this.$secondTab;
                jsonObject.addProperty("page", Boxing.d(searchResultViewModel2.f52409h));
                jsonObject.addProperty("perPage", Boxing.d(20));
                jsonObject.addProperty("keyword", str);
                jsonObject.addProperty("pageFrom", str2);
                if (str3 != null && str3.length() != 0) {
                    jsonObject.addProperty("tabId", str3);
                }
                String strG = searchResultViewModel2.g();
                if (strG != null && strG.length() != 0) {
                    jsonObject.addProperty("ugcVideoId", searchResultViewModel2.g());
                }
                if (secondTab != null) {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("tagType", secondTab.getTagType());
                    jsonObject2.addProperty("tagValue", secondTab.getTagValue());
                    jsonObject.add("secondTab", jsonObject2);
                }
                RequestBody.Companion companion = RequestBody.INSTANCE;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion.create(string, MediaType.INSTANCE.parse("application/json"));
                searchResultViewModel = this.this$0;
                boolean z11 = this.$isLoadMore;
                Result.Companion companion2 = Result.INSTANCE;
                fr.a aVarJ = searchResultViewModel.j();
                String strA = vg.a.f77324a.a();
                this.L$0 = searchResultViewModel;
                this.Z$0 = z11;
                this.label = 1;
                obj = aVarJ.b(strA, requestBodyCreate, this);
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
            if (z10) {
                searchResultViewModel.k().n(baseDto.getData());
            } else {
                searchResultViewModel.l().n(baseDto.getData());
            }
            int i12 = searchResultViewModel.f52409h;
            searchResultViewModel.f52409h = 1 + i12;
            objM454constructorimpl = Result.m454constructorimpl(Boxing.d(i12));
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        boolean z12 = this.$isLoadMore;
        SearchResultViewModel searchResultViewModel3 = this.this$0;
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            if (z12) {
                searchResultViewModel3.k().n(null);
            } else {
                searchResultViewModel3.l().n(null);
            }
            Log.e("SearchResultViewModel", "getUGCSearchResult error: " + thM457exceptionOrNullimpl.getMessage(), thM457exceptionOrNullimpl);
        }
        return Unit.f67061a;
    }
}
