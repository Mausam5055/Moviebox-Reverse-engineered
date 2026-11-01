package com.transsion.shorttv_pugc.utils;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0672a f54434e = new C0672a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f54435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet f54436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashSet f54437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f54438d;

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.utils.a$a, reason: collision with other inner class name */
    public static final class C0672a {
        private C0672a() {
        }

        public /* synthetic */ C0672a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.f54435a = pageName;
        this.f54436b = new HashSet();
        this.f54437c = new HashSet();
        this.f54438d = new HashSet();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    public final void a(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool, String str7, Integer num, String str8, long j11, Boolean bool2, String str9) {
        boolean zContains;
        String str10 = str4;
        if (str == null || str.length() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", str2 == null ? "" : str2);
        linkedHashMap.put("opt_type", str3 == null ? "" : str3);
        if (Intrinsics.c(str3, ShortTvItemType.OP_SUBJECTS_MOVIE.getValue())) {
            if (str10 != null) {
                zContains = this.f54436b.contains(str4);
                this.f54436b.add(str4);
            } else {
                zContains = false;
            }
        } else if (Intrinsics.c(str3, ShortTvItemType.BANNER.getValue())) {
            if (num != null) {
                zContains = this.f54437c.contains(num);
                this.f54437c.add(num);
            } else {
                zContains = false;
            }
        } else if (!Intrinsics.c(str3, ShortTvItemType.OP_RANKING.getValue()) || str10 == null) {
            zContains = false;
        } else {
            zContains = this.f54438d.contains(str4);
            this.f54438d.add(str4);
        }
        if (zContains) {
            return;
        }
        if (str10 == null) {
            str10 = "";
        }
        linkedHashMap.put("subject_id", str10);
        linkedHashMap.put("group_id", str5 == null ? "" : str5);
        linkedHashMap.put("ops", str6 != null ? str6 : "");
        linkedHashMap.put("has_resource", String.valueOf(bool));
        linkedHashMap.put("deeplink", str7);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        linkedHashMap.put("cover", str8);
        linkedHashMap.put("browse_duration", String.valueOf(j11));
        linkedHashMap.put("builtin", Intrinsics.c(bool2, Boolean.TRUE) ? "1" : "0");
        linkedHashMap.put("tag", String.valueOf(str9));
        hj.i.f64505a.D(str, linkedHashMap);
    }

    public final void c(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool, Boolean bool2, String str7, Integer num, String str8, Boolean bool3, String str9) {
        if (str == null || str.length() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", str2 == null ? "" : str2);
        linkedHashMap.put("opt_type", str3 == null ? "" : str3);
        linkedHashMap.put("subject_id", str4 == null ? "" : str4);
        linkedHashMap.put("group_id", str5 == null ? "" : str5);
        linkedHashMap.put("ops", str6 != null ? str6 : "");
        linkedHashMap.put("has_resource", String.valueOf(bool));
        linkedHashMap.put("check_in", String.valueOf(bool2));
        linkedHashMap.put("deeplink", str7);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        linkedHashMap.put("cover", str8);
        linkedHashMap.put("builtin", Intrinsics.c(bool3, Boolean.TRUE) ? "1" : "0");
        linkedHashMap.put("tag", String.valueOf(str9));
        hj.i.f64505a.p(str, linkedHashMap);
    }
}
