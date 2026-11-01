package com.transsion.ad.monopoly.intercept;

import android.text.TextUtils;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlansTransform;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ti.p;

/* JADX INFO: loaded from: classes5.dex */
public final class NonAdShowedTimesManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NonAdShowedTimesManager f42134a = new NonAdShowedTimesManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f42135b = new ConcurrentHashMap();

    private NonAdShowedTimesManager() {
    }

    public final int b(MbAdDbPlans mbAdDbPlans) {
        if (mbAdDbPlans == null) {
            return 0;
        }
        ConcurrentHashMap concurrentHashMap = f42135b;
        ShowedTimesMemoryBean showedTimesMemoryBean = (ShowedTimesMemoryBean) concurrentHashMap.get(mbAdDbPlans.getId());
        if (showedTimesMemoryBean != null) {
            if (TextUtils.equals(showedTimesMemoryBean.getDate(), p.f76266a.c())) {
                return showedTimesMemoryBean.getShowedTimes();
            }
            return 0;
        }
        String showDate = mbAdDbPlans.getShowDate();
        p pVar = p.f76266a;
        if (!TextUtils.equals(showDate, pVar.c())) {
            concurrentHashMap.put(mbAdDbPlans.getId(), new ShowedTimesMemoryBean(0, pVar.c()));
            return 0;
        }
        String id2 = mbAdDbPlans.getId();
        Integer showedTimes = mbAdDbPlans.getShowedTimes();
        concurrentHashMap.put(id2, new ShowedTimesMemoryBean(showedTimes != null ? showedTimes.intValue() : 0, pVar.c()));
        Integer showedTimes2 = mbAdDbPlans.getShowedTimes();
        if (showedTimes2 != null) {
            return showedTimes2.intValue();
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0051  */
    /* JADX WARN: Code duplicated, block: B:13:0x0061  */
    /* JADX WARN: Code duplicated, block: B:15:0x0067  */
    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    /* JADX WARN: Code duplicated, block: B:19:0x0081  */
    /* JADX WARN: Code duplicated, block: B:21:0x0093  */
    public final void c(AdPlans adPlans) {
        String showDate;
        p pVar;
        Integer showedTimes;
        Integer numValueOf;
        ShowedTimesMemoryBean showedTimesMemoryBean;
        if (adPlans == null) {
            return;
        }
        MbAdDbPlans mbAdDbPlansA = AdPlansTransform.f42168a.a(adPlans);
        ConcurrentHashMap concurrentHashMap = f42135b;
        ShowedTimesMemoryBean showedTimesMemoryBean2 = (ShowedTimesMemoryBean) concurrentHashMap.get(mbAdDbPlansA.getId());
        if (showedTimesMemoryBean2 != null) {
            String date = showedTimesMemoryBean2.getDate();
            p pVar2 = p.f76266a;
            if (TextUtils.equals(date, pVar2.c())) {
                showedTimesMemoryBean2.setShowedTimes(showedTimesMemoryBean2.getShowedTimes() + 1);
                showedTimesMemoryBean = (ShowedTimesMemoryBean) concurrentHashMap.put(mbAdDbPlansA.getId(), showedTimesMemoryBean2);
            } else {
                showedTimesMemoryBean = (ShowedTimesMemoryBean) concurrentHashMap.put(mbAdDbPlansA.getId(), new ShowedTimesMemoryBean(1, pVar2.c()));
            }
            if (showedTimesMemoryBean == null) {
                showDate = mbAdDbPlansA.getShowDate();
                pVar = p.f76266a;
                if (TextUtils.equals(showDate, pVar.c())) {
                    showedTimes = mbAdDbPlansA.getShowedTimes();
                    if (showedTimes != null) {
                        numValueOf = Integer.valueOf(showedTimes.intValue() + 1);
                    } else {
                        numValueOf = null;
                    }
                    mbAdDbPlansA.setShowedTimes(numValueOf);
                    String id2 = mbAdDbPlansA.getId();
                    Integer showedTimes2 = mbAdDbPlansA.getShowedTimes();
                }
            }
        } else {
            showDate = mbAdDbPlansA.getShowDate();
            pVar = p.f76266a;
            if (TextUtils.equals(showDate, pVar.c())) {
                showedTimes = mbAdDbPlansA.getShowedTimes();
                if (showedTimes != null) {
                    numValueOf = Integer.valueOf(showedTimes.intValue() + 1);
                } else {
                    numValueOf = null;
                }
                mbAdDbPlansA.setShowedTimes(numValueOf);
                String id3 = mbAdDbPlansA.getId();
                Integer showedTimes3 = mbAdDbPlansA.getShowedTimes();
            }
        }
        k.d(o0.a(y0.b()), null, null, new NonAdShowedTimesManager$saveShowedTimes$3(mbAdDbPlansA, adPlans, null), 3, null);
    }
}
