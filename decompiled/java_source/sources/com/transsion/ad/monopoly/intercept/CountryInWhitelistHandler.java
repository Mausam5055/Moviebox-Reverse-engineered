package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class CountryInWhitelistHandler extends a {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x0055  */
    /* JADX WARN: Code duplicated, block: B:20:0x0076 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x0077  */
    /* JADX WARN: Code duplicated, block: B:24:0x007f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0077 -> B:12:0x0037). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(java.util.List r8, java.lang.String r9, kotlin.coroutines.Continuation r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.monopoly.intercept.CountryInWhitelistHandler.h(java.util.List, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    /* JADX WARN: Code duplicated, block: B:32:0x007f  */
    /* JADX WARN: Code duplicated, block: B:34:0x008d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x0097  */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        CountryInWhitelistHandler$doHandle$1 countryInWhitelistHandler$doHandle$1;
        a aVarC;
        AdPlansHitResponse adPlansHitResponse;
        if (continuation instanceof CountryInWhitelistHandler$doHandle$1) {
            countryInWhitelistHandler$doHandle$1 = (CountryInWhitelistHandler$doHandle$1) continuation;
            int i11 = countryInWhitelistHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                countryInWhitelistHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                countryInWhitelistHandler$doHandle$1 = new CountryInWhitelistHandler$doHandle$1(this, continuation);
            }
        } else {
            countryInWhitelistHandler$doHandle$1 = new CountryInWhitelistHandler$doHandle$1(this, continuation);
        }
        Object objH = countryInWhitelistHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = countryInWhitelistHandler$doHandle$1.label;
        boolean zBooleanValue = true;
        if (i12 != 0) {
            if (i12 == 1) {
                map = (Map) countryInWhitelistHandler$doHandle$1.L$2;
                mbAdDbPlans = (MbAdDbPlans) countryInWhitelistHandler$doHandle$1.L$1;
                str = (String) countryInWhitelistHandler$doHandle$1.L$0;
                ResultKt.b(objH);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objH);
            }
            adPlansHitResponse = (AdPlansHitResponse) objH;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
            return e();
        }
        ResultKt.b(objH);
        List country = mbAdDbPlans != null ? mbAdDbPlans.getCountry() : null;
        List list = country;
        if (list != null && !list.isEmpty()) {
            String countryCode = mbAdDbPlans.getCountryCode();
            countryInWhitelistHandler$doHandle$1.L$0 = str;
            countryInWhitelistHandler$doHandle$1.L$1 = mbAdDbPlans;
            countryInWhitelistHandler$doHandle$1.L$2 = map;
            countryInWhitelistHandler$doHandle$1.label = 1;
            objH = h(country, countryCode, countryInWhitelistHandler$doHandle$1);
            if (objH == objF) {
                return objF;
            }
        } else {
            if (zBooleanValue) {
                return new AdPlansHitResponse(false, "当前国家不在白名单中");
            }
            aVarC = c();
            if (aVarC != null) {
                countryInWhitelistHandler$doHandle$1.L$0 = null;
                countryInWhitelistHandler$doHandle$1.L$1 = null;
                countryInWhitelistHandler$doHandle$1.L$2 = null;
                countryInWhitelistHandler$doHandle$1.label = 2;
                objH = aVarC.b(str, mbAdDbPlans, map, countryInWhitelistHandler$doHandle$1);
                if (objH == objF) {
                    return objF;
                }
                adPlansHitResponse = (AdPlansHitResponse) objH;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
            }
        }
        return e();
        zBooleanValue = ((Boolean) objH).booleanValue();
        if (zBooleanValue) {
            return new AdPlansHitResponse(false, "当前国家不在白名单中");
        }
        aVarC = c();
        if (aVarC != null) {
            countryInWhitelistHandler$doHandle$1.L$0 = null;
            countryInWhitelistHandler$doHandle$1.L$1 = null;
            countryInWhitelistHandler$doHandle$1.L$2 = null;
            countryInWhitelistHandler$doHandle$1.label = 2;
            objH = aVarC.b(str, mbAdDbPlans, map, countryInWhitelistHandler$doHandle$1);
            if (objH == objF) {
                return objF;
            }
            adPlansHitResponse = (AdPlansHitResponse) objH;
            if (adPlansHitResponse != null) {
                return adPlansHitResponse;
            }
        }
        return e();
    }
}
