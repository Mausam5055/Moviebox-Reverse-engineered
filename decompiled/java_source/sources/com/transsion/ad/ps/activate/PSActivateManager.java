package com.transsion.ad.ps.activate;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.ad.ps.installed.AppInstallManager;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.concurrent.PriorityBlockingQueue;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class PSActivateManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PSActivateManager f42171a = new PSActivateManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final PriorityBlockingQueue f42172b = new PriorityBlockingQueue(11, new Comparator() { // from class: com.transsion.ad.ps.activate.PSActivateManager$special$$inlined$compareByDescending$1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t11, T t12) {
            Double ecpm = ((PsActivateBean) t12).getECPM();
            Double dValueOf = Double.valueOf(0.0d);
            if (ecpm == null) {
                ecpm = dValueOf;
            }
            Double ecpm2 = ((PsActivateBean) t11).getECPM();
            if (ecpm2 != null) {
                dValueOf = ecpm2;
            }
            return ComparisonsKt.d(ecpm, dValueOf);
        }
    });

    private PSActivateManager() {
    }

    public final void a(PsActivateBean bean) {
        Intrinsics.h(bean, "bean");
        f42172b.offer(bean);
    }

    public final PsActivateBean b() {
        return (PsActivateBean) f42172b.poll();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object c(Continuation continuation) throws Throwable {
        PSActivateManager$getRecentTwoHoursOpenAdList$1 pSActivateManager$getRecentTwoHoursOpenAdList$1;
        if (continuation instanceof PSActivateManager$getRecentTwoHoursOpenAdList$1) {
            pSActivateManager$getRecentTwoHoursOpenAdList$1 = (PSActivateManager$getRecentTwoHoursOpenAdList$1) continuation;
            int i11 = pSActivateManager$getRecentTwoHoursOpenAdList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pSActivateManager$getRecentTwoHoursOpenAdList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pSActivateManager$getRecentTwoHoursOpenAdList$1 = new PSActivateManager$getRecentTwoHoursOpenAdList$1(this, continuation);
            }
        } else {
            pSActivateManager$getRecentTwoHoursOpenAdList$1 = new PSActivateManager$getRecentTwoHoursOpenAdList$1(this, continuation);
        }
        PSActivateManager$getRecentTwoHoursOpenAdList$1 pSActivateManager$getRecentTwoHoursOpenAdList$2 = pSActivateManager$getRecentTwoHoursOpenAdList$1;
        Object objC = pSActivateManager$getRecentTwoHoursOpenAdList$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pSActivateManager$getRecentTwoHoursOpenAdList$2.label;
        if (i12 == 0) {
            ResultKt.b(objC);
            AppInstallManager appInstallManager = AppInstallManager.f42196a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            pSActivateManager$getRecentTwoHoursOpenAdList$2.label = 1;
            objC = AppInstallManager.c(appInstallManager, applicationA, 0L, pSActivateManager$getRecentTwoHoursOpenAdList$2, 2, null);
            if (objC == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objC);
        }
        Iterable iterable = (Iterable) objC;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(((AppInstalledBean) it.next()).getPackageName());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!StringsKt.q0((String) obj)) {
                arrayList2.add(obj);
            }
        }
        return CollectionsKt.s0(arrayList2, ",", null, null, 0, null, null, 62, null);
    }

    public final boolean d() {
        return !f42172b.isEmpty();
    }

    public final void e() {
        f(false);
    }

    public final void f(boolean z10) {
        k.d(o0.a(y0.b()), null, null, new PSActivateManager$requestActivateAd$1(z10, null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0050  */
    /* JADX WARN: Code duplicated, block: B:21:0x006f  */
    /* JADX WARN: Code duplicated, block: B:24:0x007d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x0082  */
    /* JADX WARN: Code duplicated, block: B:28:0x0087  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007b -> B:25:0x007e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:24:0x007d
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object g(java.util.List r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.transsion.ad.ps.activate.PSActivateManager$saveAdCache$1
            if (r0 == 0) goto L13
            r0 = r8
            com.transsion.ad.ps.activate.PSActivateManager$saveAdCache$1 r0 = (com.transsion.ad.ps.activate.PSActivateManager$saveAdCache$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.transsion.ad.ps.activate.PSActivateManager$saveAdCache$1 r0 = new com.transsion.ad.ps.activate.PSActivateManager$saveAdCache$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r7 = r0.L$1
            com.transsion.ad.ps.activate.PsActivateBean r7 = (com.transsion.ad.ps.activate.PsActivateBean) r7
            java.lang.Object r2 = r0.L$0
            java.util.Iterator r2 = (java.util.Iterator) r2
            kotlin.ResultKt.b(r8)
            goto L7e
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            kotlin.ResultKt.b(r8)
            java.util.concurrent.PriorityBlockingQueue r8 = com.transsion.ad.ps.activate.PSActivateManager.f42172b
            r8.clear()
            if (r7 == 0) goto L91
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.Iterator r7 = r7.iterator()
            r2 = r7
        L4a:
            boolean r7 = r2.hasNext()
            if (r7 == 0) goto L91
            java.lang.Object r7 = r2.next()
            com.transsion.ad.ps.activate.PsActivateBean r7 = (com.transsion.ad.ps.activate.PsActivateBean) r7
            com.transsion.ad.db.MbAdDatabase$n r8 = com.transsion.ad.db.MbAdDatabase.INSTANCE
            android.app.Application r4 = com.blankj.utilcode.util.Utils.a()
            java.lang.String r5 = "getApp(...)"
            kotlin.jvm.internal.Intrinsics.g(r4, r5)
            com.transsion.ad.db.MbAdDatabase r8 = r8.b(r4)
            mi.a r8 = r8.w0()
            java.lang.String r4 = r7.getPackageName()
            if (r4 != 0) goto L71
            java.lang.String r4 = ""
        L71:
            r0.L$0 = r2
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r8 = r8.b(r4, r0)
            if (r8 != r1) goto L7e
            return r1
        L7e:
            com.transsion.ad.db.pslink.AppInstalledBean r8 = (com.transsion.ad.db.pslink.AppInstalledBean) r8
            if (r8 == 0) goto L87
            java.lang.Double r8 = r8.getECPM()
            goto L88
        L87:
            r8 = 0
        L88:
            r7.setECPM(r8)
            java.util.concurrent.PriorityBlockingQueue r8 = com.transsion.ad.ps.activate.PSActivateManager.f42172b
            r8.add(r7)
            goto L4a
        L91:
            kotlin.Unit r7 = kotlin.Unit.f67061a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.ps.activate.PSActivateManager.g(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
