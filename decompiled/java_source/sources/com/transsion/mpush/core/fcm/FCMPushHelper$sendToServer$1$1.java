package com.transsion.mpush.core.fcm;

import android.app.Application;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.mpush.core.net.PushNetworkApi;
import com.transsion.mpush.core.utils.PushPreference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mpush.core.fcm.FCMPushHelper$sendToServer$1$1", f = "FCMPushHelper.kt", l = {92}, m = "invokeSuspend")
@SourceDebugExtension
final class FCMPushHelper$sendToServer$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ JSONObject $json;
    final /* synthetic */ String $regHash;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ FCMPushHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FCMPushHelper$sendToServer$1$1(FCMPushHelper fCMPushHelper, JSONObject jSONObject, String str, Continuation<? super FCMPushHelper$sendToServer$1$1> continuation) {
        super(2, continuation);
        this.this$0 = fCMPushHelper;
        this.$json = jSONObject;
        this.$regHash = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FCMPushHelper$sendToServer$1$1 fCMPushHelper$sendToServer$1$1 = new FCMPushHelper$sendToServer$1$1(this.this$0, this.$json, this.$regHash, continuation);
        fCMPushHelper$sendToServer$1$1.L$0 = obj;
        return fCMPushHelper$sendToServer$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FCMPushHelper$sendToServer$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        FCMPushHelper fCMPushHelper;
        String str;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                fCMPushHelper = this.this$0;
                JSONObject jSONObject = this.$json;
                String str2 = this.$regHash;
                Result.Companion companion = Result.INSTANCE;
                PushNetworkApi pushNetworkApiR = fCMPushHelper.r();
                String apiPathPrefix = ln.a.f68978a.i().getApiPathPrefix();
                String strA = vg.a.f77324a.a();
                String string = jSONObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyS = fCMPushHelper.s(string);
                this.L$0 = fCMPushHelper;
                this.L$1 = str2;
                this.label = 1;
                obj = pushNetworkApiR.pushRegister(apiPathPrefix, strA, requestBodyS, this);
                if (obj == objF) {
                    return objF;
                }
                str = str2;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) this.L$1;
                fCMPushHelper = (FCMPushHelper) this.L$0;
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                Application application = fCMPushHelper.f47493h;
                if (application != null) {
                    PushPreference.f47608a.r(application, str);
                }
                lg.a.C0828a.f(lg.a.f68839a, fCMPushHelper.f47486a, "onSuccess, retry:" + fCMPushHelper.f47496k, false, 4, null);
            } else {
                lg.a.C0828a.f(lg.a.f68839a, fCMPushHelper.f47486a, "onFailure code " + baseDto.getCode() + " retry:" + fCMPushHelper.f47496k, false, 4, null);
                fCMPushHelper.C();
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        FCMPushHelper fCMPushHelper2 = this.this$0;
        String str3 = this.$regHash;
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.f(lg.a.f68839a, fCMPushHelper2.f47486a, "send error: " + thM457exceptionOrNullimpl.getMessage() + " retry:" + fCMPushHelper2.f47496k + ",refresh:" + str3, false, 4, null);
            fCMPushHelper2.C();
        }
        return Unit.f67061a;
    }
}
