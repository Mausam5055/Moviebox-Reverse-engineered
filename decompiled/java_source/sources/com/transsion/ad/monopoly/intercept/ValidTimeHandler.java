package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import ti.p;

/* JADX INFO: loaded from: classes5.dex */
public final class ValidTimeHandler extends a {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.ad.monopoly.intercept.a
    public Object b(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) throws Throwable {
        ValidTimeHandler$doHandle$1 validTimeHandler$doHandle$1;
        String endTime;
        String startTime;
        if (continuation instanceof ValidTimeHandler$doHandle$1) {
            validTimeHandler$doHandle$1 = (ValidTimeHandler$doHandle$1) continuation;
            int i11 = validTimeHandler$doHandle$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                validTimeHandler$doHandle$1.label = i11 - Integer.MIN_VALUE;
            } else {
                validTimeHandler$doHandle$1 = new ValidTimeHandler$doHandle$1(this, continuation);
            }
        } else {
            validTimeHandler$doHandle$1 = new ValidTimeHandler$doHandle$1(this, continuation);
        }
        Object objB = validTimeHandler$doHandle$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = validTimeHandler$doHandle$1.label;
        if (i12 == 0) {
            ResultKt.b(objB);
            long jD = p.f76266a.d();
            long j11 = 0;
            long j12 = (mbAdDbPlans == null || (startTime = mbAdDbPlans.getStartTime()) == null) ? 0L : Long.parseLong(startTime);
            if (mbAdDbPlans != null && (endTime = mbAdDbPlans.getEndTime()) != null) {
                j11 = Long.parseLong(endTime);
            }
            if (j12 > jD || jD > j11) {
                return new AdPlansHitResponse(false, "当前不在展示时间内--有效期");
            }
            a aVarC = c();
            if (aVarC != null) {
                validTimeHandler$doHandle$1.label = 1;
                objB = aVarC.b(str, mbAdDbPlans, map, validTimeHandler$doHandle$1);
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
