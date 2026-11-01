package com.transsion.shorttv_pugc.utils;

import android.content.Context;
import android.os.Build;
import android.text.style.ImageSpan;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.bean.BannerData;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.bean.Video;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ShortTvExtKt {
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

    public static final int d(int i11) {
        return i11 - 1;
    }

    public static final List e(List list, List other) {
        Intrinsics.h(list, "<this>");
        Intrinsics.h(other, "other");
        List list2 = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            String ugcVideoId = ((ShorttvModel.UGCVideo) it.next()).getUgcVideoId();
            if (ugcVideoId != null) {
                arrayList.add(ugcVideoId);
            }
        }
        Set setV0 = CollectionsKt.V0(arrayList);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Integer.valueOf(((ShorttvModel.UGCVideo) it2.next()).getEp()));
        }
        Set setV1 = CollectionsKt.V0(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = other.iterator();
        while (it3.hasNext()) {
            ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) it3.next();
            String ugcVideoId2 = uGCVideo.getUgcVideoId();
            int ep2 = uGCVideo.getEp();
            if (ugcVideoId2 == null || !setV0.contains(ugcVideoId2)) {
                int i11 = 0;
                if (setV1.contains(Integer.valueOf(ep2))) {
                    Iterator it4 = list.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            i11 = -1;
                            break;
                        }
                        if (((ShorttvModel.UGCVideo) it4.next()).getEp() == ep2) {
                            break;
                        }
                        i11++;
                    }
                    if (i11 != -1 && ((ShorttvModel.UGCVideo) list.get(i11)).getUgcVideoId() == null) {
                        list.set(i11, uGCVideo);
                        arrayList3.add(uGCVideo);
                        if (ugcVideoId2 != null) {
                            setV0.add(ugcVideoId2);
                        }
                    }
                } else {
                    Iterator it5 = list.iterator();
                    while (true) {
                        if (!it5.hasNext()) {
                            i11 = -1;
                            break;
                        }
                        if (((ShorttvModel.UGCVideo) it5.next()).getEp() > ep2) {
                            break;
                        }
                        i11++;
                    }
                    Integer numValueOf = Integer.valueOf(i11);
                    if (numValueOf.intValue() == -1) {
                        numValueOf = null;
                    }
                    list.add(numValueOf != null ? numValueOf.intValue() : list.size(), uGCVideo);
                    arrayList3.add(uGCVideo);
                    if (ugcVideoId2 != null) {
                        setV0.add(ugcVideoId2);
                    }
                    setV1.add(Integer.valueOf(ep2));
                }
            }
        }
        return CollectionsKt.I0(arrayList3, new Comparator() { // from class: com.transsion.shorttv_pugc.utils.ShortTvExtKt$fillPlaceholdersAndInsertSorted$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(Integer.valueOf(((ShorttvModel.UGCVideo) t11).getEp()), Integer.valueOf(((ShorttvModel.UGCVideo) t12).getEp()));
            }
        });
    }

    public static final ImageSpan f(Context context) {
        Intrinsics.h(context, "context");
        int i11 = R$mipmap.short_tv_ic_split;
        return Build.VERSION.SDK_INT >= 29 ? new ImageSpan(context, i11, 2) : new ImageSpan(context, i11, 1);
    }

    public static final Video g(List list, int i11) {
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

    public static final List h(List list, List other) {
        Intrinsics.h(list, "<this>");
        Intrinsics.h(other, "other");
        ArrayList arrayList = new ArrayList();
        List list2 = list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ShorttvModel.UGCVideo) it.next()).getUgcVideoId());
        }
        Set setV0 = CollectionsKt.V0(arrayList2);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(Integer.valueOf(((ShorttvModel.UGCVideo) it2.next()).getEp()));
        }
        Set setV1 = CollectionsKt.V0(arrayList3);
        Iterator it3 = other.iterator();
        while (it3.hasNext()) {
            ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) it3.next();
            int ep2 = uGCVideo.getEp();
            String ugcVideoId = uGCVideo.getUgcVideoId();
            if (!setV0.contains(ugcVideoId) && !setV1.contains(Integer.valueOf(ep2))) {
                Iterator it4 = list.iterator();
                int i11 = 0;
                while (true) {
                    if (!it4.hasNext()) {
                        i11 = -1;
                        break;
                    }
                    if (((ShorttvModel.UGCVideo) it4.next()).getEp() > ep2) {
                        break;
                    }
                    i11++;
                }
                Integer numValueOf = Integer.valueOf(i11);
                if (numValueOf.intValue() == -1) {
                    numValueOf = null;
                }
                int iIntValue = numValueOf != null ? numValueOf.intValue() : list.size();
                list.add(iIntValue, uGCVideo);
                arrayList.add(Integer.valueOf(iIntValue));
                setV0.add(ugcVideoId);
                setV1.add(Integer.valueOf(ep2));
            }
        }
        return arrayList;
    }

    public static final List i(List list, List other) {
        Intrinsics.h(list, "<this>");
        Intrinsics.h(other, "other");
        ArrayList arrayList = new ArrayList();
        if (other.isEmpty()) {
            return arrayList;
        }
        List list2 = list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ShorttvModel.UGCVideo) it.next()).getUgcVideoId());
        }
        Set setV0 = CollectionsKt.V0(arrayList2);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(Integer.valueOf(((ShorttvModel.UGCVideo) it2.next()).getEp()));
        }
        Set setV1 = CollectionsKt.V0(arrayList3);
        ArrayList<ShorttvModel.UGCVideo> arrayList4 = new ArrayList();
        for (Object obj : other) {
            ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) obj;
            String ugcVideoId = uGCVideo.getUgcVideoId();
            int ep2 = uGCVideo.getEp();
            if (!setV0.contains(ugcVideoId) && !setV1.contains(Integer.valueOf(ep2))) {
                arrayList4.add(obj);
            }
        }
        if (arrayList4.isEmpty()) {
            return arrayList;
        }
        int i11 = 0;
        if (arrayList4.size() == other.size()) {
            Iterator it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    i11 = -1;
                    break;
                }
                if (((ShorttvModel.UGCVideo) it3.next()).getEp() > ((ShorttvModel.UGCVideo) CollectionsKt.i0(arrayList4)).getEp()) {
                    break;
                }
                i11++;
            }
            Integer numValueOf = Integer.valueOf(i11);
            Integer num = numValueOf.intValue() != -1 ? numValueOf : null;
            int iIntValue = num != null ? num.intValue() : list.size();
            list.addAll(iIntValue, arrayList4);
            k(arrayList, iIntValue, arrayList4.size());
        } else {
            for (ShorttvModel.UGCVideo uGCVideo2 : arrayList4) {
                Iterator it4 = list.iterator();
                int i12 = 0;
                while (true) {
                    if (!it4.hasNext()) {
                        i12 = -1;
                        break;
                    }
                    if (((ShorttvModel.UGCVideo) it4.next()).getEp() > uGCVideo2.getEp()) {
                        break;
                    }
                    i12++;
                }
                Integer numValueOf2 = Integer.valueOf(i12);
                if (numValueOf2.intValue() == -1) {
                    numValueOf2 = null;
                }
                int iIntValue2 = numValueOf2 != null ? numValueOf2.intValue() : list.size();
                list.add(iIntValue2, uGCVideo2);
                arrayList.add(Integer.valueOf(iIntValue2));
            }
        }
        ArrayList arrayList5 = new ArrayList(CollectionsKt.v(arrayList4, 10));
        Iterator it5 = arrayList4.iterator();
        while (it5.hasNext()) {
            arrayList5.add(((ShorttvModel.UGCVideo) it5.next()).getUgcVideoId());
        }
        setV0.addAll(arrayList5);
        ArrayList arrayList6 = new ArrayList(CollectionsKt.v(arrayList4, 10));
        Iterator it6 = arrayList4.iterator();
        while (it6.hasNext()) {
            arrayList6.add(Integer.valueOf(((ShorttvModel.UGCVideo) it6.next()).getEp()));
        }
        setV1.addAll(arrayList6);
        return arrayList;
    }

    private static final String j(String str) {
        if (str == null) {
            return str;
        }
        switch (str.hashCode()) {
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return !str.equals("1") ? str : "TAG_GENRE";
            case 50:
                return !str.equals("2") ? str : "TAG_COUNTRY";
            case AD_REWARD_USER_VALUE:
                return !str.equals("3") ? str : "TAG_YEAR";
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                return !str.equals("4") ? str : "TAG_STAFF";
            default:
                return str;
        }
    }

    private static final void k(List list, int i11, int i12) {
        list.clear();
        CollectionsKt.B(list, RangesKt.t(i11, i12 + i11));
    }

    public static final int l(int i11) {
        return i11 + 1;
    }

    public static final void m(int i11) {
        try {
            Result.Companion companion = Result.INSTANCE;
            kt.b.a aVar = kt.b.f68391a;
            int i12 = R$layout.short_tv_base_layout_new_success_toast;
            String string = Utils.a().getString(i11);
            Intrinsics.g(string, "getString(...)");
            aVar.f(i12, string, (28 & 4) != 0 ? 0 : 0, (28 & 8) != 0 ? 0 : 0, (28 & 16) != 0 ? 0 : 0);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public static final String n(Integer num) {
        int iIntValue = num != null ? num.intValue() : 0;
        if (1 > iIntValue || iIntValue >= 10) {
            return String.valueOf(iIntValue);
        }
        return "0" + iIntValue;
    }

    public static final String o(List list, ShorttvModel.UGCVideoHasTag mainTag) {
        Intrinsics.h(list, "<this>");
        Intrinsics.h(mainTag, "mainTag");
        Map mapL = MapsKt.l(TuplesKt.a("tag", mainTag.getTag()), TuplesKt.a(CampaignEx.JSON_KEY_TITLE, mainTag.getTitle()), TuplesKt.a("tag_type", j(mainTag.getTagType())));
        ArrayList<ShorttvModel.UGCVideoHasTag> arrayList = new ArrayList();
        for (Object obj : list) {
            if (!Intrinsics.c((ShorttvModel.UGCVideoHasTag) obj, mainTag)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
        for (ShorttvModel.UGCVideoHasTag uGCVideoHasTag : arrayList) {
            arrayList2.add(MapsKt.l(TuplesKt.a("tag", uGCVideoHasTag.getTag()), TuplesKt.a(CampaignEx.JSON_KEY_TITLE, uGCVideoHasTag.getTitle()), TuplesKt.a("tag_type", j(uGCVideoHasTag.getTagType()))));
        }
        String json = new Gson().toJson(MapsKt.l(TuplesKt.a("main_hashtag", mapL), TuplesKt.a("sub_hashtag", arrayList2)));
        Intrinsics.g(json, "toJson(...)");
        return json;
    }

    public static final String p(long j11) {
        long j12 = 60;
        String str = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j11 / j12), Long.valueOf(j11 % j12)}, 2));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public static final String q(String str) {
        Long lValueOf;
        Date date;
        Intrinsics.h(str, "<this>");
        if (new Regex("^\\d+$").matches(str)) {
            Long lX = StringsKt.x(str);
            if (lX == null) {
                return null;
            }
            long jLongValue = lX.longValue();
            if (jLongValue < 1000000000000L) {
                jLongValue *= (long) 1000;
            }
            lValueOf = Long.valueOf(jLongValue);
        } else {
            lValueOf = (!new Regex("^\\d{4}-\\d{2}-\\d{2}$").matches(str) || (date = new SimpleDateFormat("yyyy-MM-dd", Locale.US).parse(str)) == null) ? null : Long.valueOf(date.getTime());
        }
        if (lValueOf == null) {
            return null;
        }
        long jAbs = Math.abs(System.currentTimeMillis() - lValueOf.longValue());
        if (jAbs < 60000) {
            return "Just now";
        }
        if (jAbs < TmcConstants.DEBUG_REQUEST_TIME_INTERVAL) {
            return "< 1 minute";
        }
        if (jAbs < 3600000) {
            return "< 1 hour";
        }
        if (jAbs < 7200000) {
            return "1 hour ago";
        }
        if (jAbs < 86400000) {
            return (jAbs / ((long) 60000)) + " minutes ago";
        }
        if (jAbs < TmcConstants.MINI_POPWINDOW_ADD_HOME_INTERVAL) {
            return "1 day ago";
        }
        if (jAbs < 604800000) {
            return (jAbs / ((long) TimeConstants.DAY)) + " days ago";
        }
        if (jAbs < 1209600000) {
            return "1 week ago";
        }
        if (jAbs < 2592000000L) {
            return (jAbs / ((long) MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF)) + " weeks ago";
        }
        if (jAbs < 5184000000L) {
            return "1 month ago";
        }
        if (jAbs < 31536000000L) {
            return (jAbs / 2592000000L) + " months ago";
        }
        if (jAbs < 63072000000L) {
            return "1 year ago";
        }
        return (jAbs / 31536000000L) + " years ago";
    }

    public static final List r(int i11, int i12) {
        ArrayList arrayList = new ArrayList();
        int i13 = 1;
        if (i11 <= i12) {
            arrayList.add(new IntRange(1, i12));
            return arrayList;
        }
        int i14 = i12;
        while (i14 < i11) {
            arrayList.add(new IntRange(i13, i14));
            i13 += i12;
            i14 += i12;
        }
        arrayList.add(new IntRange(i13, i14));
        return arrayList;
    }

    public static /* synthetic */ List s(int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i12 = 50;
        }
        return r(i11, i12);
    }

    public static final String t(String str) {
        Intrinsics.h(str, "<this>");
        try {
            int i11 = Integer.parseInt(str);
            if (i11 < 1000) {
                str = String.valueOf(i11);
            } else if (i11 < 1000000) {
                String str2 = String.format("%.1fk", Arrays.copyOf(new Object[]{Double.valueOf(((double) i11) / 1000.0d)}, 1));
                Intrinsics.g(str2, "format(...)");
                str = StringsKt.J0(str2, ".0");
            } else if (i11 < 1000000000) {
                String str3 = String.format("%.1fM", Arrays.copyOf(new Object[]{Double.valueOf(((double) i11) / 1000000.0d)}, 1));
                Intrinsics.g(str3, "format(...)");
                str = StringsKt.J0(str3, ".0");
            } else {
                str = "999M+";
            }
        } catch (NumberFormatException unused) {
        }
        return str;
    }

    public static final void u(List list, List list2) {
        String playUrl;
        Intrinsics.h(list, "<this>");
        List list3 = list2;
        if (list3 == null || list3.isEmpty()) {
            return;
        }
        List list4 = list2;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(list4, 10)), 16));
        for (Object obj : list4) {
            linkedHashMap.put(((ShorttvModel.UGCVideo) obj).getUgcVideoId(), obj);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) it.next();
            ShorttvModel.UGCVideo uGCVideo2 = (ShorttvModel.UGCVideo) linkedHashMap.get(uGCVideo.getUgcVideoId());
            if (uGCVideo2 != null && (playUrl = uGCVideo2.getPlayUrl()) != null) {
                if (StringsKt.q0(playUrl)) {
                    playUrl = null;
                }
                if (playUrl != null) {
                    uGCVideo.setPlayUrl(playUrl);
                }
            }
        }
    }
}
