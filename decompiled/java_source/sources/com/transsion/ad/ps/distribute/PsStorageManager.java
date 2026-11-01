package com.transsion.ad.ps.distribute;

import com.blankj.utilcode.util.o;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.ps.model.PsLinkAdInfo;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import ti.h;

/* JADX INFO: loaded from: classes5.dex */
public final class PsStorageManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PsStorageManager f42195a = new PsStorageManager();

    private PsStorageManager() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) throws Throwable {
        PsStorageManager$deleteInvalidFile$1 psStorageManager$deleteInvalidFile$1;
        HashSet hashSet;
        if (continuation instanceof PsStorageManager$deleteInvalidFile$1) {
            psStorageManager$deleteInvalidFile$1 = (PsStorageManager$deleteInvalidFile$1) continuation;
            int i11 = psStorageManager$deleteInvalidFile$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                psStorageManager$deleteInvalidFile$1.label = i11 - Integer.MIN_VALUE;
            } else {
                psStorageManager$deleteInvalidFile$1 = new PsStorageManager$deleteInvalidFile$1(this, continuation);
            }
        } else {
            psStorageManager$deleteInvalidFile$1 = new PsStorageManager$deleteInvalidFile$1(this, continuation);
        }
        Object obj = psStorageManager$deleteInvalidFile$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = psStorageManager$deleteInvalidFile$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            HashSet hashSet2 = new HashSet();
            PsDbManager psDbManager = PsDbManager.f42189a;
            psStorageManager$deleteInvalidFile$1.L$0 = hashSet2;
            psStorageManager$deleteInvalidFile$1.label = 1;
            Object objD = psDbManager.d(psStorageManager$deleteInvalidFile$1);
            if (objD == objF) {
                return objF;
            }
            hashSet = hashSet2;
            obj = objD;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hashSet = (HashSet) psStorageManager$deleteInvalidFile$1.L$0;
            ResultKt.b(obj);
        }
        List list = (List) obj;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                PsLinkAdInfo psLinkAdInfo = (PsLinkAdInfo) o.d(((PsLinkAdPlan) it.next()).getPsLinkAdInfoStr(), PsLinkAdInfo.class);
                hashSet.add(psLinkAdInfo.getPath());
                hashSet.add(psLinkAdInfo.getAdvertiserAvatarPath());
            }
        }
        h.f76259a.c(new File(com.transsion.ad.a.f41780a.a() + File.separatorChar), hashSet);
        return Unit.f67061a;
    }
}
