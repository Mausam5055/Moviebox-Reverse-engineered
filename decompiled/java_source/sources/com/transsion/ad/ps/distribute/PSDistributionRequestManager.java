package com.transsion.ad.ps.distribute;

import android.text.TextUtils;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.ps.PSReportUtil;
import com.transsion.ad.ps.model.PsLinkDto;
import com.transsion.ad.ps.model.RecommendInfo;
import hi.f;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class PSDistributionRequestManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PSDistributionRequestManager f42185a = new PSDistributionRequestManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42186b = LazyKt.b(new Function0() { // from class: com.transsion.ad.ps.distribute.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PSDistributionRequestManager.f();
        }
    });

    private PSDistributionRequestManager() {
    }

    private final String b() {
        String simpleName = PSDistributionRequestManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final JSONObject c(int i11, int i12, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bu", "mb");
        jSONObject.put("pageIndex", i11);
        jSONObject.put("pageSize", i12);
        jSONObject.put("recommendCode", "mb_apps");
        if (!TextUtils.isEmpty(str)) {
            jSONObject.put("pushModel", str);
        }
        for (Map.Entry entry : qi.a.INSTANCE.a(System.currentTimeMillis()).entrySet()) {
            jSONObject.put((String) entry.getKey(), entry.getValue());
        }
        return jSONObject;
    }

    private final qi.a e() {
        return (qi.a) f42186b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qi.a f() {
        return (qi.a) zg.c.f79414e.a().h(qi.a.class);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    public final Object d(int i11, int i12, String str, String str2, di.a aVar, Continuation continuation) throws Throwable {
        PSDistributionRequestManager$getPsLinkListV2$1 pSDistributionRequestManager$getPsLinkListV2$1;
        di.a aVar2;
        di.a aVar3;
        String str3;
        Object objM454constructorimpl;
        Unit unit;
        List<RecommendInfo> data;
        List<RecommendInfo> data2;
        if (continuation instanceof PSDistributionRequestManager$getPsLinkListV2$1) {
            pSDistributionRequestManager$getPsLinkListV2$1 = (PSDistributionRequestManager$getPsLinkListV2$1) continuation;
            int i13 = pSDistributionRequestManager$getPsLinkListV2$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                pSDistributionRequestManager$getPsLinkListV2$1.label = i13 - Integer.MIN_VALUE;
            } else {
                pSDistributionRequestManager$getPsLinkListV2$1 = new PSDistributionRequestManager$getPsLinkListV2$1(this, continuation);
            }
        } else {
            pSDistributionRequestManager$getPsLinkListV2$1 = new PSDistributionRequestManager$getPsLinkListV2$1(this, continuation);
        }
        PSDistributionRequestManager$getPsLinkListV2$1 pSDistributionRequestManager$getPsLinkListV2$2 = pSDistributionRequestManager$getPsLinkListV2$1;
        Object objB = pSDistributionRequestManager$getPsLinkListV2$2.result;
        Object objF = IntrinsicsKt.f();
        int i14 = pSDistributionRequestManager$getPsLinkListV2$2.label;
        if (i14 == 0) {
            ResultKt.b(objB);
            JSONObject jSONObjectC = c(i11, i12, str2);
            f fVar = f.f64472a;
            String str4 = fVar.e() ? "https://feature-api.palmplaystore.com" : "https://test-feature-api.palmplaystore.com";
            if (fVar.b()) {
                oi.a.i(oi.a.f71022a, b() + " --> getPsLinkListBySlot() --> scene = " + str + " --> url = " + str4 + " --> jsonObject = " + jSONObjectC, 0, false, 6, null);
            }
            PSReportUtil.f42170a.d(PSReportUtil.PSRequestState.REQUEST_TRIGGER, null, "", "", str);
            try {
                Result.Companion companion = Result.INSTANCE;
                qi.a aVarE = e();
                bh.b.a aVar4 = bh.b.f16471a;
                String string = jSONObjectC.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar4.a(string);
                pSDistributionRequestManager$getPsLinkListV2$2.L$0 = str;
                aVar2 = aVar;
                try {
                    pSDistributionRequestManager$getPsLinkListV2$2.L$1 = aVar2;
                    pSDistributionRequestManager$getPsLinkListV2$2.label = 1;
                    objB = aVarE.b(requestBodyA, str4, pSDistributionRequestManager$getPsLinkListV2$2);
                    if (objB == objF) {
                        return objF;
                    }
                    aVar3 = aVar2;
                    str3 = str;
                } catch (Throwable th2) {
                    th = th2;
                    aVar3 = aVar2;
                    str3 = str;
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                }
            } catch (Throwable th3) {
                th = th3;
                aVar2 = aVar;
            }
        } else {
            if (i14 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar3 = (di.a) pSDistributionRequestManager$getPsLinkListV2$2.L$1;
            str3 = (String) pSDistributionRequestManager$getPsLinkListV2$2.L$0;
            try {
                ResultKt.b(objB);
            } catch (Throwable th4) {
                th = th4;
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
            }
        }
        PsLinkDto psLinkDto = (PsLinkDto) objB;
        PSReportUtil.f42170a.d(PSReportUtil.PSRequestState.REQUEST_SUCCESS, (psLinkDto == null || (data2 = psLinkDto.getData()) == null) ? null : Boxing.d(data2.size()), "", "", str3);
        ArrayList arrayList = new ArrayList();
        if (psLinkDto != null && (data = psLinkDto.getData()) != null) {
            for (RecommendInfo recommendInfo : data) {
                if (qi.b.f73634a.n() || !TextUtils.isEmpty(recommendInfo.getGpLink())) {
                    arrayList.add(recommendInfo);
                }
            }
        }
        if (aVar3 != null) {
            aVar3.v(arrayList);
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        objM454constructorimpl = Result.m454constructorimpl(unit);
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            PSReportUtil.f42170a.d(PSReportUtil.PSRequestState.REQUEST_FAIL, null, thM457exceptionOrNullimpl.getMessage(), "", str3);
            if (aVar3 != null) {
                aVar3.e(new TAdErrorCode(0, String.valueOf(thM457exceptionOrNullimpl.getMessage())), null);
            }
        }
        return Unit.f67061a;
    }
}
