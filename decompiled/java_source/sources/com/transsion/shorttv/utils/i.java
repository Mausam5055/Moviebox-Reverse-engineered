package com.transsion.shorttv.utils;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.Video;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i {
    public static final void a(OperateItem operateItem, Map map) {
        Intrinsics.h(operateItem, "<this>");
        Intrinsics.h(map, "map");
        map.put("item_type", "opt");
        String type = operateItem.getType();
        if (type == null) {
            type = "";
        }
        map.put("opt_type", type);
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put("opTitle", title);
        String opId = operateItem.getOpId();
        map.put("opId", opId != null ? opId : "");
    }

    public static final void b(BannerData bannerData, Map map) {
        Intrinsics.h(bannerData, "<this>");
        Intrinsics.h(map, "map");
        String subjectId = bannerData.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("has_resource", String.valueOf(bannerData.getHasResource()));
        map.put("subject_type", String.valueOf(bannerData.getSubjectType()));
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(bannerData.getType()));
        String ops = bannerData.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        String content = bannerData.getContent();
        if (content == null) {
            content = "";
        }
        map.put("content", content);
        map.put("builtin", bannerData.getBuiltIn() ? "1" : "0");
        String deepLink = bannerData.getDeepLink();
        map.put("deeplink", deepLink != null ? deepLink : "");
        map.put("seenStatus", String.valueOf(bannerData.getSeenStatus()));
    }

    public static final void c(Subject subject, Map map) {
        Intrinsics.h(subject, "<this>");
        Intrinsics.h(map, "map");
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("has_resource", String.valueOf(subject.getHasResource()));
        map.put("subject_type", String.valueOf(subject.getSubjectType()));
        String ops = subject.getOps();
        map.put("ops", ops != null ? ops : "");
        map.put("builtin", subject.getBuiltIn() ? "1" : "0");
        map.put("tag", String.valueOf(subject.getTags()));
        map.put("seenStatus", String.valueOf(subject.getSeenStatus()));
    }

    public static final Video d(List list, int i11) {
        Object obj;
        Object next;
        Intrinsics.h(list, "<this>");
        List list2 = list;
        Iterator it = list2.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Video) next).getResolution(), String.valueOf(i11)));
        Video video = (Video) next;
        if (video != null) {
            return video;
        }
        for (Object obj2 : list2) {
            if (Intrinsics.c(((Video) obj2).getResolution(), "480")) {
                obj = obj2;
                break;
            }
        }
        Video video2 = (Video) obj;
        return video2 == null ? (Video) CollectionsKt.k0(list) : video2;
    }

    public static final String e(Integer num) {
        int iIntValue = num != null ? num.intValue() : 0;
        if (1 > iIntValue || iIntValue >= 10) {
            return String.valueOf(iIntValue);
        }
        return "0" + iIntValue;
    }
}
