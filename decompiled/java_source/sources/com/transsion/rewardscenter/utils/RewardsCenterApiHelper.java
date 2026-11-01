package com.transsion.rewardscenter.utils;

import com.cloud.tmc.integration.net.UrlKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.rewardscenterapi.ClaimReceiverRequest;
import com.transsion.rewardscenterapi.PhoneInfo;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class RewardsCenterApiHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RewardsCenterApiHelper f51292a = new RewardsCenterApiHelper();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f51293b = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.utils.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RewardsCenterApiHelper.h();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f51294c = 8;

    private RewardsCenterApiHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final up.a h() {
        return (up.a) zg.c.f79414e.a().h(up.a.class);
    }

    private final RequestBody i(Function1 function1) {
        RequestBody.Companion companion = RequestBody.INSTANCE;
        JSONObject jSONObject = new JSONObject();
        function1.invoke(jSONObject);
        String string = jSONObject.toString();
        Intrinsics.g(string, "toString(...)");
        return companion.create(string, MediaType.INSTANCE.parse("application/json"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        buildBody.put(UrlKt.KEY_MINI_GAID, ih.b.f65241a.i());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(String str, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        buildBody.put("drawResultId", str);
        return Unit.f67061a;
    }

    public static /* synthetic */ Object o(RewardsCenterApiHelper rewardsCenterApiHelper, Function2 function2, Function1 function1, Continuation continuation, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function2 = null;
        }
        return rewardsCenterApiHelper.n(function2, function1, continuation);
    }

    private final up.a p() {
        return (up.a) f51293b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(String str, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        buildBody.put("activityId", str);
        buildBody.put("num", 1);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(String str, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        buildBody.put("skuId", str);
        buildBody.put("clientOrderId", UUID.randomUUID().toString());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v(String str, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        if (str == null) {
            str = "";
        }
        buildBody.put("taskId", str);
        buildBody.put(UrlKt.KEY_MINI_GAID, ih.b.f65241a.i());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(ClaimReceiverRequest claimReceiverRequest, JSONObject buildBody) throws JSONException {
        Intrinsics.h(buildBody, "$this$buildBody");
        Object drawResultId = claimReceiverRequest.getDrawResultId();
        if (drawResultId == null) {
            drawResultId = "";
        }
        buildBody.put("drawResultId", drawResultId);
        Object receiverName = claimReceiverRequest.getReceiverName();
        if (receiverName == null) {
            receiverName = "";
        }
        buildBody.put("receiverName", receiverName);
        JSONArray jSONArray = new JSONArray();
        List<PhoneInfo> phone = claimReceiverRequest.getPhone();
        if (phone != null) {
            for (PhoneInfo phoneInfo : phone) {
                JSONObject jSONObject = new JSONObject();
                String countryNo = phoneInfo.getCountryNo();
                if (countryNo == null) {
                    countryNo = "";
                }
                jSONObject.put("countryNo", countryNo);
                String number = phoneInfo.getNumber();
                if (number == null) {
                    number = "";
                }
                jSONObject.put("number", number);
                String countryCode = phoneInfo.getCountryCode();
                if (countryCode == null) {
                    countryCode = "";
                }
                jSONObject.put("countryCode", countryCode);
                jSONArray.put(jSONObject);
            }
        }
        Unit unit = Unit.f67061a;
        buildBody.put("phone", jSONArray);
        Object address = claimReceiverRequest.getAddress();
        buildBody.put(PlaceTypes.ADDRESS, address != null ? address : "");
        String email = claimReceiverRequest.getEmail();
        if (email != null && !StringsKt.q0(email)) {
            buildBody.put("email", claimReceiverRequest.getEmail());
        }
        String postCode = claimReceiverRequest.getPostCode();
        if (postCode != null && !StringsKt.q0(postCode)) {
            buildBody.put("postCode", claimReceiverRequest.getPostCode());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object j(Function2 function2, Function1 function1, Continuation continuation) throws Throwable {
        RewardsCenterApiHelper$checkDadaSetDefault$1 rewardsCenterApiHelper$checkDadaSetDefault$1;
        Object objM454constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$checkDadaSetDefault$1) {
            rewardsCenterApiHelper$checkDadaSetDefault$1 = (RewardsCenterApiHelper$checkDadaSetDefault$1) continuation;
            int i11 = rewardsCenterApiHelper$checkDadaSetDefault$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$checkDadaSetDefault$1.label = i11 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$checkDadaSetDefault$1 = new RewardsCenterApiHelper$checkDadaSetDefault$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$checkDadaSetDefault$1 = new RewardsCenterApiHelper$checkDadaSetDefault$1(this, continuation);
        }
        RewardsCenterApiHelper$checkDadaSetDefault$1 rewardsCenterApiHelper$checkDadaSetDefault$2 = rewardsCenterApiHelper$checkDadaSetDefault$1;
        Object objA = rewardsCenterApiHelper$checkDadaSetDefault$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = rewardsCenterApiHelper$checkDadaSetDefault$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objA);
                RequestBody requestBodyI = i(new Function1() { // from class: com.transsion.rewardscenter.utils.i
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.k((JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                up.a aVarP = p();
                rewardsCenterApiHelper$checkDadaSetDefault$2.L$0 = function2;
                rewardsCenterApiHelper$checkDadaSetDefault$2.L$1 = function1;
                rewardsCenterApiHelper$checkDadaSetDefault$2.label = 1;
                objA = up.a.C0938a.a(aVarP, null, requestBodyI, rewardsCenterApiHelper$checkDadaSetDefault$2, 1, null);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$checkDadaSetDefault$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$checkDadaSetDefault$2.L$0;
                ResultKt.b(objA);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objA);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM457exceptionOrNullimpl.getMessage());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object l(final String str, Function2 function2, Function1 function1, Continuation continuation) throws Throwable {
        RewardsCenterApiHelper$claimReward$1 rewardsCenterApiHelper$claimReward$1;
        Object objM454constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$claimReward$1) {
            rewardsCenterApiHelper$claimReward$1 = (RewardsCenterApiHelper$claimReward$1) continuation;
            int i11 = rewardsCenterApiHelper$claimReward$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$claimReward$1.label = i11 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$claimReward$1 = new RewardsCenterApiHelper$claimReward$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$claimReward$1 = new RewardsCenterApiHelper$claimReward$1(this, continuation);
        }
        RewardsCenterApiHelper$claimReward$1 rewardsCenterApiHelper$claimReward$2 = rewardsCenterApiHelper$claimReward$1;
        Object objB = rewardsCenterApiHelper$claimReward$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = rewardsCenterApiHelper$claimReward$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objB);
                RequestBody requestBodyI = i(new Function1() { // from class: com.transsion.rewardscenter.utils.k
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.m(str, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                up.a aVarP = p();
                rewardsCenterApiHelper$claimReward$2.L$0 = function2;
                rewardsCenterApiHelper$claimReward$2.L$1 = function1;
                rewardsCenterApiHelper$claimReward$2.label = 1;
                objB = up.a.C0938a.b(aVarP, null, requestBodyI, rewardsCenterApiHelper$claimReward$2, 1, null);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$claimReward$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$claimReward$2.L$0;
                ResultKt.b(objB);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objB);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM457exceptionOrNullimpl.getMessage());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(Function2 function2, Function1 function1, Continuation continuation) throws Throwable {
        RewardsCenterApiHelper$fetchAdTaskInfo$1 rewardsCenterApiHelper$fetchAdTaskInfo$1;
        Object objM454constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$fetchAdTaskInfo$1) {
            rewardsCenterApiHelper$fetchAdTaskInfo$1 = (RewardsCenterApiHelper$fetchAdTaskInfo$1) continuation;
            int i11 = rewardsCenterApiHelper$fetchAdTaskInfo$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$fetchAdTaskInfo$1.label = i11 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$fetchAdTaskInfo$1 = new RewardsCenterApiHelper$fetchAdTaskInfo$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$fetchAdTaskInfo$1 = new RewardsCenterApiHelper$fetchAdTaskInfo$1(this, continuation);
        }
        Object objC = rewardsCenterApiHelper$fetchAdTaskInfo$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = rewardsCenterApiHelper$fetchAdTaskInfo$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objC);
                Result.Companion companion = Result.INSTANCE;
                up.a aVarP = p();
                rewardsCenterApiHelper$fetchAdTaskInfo$1.L$0 = function2;
                rewardsCenterApiHelper$fetchAdTaskInfo$1.L$1 = function1;
                rewardsCenterApiHelper$fetchAdTaskInfo$1.label = 1;
                objC = up.a.C0938a.c(aVarP, null, rewardsCenterApiHelper$fetchAdTaskInfo$1, 1, null);
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$fetchAdTaskInfo$1.L$1;
                function2 = (Function2) rewardsCenterApiHelper$fetchAdTaskInfo$1.L$0;
                ResultKt.b(objC);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objC);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM457exceptionOrNullimpl.getMessage());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object q(final String str, Function2 function2, Function1 function1, Continuation continuation) throws Throwable {
        RewardsCenterApiHelper$redeemLottery$1 rewardsCenterApiHelper$redeemLottery$1;
        Object objM454constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$redeemLottery$1) {
            rewardsCenterApiHelper$redeemLottery$1 = (RewardsCenterApiHelper$redeemLottery$1) continuation;
            int i11 = rewardsCenterApiHelper$redeemLottery$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$redeemLottery$1.label = i11 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$redeemLottery$1 = new RewardsCenterApiHelper$redeemLottery$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$redeemLottery$1 = new RewardsCenterApiHelper$redeemLottery$1(this, continuation);
        }
        RewardsCenterApiHelper$redeemLottery$1 rewardsCenterApiHelper$redeemLottery$2 = rewardsCenterApiHelper$redeemLottery$1;
        Object objG = rewardsCenterApiHelper$redeemLottery$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = rewardsCenterApiHelper$redeemLottery$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objG);
                RequestBody requestBodyI = i(new Function1() { // from class: com.transsion.rewardscenter.utils.m
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.r(str, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                up.a aVarP = p();
                rewardsCenterApiHelper$redeemLottery$2.L$0 = function2;
                rewardsCenterApiHelper$redeemLottery$2.L$1 = function1;
                rewardsCenterApiHelper$redeemLottery$2.label = 1;
                objG = up.a.C0938a.g(aVarP, null, requestBodyI, rewardsCenterApiHelper$redeemLottery$2, 1, null);
                if (objG == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$redeemLottery$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$redeemLottery$2.L$0;
                ResultKt.b(objG);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objG);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM457exceptionOrNullimpl.getMessage());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object s(final String str, Function2 function2, Function1 function1, Continuation continuation) throws Throwable {
        RewardsCenterApiHelper$redeemProduct$1 rewardsCenterApiHelper$redeemProduct$1;
        Object objM454constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$redeemProduct$1) {
            rewardsCenterApiHelper$redeemProduct$1 = (RewardsCenterApiHelper$redeemProduct$1) continuation;
            int i11 = rewardsCenterApiHelper$redeemProduct$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$redeemProduct$1.label = i11 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$redeemProduct$1 = new RewardsCenterApiHelper$redeemProduct$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$redeemProduct$1 = new RewardsCenterApiHelper$redeemProduct$1(this, continuation);
        }
        RewardsCenterApiHelper$redeemProduct$1 rewardsCenterApiHelper$redeemProduct$2 = rewardsCenterApiHelper$redeemProduct$1;
        Object objH = rewardsCenterApiHelper$redeemProduct$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = rewardsCenterApiHelper$redeemProduct$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objH);
                RequestBody requestBodyI = i(new Function1() { // from class: com.transsion.rewardscenter.utils.h
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.t(str, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                up.a aVarP = p();
                rewardsCenterApiHelper$redeemProduct$2.L$0 = function2;
                rewardsCenterApiHelper$redeemProduct$2.L$1 = function1;
                rewardsCenterApiHelper$redeemProduct$2.label = 1;
                objH = up.a.C0938a.h(aVarP, null, requestBodyI, rewardsCenterApiHelper$redeemProduct$2, 1, null);
                if (objH == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$redeemProduct$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$redeemProduct$2.L$0;
                ResultKt.b(objH);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objH);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM457exceptionOrNullimpl.getMessage());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object u(final String str, Function2 function2, Function1 function1, Continuation continuation) throws Throwable {
        RewardsCenterApiHelper$startClaim$1 rewardsCenterApiHelper$startClaim$1;
        Object objM454constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$startClaim$1) {
            rewardsCenterApiHelper$startClaim$1 = (RewardsCenterApiHelper$startClaim$1) continuation;
            int i11 = rewardsCenterApiHelper$startClaim$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$startClaim$1.label = i11 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$startClaim$1 = new RewardsCenterApiHelper$startClaim$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$startClaim$1 = new RewardsCenterApiHelper$startClaim$1(this, continuation);
        }
        RewardsCenterApiHelper$startClaim$1 rewardsCenterApiHelper$startClaim$2 = rewardsCenterApiHelper$startClaim$1;
        Object objF = rewardsCenterApiHelper$startClaim$2.result;
        Object objF2 = IntrinsicsKt.f();
        int i12 = rewardsCenterApiHelper$startClaim$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objF);
                RequestBody requestBodyI = i(new Function1() { // from class: com.transsion.rewardscenter.utils.j
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.v(str, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                up.a aVarP = p();
                rewardsCenterApiHelper$startClaim$2.L$0 = function2;
                rewardsCenterApiHelper$startClaim$2.L$1 = function1;
                rewardsCenterApiHelper$startClaim$2.label = 1;
                objF = up.a.C0938a.f(aVarP, null, requestBodyI, rewardsCenterApiHelper$startClaim$2, 1, null);
                if (objF == objF2) {
                    return objF2;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$startClaim$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$startClaim$2.L$0;
                ResultKt.b(objF);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objF);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            function2.invoke(null, thM457exceptionOrNullimpl.getMessage());
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object w(final ClaimReceiverRequest claimReceiverRequest, Function2 function2, Function1 function1, Continuation continuation) throws Throwable {
        RewardsCenterApiHelper$submitClaimReceiverInfo$1 rewardsCenterApiHelper$submitClaimReceiverInfo$1;
        Object objM454constructorimpl;
        if (continuation instanceof RewardsCenterApiHelper$submitClaimReceiverInfo$1) {
            rewardsCenterApiHelper$submitClaimReceiverInfo$1 = (RewardsCenterApiHelper$submitClaimReceiverInfo$1) continuation;
            int i11 = rewardsCenterApiHelper$submitClaimReceiverInfo$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rewardsCenterApiHelper$submitClaimReceiverInfo$1.label = i11 - Integer.MIN_VALUE;
            } else {
                rewardsCenterApiHelper$submitClaimReceiverInfo$1 = new RewardsCenterApiHelper$submitClaimReceiverInfo$1(this, continuation);
            }
        } else {
            rewardsCenterApiHelper$submitClaimReceiverInfo$1 = new RewardsCenterApiHelper$submitClaimReceiverInfo$1(this, continuation);
        }
        RewardsCenterApiHelper$submitClaimReceiverInfo$1 rewardsCenterApiHelper$submitClaimReceiverInfo$2 = rewardsCenterApiHelper$submitClaimReceiverInfo$1;
        Object objI = rewardsCenterApiHelper$submitClaimReceiverInfo$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = rewardsCenterApiHelper$submitClaimReceiverInfo$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objI);
                RequestBody requestBodyI = i(new Function1() { // from class: com.transsion.rewardscenter.utils.l
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RewardsCenterApiHelper.x(claimReceiverRequest, (JSONObject) obj);
                    }
                });
                Result.Companion companion = Result.INSTANCE;
                up.a aVarP = p();
                rewardsCenterApiHelper$submitClaimReceiverInfo$2.L$0 = function2;
                rewardsCenterApiHelper$submitClaimReceiverInfo$2.L$1 = function1;
                rewardsCenterApiHelper$submitClaimReceiverInfo$2.label = 1;
                objI = up.a.C0938a.i(aVarP, null, requestBodyI, rewardsCenterApiHelper$submitClaimReceiverInfo$2, 1, null);
                if (objI == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function1 = (Function1) rewardsCenterApiHelper$submitClaimReceiverInfo$2.L$1;
                function2 = (Function2) rewardsCenterApiHelper$submitClaimReceiverInfo$2.L$0;
                ResultKt.b(objI);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objI);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                function1.invoke(baseDto.getData());
            } else if (function2 != null) {
                function2.invoke(baseDto.getCode(), baseDto.getMsg());
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null && function2 != null) {
            function2.invoke(null, thM457exceptionOrNullimpl.getMessage());
        }
        return Unit.f67061a;
    }
}
