package hl;

import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.ExplainBean;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import hj.i;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet f64523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f64524b;

    public c(String page) {
        Intrinsics.h(page, "page");
        this.f64524b = page;
    }

    public final void a(BaseProviderMultiAdapter adapter, int i11, long j11) {
        List<ExplainBean> explains;
        Boolean hasResource;
        String subjectId;
        HashSet hashSet;
        Intrinsics.h(adapter, "adapter");
        if (i11 >= adapter.getData().size()) {
            return;
        }
        OperateItem operateItem = (OperateItem) adapter.getItem(i11);
        if (Intrinsics.c(operateItem.getType(), PostItemType.SINGLE_SUBJECT.getValue()) || Intrinsics.c(operateItem.getType(), PostItemType.SUBJECT.getValue())) {
            if (this.f64523a == null) {
                this.f64523a = new HashSet();
            }
            HashMap map = new HashMap();
            HashSet hashSet2 = this.f64523a;
            if (hashSet2 != null) {
                Subject feedsSubject = operateItem.getFeedsSubject();
                if (CollectionsKt.b0(hashSet2, feedsSubject != null ? feedsSubject.getSubjectId() : null)) {
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    Subject feedsSubject2 = operateItem.getFeedsSubject();
                    lg.a.C0828a.f(c0828a, "reportExposure", "trendFragment position:" + i11 + ",subjectId: + " + (feedsSubject2 != null ? feedsSubject2.getSubjectId() : null) + "}", false, 4, null);
                    return;
                }
            }
            Subject feedsSubject3 = operateItem.getFeedsSubject();
            if (feedsSubject3 != null && (subjectId = feedsSubject3.getSubjectId()) != null && subjectId.length() > 0 && (hashSet = this.f64523a) != null) {
                Subject feedsSubject4 = operateItem.getFeedsSubject();
                String subjectId2 = feedsSubject4 != null ? feedsSubject4.getSubjectId() : null;
                Intrinsics.e(subjectId2);
                hashSet.add(subjectId2);
            }
            map.put("sequence", String.valueOf(i11));
            map.put("item_type", "rec");
            Subject feedsSubject5 = operateItem.getFeedsSubject();
            map.put("ops", feedsSubject5 != null ? feedsSubject5.getOps() : null);
            Subject feedsSubject6 = operateItem.getFeedsSubject();
            map.put("subject_id", feedsSubject6 != null ? feedsSubject6.getSubjectId() : null);
            map.put("browse_duration", String.valueOf(j11));
            Subject feedsSubject7 = operateItem.getFeedsSubject();
            map.put("has_resource", (feedsSubject7 == null || (hasResource = feedsSubject7.getHasResource()) == null) ? null : hasResource.toString());
            Subject feedsSubject8 = operateItem.getFeedsSubject();
            map.put("is_cache", String.valueOf(feedsSubject8 != null ? Boolean.valueOf(feedsSubject8.getIsCache()) : null));
            Subject feedsSubject9 = operateItem.getFeedsSubject();
            map.put("load_cover_success", String.valueOf(feedsSubject9 != null ? Boolean.valueOf(feedsSubject9.getLoadCoverSuccess()) : null));
            Subject feedsSubject10 = operateItem.getFeedsSubject();
            map.put("load_cover_duration", String.valueOf(feedsSubject10 != null ? Long.valueOf(feedsSubject10.getLoadCoverDuration()) : null));
            Subject feedsSubject11 = operateItem.getFeedsSubject();
            map.put("cover_cache", String.valueOf(feedsSubject11 != null ? Boolean.valueOf(feedsSubject11.getCoverCache()) : null));
            Subject feedsSubject12 = operateItem.getFeedsSubject();
            map.put("builtin", (feedsSubject12 == null || !feedsSubject12.getBuiltIn()) ? "0" : "1");
            StringBuilder sb2 = new StringBuilder();
            Subject feedsSubject13 = operateItem.getFeedsSubject();
            if (feedsSubject13 != null && (explains = feedsSubject13.getExplains()) != null) {
                Iterator<T> it = explains.iterator();
                while (it.hasNext()) {
                    sb2.append(((ExplainBean) it.next()).getType());
                    sb2.append(",");
                }
            }
            String string = sb2.toString();
            Intrinsics.g(string, "toString(...)");
            map.put("rec_explain_type", StringsKt.r1(string, ','));
            i.f64505a.D(this.f64524b, map);
        }
    }

    public final void b(int i11, Subject item) {
        Intrinsics.h(item, "item");
        HashMap map = new HashMap();
        map.put("sequence", String.valueOf(i11));
        map.put("item_type", "rec");
        map.put("ops", item.getOps());
        map.put("subject_id", item.getSubjectId());
        map.put("builtin", item.getBuiltIn() ? "1" : "0");
        StringBuilder sb2 = new StringBuilder();
        List<ExplainBean> explains = item.getExplains();
        if (explains != null) {
            Iterator<T> it = explains.iterator();
            while (it.hasNext()) {
                sb2.append(((ExplainBean) it.next()).getType());
                sb2.append(",");
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        map.put("rec_explain_type", StringsKt.r1(string, ','));
        i.f64505a.p(this.f64524b, map);
    }
}
