package com.transsion.home.viewmodel;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.JsonObject;
import com.transsion.home.bean.MovieBean;
import com.transsion.home.bean.MovieItem;
import com.transsion.home.bean.RefreshBaseDto;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.MovieViewModel$getMovieList$2", f = "MovieViewModel.kt", l = {75}, m = "invokeSuspend")
final class MovieViewModel$getMovieList$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $channelId;
    final /* synthetic */ boolean $isRefresh;
    final /* synthetic */ JsonObject $jsonObject;
    final /* synthetic */ Map<String, String> $selectItems;
    Object L$0;
    Object L$1;
    Object L$2;
    boolean Z$0;
    int label;
    final /* synthetic */ MovieViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MovieViewModel$getMovieList$2(JsonObject jsonObject, MovieViewModel movieViewModel, boolean z10, String str, Map<String, String> map, Continuation<? super MovieViewModel$getMovieList$2> continuation) {
        super(2, continuation);
        this.$jsonObject = jsonObject;
        this.this$0 = movieViewModel;
        this.$isRefresh = z10;
        this.$channelId = str;
        this.$selectItems = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MovieViewModel$getMovieList$2(this.$jsonObject, this.this$0, this.$isRefresh, this.$channelId, this.$selectItems, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MovieViewModel$getMovieList$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        MovieViewModel movieViewModel;
        String str;
        boolean z10;
        Map<String, String> map;
        List<MovieItem> items;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                bh.b.a aVar = bh.b.f16471a;
                String string = this.$jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    movieViewModel = this.this$0;
                    boolean z11 = this.$isRefresh;
                    str = this.$channelId;
                    Map<String, String> map2 = this.$selectItems;
                    ol.c cVar = movieViewModel.f45815e;
                    String strA = vg.a.f77324a.a();
                    this.L$0 = movieViewModel;
                    this.L$1 = str;
                    this.L$2 = map2;
                    this.Z$0 = z11;
                    this.label = 1;
                    obj = cVar.a(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    z10 = z11;
                    map = map2;
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = this.Z$0;
            map = (Map) this.L$2;
            str = (String) this.L$1;
            movieViewModel = (MovieViewModel) this.L$0;
            ResultKt.b(obj);
            RefreshBaseDto refreshBaseDto = (RefreshBaseDto) obj;
            refreshBaseDto.setRefresh(z10);
            MovieBean movieBean = (MovieBean) refreshBaseDto.getData();
            if (movieBean != null && (items = movieBean.getItems()) != null && items.size() > 1) {
                MovieItem movieItem = items.get(items.size() - 1);
                movieItem.setChannelId(str);
                movieItem.setSelectItems(map);
            }
            movieViewModel.m().n(refreshBaseDto);
        } catch (Exception e11) {
            e11.printStackTrace();
            androidx.p009lifecycle.b0 b0VarM = this.this$0.m();
            String message = e11.getMessage();
            String str2 = message == null ? "" : message;
            String message2 = e11.getMessage();
            b0VarM.n(new RefreshBaseDto(str2, TmcConstants.COLD_OPEN_TYPE, null, message2 == null ? "" : message2, this.$isRefresh));
        }
        return Unit.f67061a;
    }
}
