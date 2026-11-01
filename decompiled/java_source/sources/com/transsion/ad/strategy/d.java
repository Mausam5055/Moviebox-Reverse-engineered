package com.transsion.ad.strategy;

import android.text.TextUtils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f42231a = new d();

    private d() {
    }

    private final List c() {
        ArrayList arrayList = new ArrayList();
        try {
            Result.Companion companion = Result.INSTANCE;
            Iterator it = StringsKt.S0(b(), new String[]{","}, false, 0, 6, null).iterator();
            while (it.hasNext()) {
                String upperCase = ((String) it.next()).toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "toUpperCase(...)");
                arrayList.add(upperCase);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return arrayList;
    }

    public final Map a(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("genre", str);
        return linkedHashMap;
    }

    public final String b() {
        String string = f.f42232a.c().getString("ad_plan_genre", "");
        return string == null ? "" : string;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0063  */
    public final boolean d(Map map) {
        Object objM454constructorimpl;
        boolean zA;
        String str;
        String upperCase;
        List arrayList;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (map != null) {
                Object obj = map.get("genre");
                String str2 = obj instanceof String ? (String) obj : null;
                if (str2 != null) {
                    String upperCase2 = str2.toUpperCase(Locale.ROOT);
                    Intrinsics.g(upperCase2, "toUpperCase(...)");
                    str = upperCase2;
                } else {
                    str = null;
                }
                String strQ = str != null ? StringsKt.Q(str, " ", "", false, 4, null) : null;
                List listS0 = strQ != null ? StringsKt.S0(strQ, new String[]{","}, false, 0, 6, null) : null;
                Object obj2 = map.get(TmcStartParams.KEY_CHANNEL_ID);
                String str3 = obj2 instanceof String ? (String) obj2 : null;
                if (str3 != null) {
                    upperCase = str3.toUpperCase(Locale.ROOT);
                    Intrinsics.g(upperCase, "toUpperCase(...)");
                    if (upperCase == null) {
                        upperCase = "";
                    }
                } else {
                    upperCase = "";
                }
                List listU0 = listS0 != null ? CollectionsKt.U0(listS0) : null;
                if (!TextUtils.isEmpty(upperCase) && listU0 != null) {
                    listU0.add(upperCase);
                }
                ti.k kVar = ti.k.f76262a;
                if (listU0 == null || (arrayList = CollectionsKt.U0(listU0)) == null) {
                    arrayList = new ArrayList();
                }
                zA = kVar.a(arrayList, f42231a.c());
            } else {
                zA = false;
            }
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(zA));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final void e(MbAdPlansBean mbAdPlansBean) {
        f.f42232a.c().putString("ad_plan_genre", mbAdPlansBean != null ? mbAdPlansBean.getGenre() : null);
        oi.a.c(oi.a.f71022a, d.class.getSimpleName() + " --> saveGenre() --> genre = " + (mbAdPlansBean != null ? mbAdPlansBean.getGenre() : null), 0, false, 6, null);
    }
}
