package com.transsion.mpush.core.interceptor;

import android.content.Context;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.config.PushConfig;
import com.transsion.mpush.core.utils.PushPreference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class LocalFrequencyController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LocalFrequencyController f47542a = new LocalFrequencyController();

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final LocalPushMessage f47543a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f47544b;

        public a(LocalPushMessage message, int i11) {
            Intrinsics.h(message, "message");
            this.f47543a = message;
            this.f47544b = i11;
        }

        public final LocalPushMessage a() {
            return this.f47543a;
        }

        public final int b() {
            return this.f47544b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f47543a, aVar.f47543a) && this.f47544b == aVar.f47544b;
        }

        public int hashCode() {
            return (this.f47543a.hashCode() * 31) + this.f47544b;
        }

        public String toString() {
            return "TimedMessage(message=" + this.f47543a + ", pushSeconds=" + this.f47544b + ")";
        }
    }

    private LocalFrequencyController() {
    }

    private final boolean b(LocalPushMessage localPushMessage, int i11, PushConfig pushConfig) {
        Integer numV;
        Integer numV2;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "checkFrequency: msgId=" + localPushMessage.getMessageId() + ", source=" + i11, false, 4, null);
        if (!pushConfig.getEnable()) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "checkFrequency: global switch disabled", false, 4, null);
            return false;
        }
        if (i11 == 1 && Intrinsics.c(pushConfig.getBrightScreen(), Boolean.FALSE)) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "checkFrequency: screen_on disabled in config", false, 4, null);
            return false;
        }
        if (i11 == 2 && Intrinsics.c(pushConfig.getUnlock(), Boolean.FALSE)) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "checkFrequency: unlock disabled in config", false, 4, null);
            return false;
        }
        int i12 = Calendar.getInstance().get(11);
        String startTime = pushConfig.getStartTime();
        int iIntValue = (startTime == null || (numV2 = StringsKt.v(startTime)) == null) ? 8 : numV2.intValue();
        String endTime = pushConfig.getEndTime();
        int iIntValue2 = (endTime == null || (numV = StringsKt.v(endTime)) == null) ? 22 : numV.intValue();
        if (iIntValue > i12 || i12 > iIntValue2) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "checkFrequency: outside active hours", false, 4, null);
            return false;
        }
        if (localPushMessage.getMsgStatus() != 0) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "checkFrequency: message already shown/clicked status=" + localPushMessage.getMsgStatus(), false, 4, null);
            return false;
        }
        if (i11 == 1 && localPushMessage.getHasScreenOn()) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "checkFrequency: message already shown for screen_on", false, 4, null);
            return false;
        }
        if (i11 == 2 && localPushMessage.getForceShow()) {
            lg.a.C0828a.f(c0828a, "M_PUSH_SDK", "checkFrequency: message already force shown for unlock", false, 4, null);
            return false;
        }
        localPushMessage.setTriggerSource(i11);
        return true;
    }

    private final List c(List list) {
        if (list.size() <= 1) {
            return list;
        }
        List list2 = list;
        List<Pair> listA1 = CollectionsKt.a1(list2);
        if ((listA1 instanceof Collection) && listA1.isEmpty()) {
            return list;
        }
        for (Pair pair : listA1) {
            if (((a) pair.component1()).b() > ((a) pair.component2()).b()) {
                return CollectionsKt.I0(list2, new Comparator() { // from class: com.transsion.mpush.core.interceptor.LocalFrequencyController$ensurePushTimeAscOrder$$inlined$sortedBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t11, T t12) {
                        return ComparisonsKt.d(Integer.valueOf(((LocalFrequencyController.a) t11).b()), Integer.valueOf(((LocalFrequencyController.a) t12).b()));
                    }
                });
            }
        }
        return list;
    }

    private final PushConfig d(Context context) {
        PushConfig pushConfigA = PushPreference.f47608a.a(context);
        return pushConfigA == null ? new PushConfig(false, null, null, null, null, null, null, null, null, 511, null) : pushConfigA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Integer e(String str) {
        String string;
        List listS0;
        int size;
        if (str != null && (string = StringsKt.n1(str).toString()) != null && (listS0 = StringsKt.S0(string, new String[]{":"}, false, 0, 6, null)) != null && 2 <= (size = listS0.size()) && size < 4) {
            int iIntValue = 0;
            Integer numV = StringsKt.v((String) listS0.get(0));
            if (numV != null) {
                int iIntValue2 = numV.intValue();
                Integer numV2 = StringsKt.v((String) listS0.get(1));
                if (numV2 != null) {
                    int iIntValue3 = numV2.intValue();
                    if (listS0.size() == 3) {
                        Integer numV3 = StringsKt.v((String) listS0.get(2));
                        if (numV3 == null) {
                            return null;
                        }
                        iIntValue = numV3.intValue();
                    }
                    if (iIntValue2 >= 0 && iIntValue2 < 24 && iIntValue3 >= 0 && iIntValue3 < 60 && iIntValue >= 0 && iIntValue < 60) {
                        return Integer.valueOf((iIntValue2 * 3600) + (iIntValue3 * 60) + iIntValue);
                    }
                }
            }
        }
        return null;
    }

    private final LocalPushMessage f(List list, int i11, int i12, PushConfig pushConfig) {
        Integer numV;
        String pushGap = pushConfig.getPushGap();
        int iF = ((i11 - i12) / RangesKt.f((pushGap == null || (numV = StringsKt.v(pushGap)) == null) ? 2 : numV.intValue(), 1)) % list.size();
        if (iF < 0 || iF >= list.size()) {
            return null;
        }
        return (LocalPushMessage) list.get(iF);
    }

    private final LocalPushMessage g(List list, int i11, int i12) {
        Iterator it = list.iterator();
        int i13 = 0;
        while (true) {
            if (!it.hasNext()) {
                return null;
            }
            Object next = it.next();
            int i14 = i13 + 1;
            if (i13 < 0) {
                CollectionsKt.u();
            }
            a aVar = (a) next;
            a aVar2 = (a) CollectionsKt.l0(list, i14);
            Integer numValueOf = aVar2 != null ? Integer.valueOf(aVar2.b()) : null;
            if (numValueOf != null) {
                if (aVar.b() < numValueOf.intValue() && aVar.b() <= i11 && i11 < numValueOf.intValue()) {
                    return aVar.a();
                }
                i13 = i14;
            } else {
                if (aVar.b() <= i11 && i11 <= i12) {
                    return aVar.a();
                }
                i13 = i14;
            }
        }
    }

    public final LocalPushMessage h(Context context, List messages) {
        LocalPushMessage localPushMessageF;
        Integer numV;
        Integer numV2;
        Intrinsics.h(context, "context");
        Intrinsics.h(messages, "messages");
        if (messages.isEmpty()) {
            return null;
        }
        PushConfig pushConfigD = d(context);
        Calendar calendar = Calendar.getInstance();
        int i11 = calendar.get(11);
        String startTime = pushConfigD.getStartTime();
        int iIntValue = (startTime == null || (numV2 = StringsKt.v(startTime)) == null) ? 8 : numV2.intValue();
        String endTime = pushConfigD.getEndTime();
        int iIntValue2 = (endTime == null || (numV = StringsKt.v(endTime)) == null) ? 22 : numV.intValue();
        if (iIntValue > i11 || i11 > iIntValue2) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = messages.iterator();
        while (it.hasNext()) {
            LocalPushMessage localPushMessage = (LocalPushMessage) it.next();
            Integer numE = f47542a.e(localPushMessage.getPushTime());
            a aVar = numE != null ? new a(localPushMessage, numE.intValue()) : null;
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        if (arrayList.isEmpty() || arrayList.size() != messages.size()) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "selectMessage: pushTime 存在无效值，回退到小时间隔选取，valid=" + arrayList.size() + "/" + messages.size(), false, 4, null);
            localPushMessageF = f(messages, i11, iIntValue, pushConfigD);
        } else {
            localPushMessageF = g(c(arrayList), (i11 * 3600) + (calendar.get(12) * 60) + calendar.get(13), (iIntValue2 * 3600) + 3599);
        }
        if (localPushMessageF == null) {
            return null;
        }
        if (localPushMessageF.getMsgStatus() == 0) {
            return localPushMessageF;
        }
        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "selectMessage: target message " + localPushMessageF.getMessageId() + " already shown today. Skipping.", false, 4, null);
        return null;
    }

    public final boolean i(Context context, LocalPushMessage message, int i11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(message, "message");
        return b(message, i11, d(context));
    }

    public final List j(List messages) {
        Intrinsics.h(messages, "messages");
        if (messages.size() <= 1) {
            return messages;
        }
        final Comparator comparator = new Comparator() { // from class: com.transsion.mpush.core.interceptor.LocalFrequencyController$sortByPushTimeAsc$$inlined$compareBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                LocalFrequencyController localFrequencyController = LocalFrequencyController.f47542a;
                Integer numE = localFrequencyController.e(((LocalPushMessage) t11).getPushTime());
                Integer num = Integer.MAX_VALUE;
                if (numE == null) {
                    numE = num;
                }
                Integer numE2 = localFrequencyController.e(((LocalPushMessage) t12).getPushTime());
                return ComparisonsKt.d(numE, numE2 != null ? numE2 : Integer.MAX_VALUE);
            }
        };
        return CollectionsKt.I0(messages, new Comparator() { // from class: com.transsion.mpush.core.interceptor.LocalFrequencyController$sortByPushTimeAsc$$inlined$thenByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                int iCompare = comparator.compare(t11, t12);
                return iCompare != 0 ? iCompare : ComparisonsKt.d(Long.valueOf(((LocalPushMessage) t12).getReceiveTime()), Long.valueOf(((LocalPushMessage) t11).getReceiveTime()));
            }
        });
    }
}
