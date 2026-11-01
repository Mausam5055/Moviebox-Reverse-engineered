package com.transsion.rewardscenter.task.ad;

import com.tencent.mmkv.MMKV;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static v.c f51124c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static MemberTaskItem f51127f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static MemberTaskItem f51128g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static MemberTaskItem f51129h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static MemberTaskItem f51130i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static MemberTaskItem f51131j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f51122a = new u();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f51123b = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.task.ad.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return u.o();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static List f51125d = CollectionsKt.l();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static List f51126e = CollectionsKt.l();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f51132k = 8;

    private u() {
    }

    private final MMKV f() {
        return (MMKV) f51123b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV o() {
        return MMKV.I("StageTaskAdCache");
    }

    public final void b(v vVar, MemberTaskItem memberTaskItem) {
        int iIntValue = 0;
        if (memberTaskItem == null) {
            return;
        }
        MemberTaskItem memberTaskItem2 = f51127f;
        Pair pairA = TuplesKt.a(memberTaskItem2 != null ? memberTaskItem2.getTaskId() : null, f51127f);
        MemberTaskItem memberTaskItem3 = f51128g;
        Pair pairA2 = TuplesKt.a(memberTaskItem3 != null ? memberTaskItem3.getTaskId() : null, f51128g);
        MemberTaskItem memberTaskItem4 = f51129h;
        Pair pairA3 = TuplesKt.a(memberTaskItem4 != null ? memberTaskItem4.getTaskId() : null, f51129h);
        MemberTaskItem memberTaskItem5 = f51131j;
        Pair pairA4 = TuplesKt.a(memberTaskItem5 != null ? memberTaskItem5.getTaskId() : null, f51131j);
        MemberTaskItem memberTaskItem6 = f51130i;
        MemberTaskItem memberTaskItem7 = (MemberTaskItem) MapsKt.l(pairA, pairA2, pairA3, pairA4, TuplesKt.a(memberTaskItem6 != null ? memberTaskItem6.getTaskId() : null, f51130i)).get(memberTaskItem.getTaskId());
        if (memberTaskItem7 != null) {
            memberTaskItem7.setProgress(memberTaskItem.getProgress());
            memberTaskItem7.setTotalProgress(memberTaskItem.getTotalProgress());
            memberTaskItem7.setStatus(memberTaskItem.getStatus());
        }
        Integer totalProgress = memberTaskItem.getTotalProgress();
        if (totalProgress != null) {
            int iIntValue2 = totalProgress.intValue();
            Integer progress = memberTaskItem.getProgress();
            iIntValue = iIntValue2 - (progress != null ? progress.intValue() : 0);
        }
        if (iIntValue <= 0) {
            p(vVar);
        }
    }

    public final boolean c(String sceneId, String packageName) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(packageName, "packageName");
        int iHashCode = sceneId.hashCode();
        if (iHashCode != 1154212438) {
            if (iHashCode != 1383510840) {
                if (iHashCode == 2139474598 && sceneId.equals("MemberCenterStageNativeScene")) {
                    v.c cVar = f51124c;
                    List listE = CollectionsKt.e(cVar != null ? cVar.i() : null);
                    if (!(listE instanceof Collection) || !listE.isEmpty()) {
                        Iterator it = listE.iterator();
                        while (it.hasNext()) {
                            if (Intrinsics.c((String) it.next(), packageName)) {
                                return true;
                            }
                        }
                    }
                    List list = f51126e;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (((v.a) obj).k()) {
                            arrayList.add(obj);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            if (Intrinsics.c(((v.a) it2.next()).i(), packageName)) {
                                return true;
                            }
                        }
                    }
                }
            } else if (sceneId.equals("MemberTaskRegularNativeScene")) {
                v.c cVar2 = f51124c;
                List listE2 = CollectionsKt.e(cVar2 != null ? cVar2.i() : null);
                if (!(listE2 instanceof Collection) || !listE2.isEmpty()) {
                    Iterator it3 = listE2.iterator();
                    while (it3.hasNext()) {
                        if (Intrinsics.c((String) it3.next(), packageName)) {
                            return true;
                        }
                    }
                }
                List list2 = f51125d;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it4 = list2.iterator();
                    while (it4.hasNext()) {
                        if (Intrinsics.c(((v.c) it4.next()).i(), packageName)) {
                            return true;
                        }
                    }
                }
                List list3 = f51126e;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : list3) {
                    if (((v.a) obj2).k()) {
                        arrayList2.add(obj2);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    Iterator it5 = arrayList2.iterator();
                    while (it5.hasNext()) {
                        if (Intrinsics.c(((v.a) it5.next()).i(), packageName)) {
                            return true;
                        }
                    }
                }
            }
        } else if (sceneId.equals("MemberTaskStageNativeScene")) {
            List list4 = f51125d;
            if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                Iterator it6 = list4.iterator();
                while (it6.hasNext()) {
                    if (Intrinsics.c(((v.c) it6.next()).i(), packageName)) {
                        return true;
                    }
                }
            }
            List list5 = f51126e;
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : list5) {
                if (((v.a) obj3).k()) {
                    arrayList3.add(obj3);
                }
            }
            if (!arrayList3.isEmpty()) {
                Iterator it7 = arrayList3.iterator();
                while (it7.hasNext()) {
                    if (Intrinsics.c(((v.a) it7.next()).i(), packageName)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final List d() {
        return f51126e;
    }

    public final List e() {
        return f51125d;
    }

    public final MemberTaskItem g() {
        return f51130i;
    }

    public final MemberTaskItem h() {
        return f51129h;
    }

    public final MemberTaskItem i() {
        return f51131j;
    }

    public final MemberTaskItem j() {
        return f51127f;
    }

    public final MemberTaskItem k() {
        return f51128g;
    }

    public final AdTaskState l(String str) {
        if (str == null) {
            return null;
        }
        int i11 = f().getInt("task_state_" + str, -1);
        if (i11 != -1) {
            return AdTaskState.getEntries().get(i11);
        }
        return null;
    }

    public final boolean m(String sceneId, String str) {
        boolean zN;
        Intrinsics.h(sceneId, "sceneId");
        boolean z10 = true;
        boolean z11 = false;
        if (str != null) {
            u uVar = f51122a;
            boolean zC = uVar.c(sceneId, str);
            zN = uVar.n(str);
            if (!StringsKt.q0(str) && !zC && !zN) {
                z10 = false;
            }
            z11 = zC;
        } else {
            zN = false;
        }
        lg.a.C0828a.f(lg.a.f68839a, "StageTaskAd", "isFiltered = " + z10 + ", packageName: " + str + ", isDuplicate: " + z11 + ", isInCooldown: " + zN, false, 4, null);
        return z10;
    }

    public final boolean n(String packageName) {
        Intrinsics.h(packageName, "packageName");
        MMKV mmkvF = f();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("package_cooldown_");
        sb2.append(packageName);
        return System.currentTimeMillis() < mmkvF.getLong(sb2.toString(), 0L);
    }

    public final void p(v vVar) {
        ArrayList arrayList;
        AdTaskState adTaskStateE;
        if (vVar instanceof v.c) {
            v.c cVar = f51124c;
            if (cVar != null && (adTaskStateE = cVar.e()) != null && adTaskStateE.ordinal() < AdTaskState.CLAIMED_STAGE1.ordinal()) {
                f51124c = null;
            }
            List list = f51125d;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (((v.c) obj).e().ordinal() >= AdTaskState.CLAIMED_STAGE1.ordinal()) {
                    arrayList2.add(obj);
                }
            }
            f51125d = arrayList2;
            return;
        }
        if (vVar instanceof v.a) {
            if (((v.a) vVar).k()) {
                List list2 = f51126e;
                arrayList = new ArrayList();
                for (Object obj2 : list2) {
                    if (!((v.a) obj2).k()) {
                        arrayList.add(obj2);
                    }
                }
            } else {
                List list3 = f51126e;
                arrayList = new ArrayList();
                for (Object obj3 : list3) {
                    if (((v.a) obj3).k()) {
                        arrayList.add(obj3);
                    }
                }
            }
            f51126e = arrayList;
        }
    }

    public final void q(v.a item) {
        Intrinsics.h(item, "item");
        List list = f51126e;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!Intrinsics.c((v.a) obj, item)) {
                arrayList.add(obj);
            }
        }
        f51126e = arrayList;
    }

    public final void r(List taskInfos) {
        Object obj;
        Object next;
        Object next2;
        Object next3;
        Object next4;
        Intrinsics.h(taskInfos, "taskInfos");
        List list = taskInfos;
        Iterator it = list.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
            int value = TaskType.AD_STAGE_1ST.getValue();
            if (taskSubType != null && taskSubType.intValue() == value) {
                break;
            }
        }
        f51127f = (MemberTaskItem) next;
        Iterator it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
            Integer taskSubType2 = ((MemberTaskItem) next2).getTaskSubType();
            int value2 = TaskType.AD_STAGE_2ND.getValue();
            if (taskSubType2 != null && taskSubType2.intValue() == value2) {
                break;
            }
        }
        f51128g = (MemberTaskItem) next2;
        Iterator it3 = list.iterator();
        while (true) {
            if (!it3.hasNext()) {
                next3 = null;
                break;
            }
            next3 = it3.next();
            Integer taskSubType3 = ((MemberTaskItem) next3).getTaskSubType();
            int value3 = TaskType.AD_REGULAR_PULL_NEW.getValue();
            if (taskSubType3 != null && taskSubType3.intValue() == value3) {
                break;
            }
        }
        f51129h = (MemberTaskItem) next3;
        Iterator it4 = list.iterator();
        while (true) {
            if (!it4.hasNext()) {
                next4 = null;
                break;
            }
            next4 = it4.next();
            Integer taskSubType4 = ((MemberTaskItem) next4).getTaskSubType();
            int value4 = TaskType.AD_REGULAR_PULL_LIVE.getValue();
            if (taskSubType4 != null && taskSubType4.intValue() == value4) {
                break;
            }
        }
        f51130i = (MemberTaskItem) next4;
        for (Object obj2 : list) {
            Integer taskSubType5 = ((MemberTaskItem) obj2).getTaskSubType();
            int value5 = TaskType.AD_REWARD.getValue();
            if (taskSubType5 != null && taskSubType5.intValue() == value5) {
                obj = obj2;
                break;
            }
        }
        f51131j = (MemberTaskItem) obj;
    }

    public final void s(List list) {
        Intrinsics.h(list, "<set-?>");
        f51126e = list;
    }

    public final void t(List list) {
        Intrinsics.h(list, "<set-?>");
        f51125d = list;
    }

    public final void u(String packageName, Integer num) {
        Intrinsics.h(packageName, "packageName");
        long j11 = 60;
        long jCurrentTimeMillis = System.currentTimeMillis() + ((num != null ? num.intValue() : 3L) * ((long) 24) * j11 * j11 * 1000);
        f().putLong("package_cooldown_" + packageName, jCurrentTimeMillis);
    }

    public final void v(String str, AdTaskState adTaskState) {
        Intrinsics.h(adTaskState, "adTaskState");
        if (str == null) {
            return;
        }
        f().putInt("task_state_" + str, adTaskState.ordinal());
    }
}
