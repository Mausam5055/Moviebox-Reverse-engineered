package com.transsion.ad.ps.activate;

import android.os.SystemClock;
import com.cloud.tmc.integration.net.UrlKt;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.transsion.ad.ps.PSReportUtil;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import hi.f;
import ih.b;
import java.util.List;
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
import okhttp3.RequestBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.activate.PSActivateRequest$getPsActivateList$3", f = "PSActivateRequest.kt", l = {MBSupportMuteAdType.REWARD_VIDEO, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, m = "invokeSuspend")
final class PSActivateRequest$getPsActivateList$3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    PSActivateRequest$getPsActivateList$3(Continuation<? super PSActivateRequest$getPsActivateList$3> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PSActivateRequest$getPsActivateList$3(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PSActivateRequest$getPsActivateList$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00f1 A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:7:0x0017, B:56:0x0167, B:14:0x002b, B:34:0x00e7, B:36:0x00f1, B:38:0x00fb, B:40:0x0101, B:42:0x010b, B:43:0x012c, B:45:0x0132, B:47:0x0138, B:49:0x0145, B:51:0x0156, B:53:0x015c, B:17:0x003f, B:24:0x0070, B:28:0x0080, B:30:0x0086, B:31:0x00b0, B:20:0x004a), top: B:65:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:41:0x010a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0143  */
    /* JADX WARN: Code duplicated, block: B:51:0x0156 A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:7:0x0017, B:56:0x0167, B:14:0x002b, B:34:0x00e7, B:36:0x00f1, B:38:0x00fb, B:40:0x0101, B:42:0x010b, B:43:0x012c, B:45:0x0132, B:47:0x0138, B:49:0x0145, B:51:0x0156, B:53:0x015c, B:17:0x003f, B:24:0x0070, B:28:0x0080, B:30:0x0086, B:31:0x00b0, B:20:0x004a), top: B:65:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:52:0x015b  */
    /* JADX WARN: Code duplicated, block: B:55:0x0166 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:62:0x0186  */
    /* JADX WARN: Instruction removed from duplicated block: B:62:0x0186, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        JSONObject jSONObject;
        String str;
        Object objC;
        JSONObject jSONObject2;
        String str2;
        Object objA;
        PsActivateDto psActivateDto;
        Integer numD;
        PSActivateManager pSActivateManager;
        List<PsActivateBean> data;
        List<PsActivateBean> data2;
        Integer numD2;
        List<PsActivateBean> data3;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    jSONObject = (JSONObject) this.L$2;
                    String str3 = (String) this.L$1;
                    JSONObject jSONObject3 = (JSONObject) this.L$0;
                    ResultKt.b(obj);
                    jSONObject2 = jSONObject3;
                    str = str3;
                    objC = obj;
                } else if (i11 == 2) {
                    String str4 = (String) this.L$0;
                    ResultKt.b(obj);
                    str2 = str4;
                    objA = obj;
                    psActivateDto = (PsActivateDto) objA;
                    if (f.f64472a.b()) {
                        oi.a aVar = oi.a.f71022a;
                        String strF = PSActivateRequest.f42173a.f();
                        if (psActivateDto != null || (data3 = psActivateDto.getData()) == null) {
                            numD2 = null;
                        } else {
                            numD2 = Boxing.d(data3.size());
                        }
                        oi.a.m(aVar, strF + " --> getPsActivateList() --> url = " + str2 + " --> postPsRecommendList = " + numD2, 0, false, 6, null);
                    }
                    PSReportUtil pSReportUtil = PSReportUtil.f42170a;
                    PSReportUtil.PSRequestState pSRequestState = PSReportUtil.PSRequestState.REQUEST_SUCCESS;
                    if (psActivateDto != null || (data2 = psActivateDto.getData()) == null) {
                        numD = null;
                    } else {
                        numD = Boxing.d(data2.size());
                    }
                    pSReportUtil.d(pSRequestState, numD, null, "", PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_ACTIVATE.getValue());
                    pSActivateManager = PSActivateManager.f42171a;
                    if (psActivateDto != null) {
                        data = psActivateDto.getData();
                    } else {
                        data = null;
                    }
                    this.L$0 = null;
                    this.label = 3;
                    if (pSActivateManager.g(data, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                PSActivateRequest.f42175c.set(false);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    oi.a.m(oi.a.f71022a, PSActivateRequest.f42173a.f() + " --> getPsActivateList() --> it = " + thM457exceptionOrNullimpl, 6, false, 4, null);
                    PSActivateRequest.f42175c.set(false);
                    PSActivateRequest.f42176d = SystemClock.elapsedRealtime() - 6900000;
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            Result.Companion companion = Result.INSTANCE;
            jSONObject = new JSONObject();
            jSONObject.put(UrlKt.KEY_MINI_GAID, b.f65241a.i());
            str = "pkgList";
            PSActivateManager pSActivateManager2 = PSActivateManager.f42171a;
            this.L$0 = jSONObject;
            this.L$1 = "pkgList";
            this.L$2 = jSONObject;
            this.label = 1;
            objC = pSActivateManager2.c(this);
            if (objC == objF) {
                return objF;
            }
            jSONObject2 = jSONObject;
            jSONObject.put(str, objC);
            f fVar = f.f64472a;
            str2 = fVar.e() ? "https://feature-api.palmplaystore.com" : "https://test-feature-api.palmplaystore.com";
            if (fVar.b()) {
                oi.a.m(oi.a.f71022a, PSActivateRequest.f42173a.f() + " --> getPsActivateList() --> url = " + str2 + " --> jsonObject = " + jSONObject2, 0, false, 6, null);
            }
            PSReportUtil.f42170a.d(PSReportUtil.PSRequestState.REQUEST_TRIGGER, null, null, "", PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_ACTIVATE.getValue());
            qi.a aVarI = PSActivateRequest.f42173a.i();
            bh.b.a aVar2 = bh.b.f16471a;
            String string = jSONObject2.toString();
            Intrinsics.g(string, "toString(...)");
            RequestBody requestBodyA = aVar2.a(string);
            this.L$0 = str2;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 2;
            objA = aVarI.a(requestBodyA, str2, this);
            if (objA == objF) {
                return objF;
            }
            psActivateDto = (PsActivateDto) objA;
            if (f.f64472a.b()) {
                oi.a aVar3 = oi.a.f71022a;
                String strF2 = PSActivateRequest.f42173a.f();
                if (psActivateDto != null) {
                    numD2 = null;
                } else {
                    numD2 = null;
                }
                oi.a.m(aVar3, strF2 + " --> getPsActivateList() --> url = " + str2 + " --> postPsRecommendList = " + numD2, 0, false, 6, null);
            }
            PSReportUtil pSReportUtil2 = PSReportUtil.f42170a;
            PSReportUtil.PSRequestState pSRequestState2 = PSReportUtil.PSRequestState.REQUEST_SUCCESS;
            if (psActivateDto != null) {
                numD = null;
            } else {
                numD = null;
            }
            pSReportUtil2.d(pSRequestState2, numD, null, "", PSReportUtil.PsDistributeSceneEnum.PS_DISTRIBUTE_SCENE_ACTIVATE.getValue());
            pSActivateManager = PSActivateManager.f42171a;
            if (psActivateDto != null) {
                data = psActivateDto.getData();
            } else {
                data = null;
            }
            this.L$0 = null;
            this.label = 3;
            if (pSActivateManager.g(data, this) == objF) {
                return objF;
            }
            PSActivateRequest.f42175c.set(false);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            oi.a.m(oi.a.f71022a, PSActivateRequest.f42173a.f() + " --> getPsActivateList() --> it = " + thM457exceptionOrNullimpl, 6, false, 4, null);
            PSActivateRequest.f42175c.set(false);
            PSActivateRequest.f42176d = SystemClock.elapsedRealtime() - 6900000;
        }
        return Unit.f67061a;
    }
}
