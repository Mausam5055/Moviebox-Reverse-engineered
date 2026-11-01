package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ValidTimesHandler extends a {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        ValidTimesHandler$doHandle$1 validTimesHandler$doHandle$1;
        Integer displayTimes;
        if (continuation instanceof ValidTimesHandler$doHandle$1) {
            validTimesHandler$doHandle$1 = (ValidTimesHandler$doHandle$1) continuation;
            int i11 = validTimesHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                validTimesHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                validTimesHandler$doHandle$1 = new ValidTimesHandler$doHandle$1(this, continuation);
            }
        } else {
            validTimesHandler$doHandle$1 = new ValidTimesHandler$doHandle$1(this, continuation);
        }
        Object objB = validTimesHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = validTimesHandler$doHandle$1.label;
        if (i12 == 0) {
            ResultKt.b(objB);
            if (NonAdShowedTimesManager.f42134a.b(mbAdDbPlans) >= ((mbAdDbPlans == null || (displayTimes = mbAdDbPlans.getDisplayTimes()) == null) ? 0 : displayTimes.intValue())) {
                return new AdPlansHitResponse(false, "展示次数已经达到上限");
            }
            a aVarC = c();
            if (aVarC != null) {
                validTimesHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, validTimesHandler$doHandle$1);
                if (objB == objF) {
                    return objF;
                }
            }
            return e();
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objB);
        AdPlansHitResponse adPlansHitResponse = (AdPlansHitResponse) objB;
        if (adPlansHitResponse != null) {
            return adPlansHitResponse;
        }
        return e();
    }
}
