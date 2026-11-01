package com.transsion.shorttv.viewmodel;

import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.Subject;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$favorite$1", f = "ShortTvViewModel.kt", l = {680}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvViewModel$favorite$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $favorite;
    final /* synthetic */ ShortTVFavInfo $favoriteInfo;
    final /* synthetic */ Subject $subjectDetail;
    final /* synthetic */ String $subjectId;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$favorite$1(ShortTvViewModel shortTvViewModel, Subject subject, String str, boolean z10, ShortTVFavInfo shortTVFavInfo, Continuation<? super ShortTvViewModel$favorite$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$subjectDetail = subject;
        this.$subjectId = str;
        this.$favorite = z10;
        this.$favoriteInfo = shortTVFavInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$favorite$1(this.this$0, this.$subjectDetail, this.$subjectId, this.$favorite, this.$favoriteInfo, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$favorite$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                String str = this.$subjectId;
                boolean z10 = this.$favorite;
                ShortTvViewModel shortTvViewModel = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("subjectId", str);
                jSONObject.put(EventConstants.KEY_ACTION, !z10 ? 1 : 0);
                os.a aVar = shortTvViewModel.f53676a;
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string = jSONObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string, MediaType.INSTANCE.parse("application/json"));
                this.label = 1;
                obj = os.a.C0875a.a(aVar, requestBodyCreate, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        ShortTVFavInfo shortTVFavInfo = this.$favoriteInfo;
        boolean z11 = this.$favorite;
        ShortTvViewModel shortTvViewModel2 = this.this$0;
        String str2 = this.$subjectId;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            if (shortTVFavInfo.getHasFavorite() != (!z11)) {
                shortTVFavInfo.setHasFavorite(!z11);
                if (z11) {
                    String favoriteNum = shortTVFavInfo.getFavoriteNum();
                    shortTVFavInfo.setFavoriteNum(String.valueOf((favoriteNum != null ? Long.parseLong(favoriteNum) : 1L) - 1));
                } else {
                    String favoriteNum2 = shortTVFavInfo.getFavoriteNum();
                    shortTVFavInfo.setFavoriteNum(String.valueOf((favoriteNum2 != null ? Long.parseLong(favoriteNum2) : 0L) + 1));
                }
                shortTvViewModel2.D.q(Boxing.a(!z11));
                shortTvViewModel2.F.q(!z11 ? js.g.f66267a : js.h.f66268a);
                uy.c cVar = new uy.c(str2, true ^ shortTVFavInfo.getHasFavorite(), String.valueOf(shortTVFavInfo.getFavoriteNum()));
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = uy.c.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, cVar, 0L);
                shortTvViewModel2.r1(str2, shortTVFavInfo);
            }
        }
        ShortTvViewModel shortTvViewModel3 = this.this$0;
        boolean z12 = this.$favorite;
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            shortTvViewModel3.D.q(Boxing.a(z12));
            shortTvViewModel3.F.q(js.i.f66269a);
        }
        this.this$0.x0();
        return Unit.f67061a;
    }
}
