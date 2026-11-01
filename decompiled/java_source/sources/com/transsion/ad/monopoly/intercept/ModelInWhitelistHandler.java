package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ModelInWhitelistHandler extends a {
    /* JADX WARN: Code duplicated, block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        ModelInWhitelistHandler$doHandle$1 modelInWhitelistHandler$doHandle$1;
        String lowerCase;
        String lowerCase2;
        AdPlansHitResponse adPlansHitResponse;
        AdPlansHitResponse adPlansHitResponse2;
        if (continuation instanceof ModelInWhitelistHandler$doHandle$1) {
            modelInWhitelistHandler$doHandle$1 = (ModelInWhitelistHandler$doHandle$1) continuation;
            int i11 = modelInWhitelistHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                modelInWhitelistHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                modelInWhitelistHandler$doHandle$1 = new ModelInWhitelistHandler$doHandle$1(this, continuation);
            }
        } else {
            modelInWhitelistHandler$doHandle$1 = new ModelInWhitelistHandler$doHandle$1(this, continuation);
        }
        Object objB = modelInWhitelistHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = modelInWhitelistHandler$doHandle$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(objB);
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
                return e();
            }
            if (i12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objB);
            adPlansHitResponse2 = (AdPlansHitResponse) objB;
            if (adPlansHitResponse2 != null) {
                return adPlansHitResponse2;
            }
            return e();
        }
        ResultKt.b(objB);
        List<String> model = mbAdDbPlans != null ? mbAdDbPlans.getModel() : null;
        List<String> list = model;
        if (list == null || list.isEmpty()) {
            a aVarC = c();
            if (aVarC != null) {
                modelInWhitelistHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, modelInWhitelistHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse = (AdPlansHitResponse) objB;
                if (adPlansHitResponse != null) {
                    return adPlansHitResponse;
                }
            }
            return e();
        }
        String strL = ih.b.f65241a.l();
        List<String> list2 = model;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it = list2.iterator();
            do {
                if (it.hasNext()) {
                    String str2 = (String) it.next();
                    Locale locale = Locale.ROOT;
                    String lowerCase3 = str2.toLowerCase(locale);
                    Intrinsics.g(lowerCase3, "toLowerCase(...)");
                    String lowerCase4 = strL.toLowerCase(locale);
                    Intrinsics.g(lowerCase4, "toLowerCase(...)");
                    if (StringsKt.c0(lowerCase3, lowerCase4, false, 2, null)) {
                        break;
                    }
                    lowerCase = strL.toLowerCase(locale);
                    Intrinsics.g(lowerCase, "toLowerCase(...)");
                    lowerCase2 = str2.toLowerCase(locale);
                    Intrinsics.g(lowerCase2, "toLowerCase(...)");
                }
            } while (!StringsKt.c0(lowerCase, lowerCase2, false, 2, null));
            a aVarC2 = c();
            if (aVarC2 != null) {
                modelInWhitelistHandler$doHandle$1.label = 2;
                objB = aVarC2.b(str, mbAdDbPlans, map, modelInWhitelistHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
                adPlansHitResponse2 = (AdPlansHitResponse) objB;
                if (adPlansHitResponse2 != null) {
                    return adPlansHitResponse2;
                }
            }
            return e();
        }
        return new AdPlansHitResponse(false, "当前手机机型不在白名单中");
    }
}
