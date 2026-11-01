package com.transsion.base.report.athena.sampler;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import org.json.JSONObject;
import org.mvel2.d;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f43008a = new a();

    private a() {
    }

    private final boolean b(String str, Map map) {
        Object objM454constructorimpl;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Map mapW = MapsKt.w(map);
            Iterator f67431a = Regex.findAll$default(new Regex("\\b([a-zA-Z_][a-zA-Z0-9_]*)\\b"), str, 0, 2, null).getF67431a();
            while (f67431a.hasNext()) {
                String str2 = (String) ((MatchResult) f67431a.next()).a().get(1);
                if (!mapW.containsKey(str2)) {
                    mapW.put(str2, null);
                }
            }
            Object objP = d.p(str, mapW);
            Intrinsics.f(objP, "null cannot be cast to non-null type kotlin.Boolean");
            Boolean bool = (Boolean) objP;
            bool.booleanValue();
            objM454constructorimpl = Result.m454constructorimpl(bool);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.i("sampler", "Eval --> safeEval() --> it = " + thM457exceptionOrNullimpl + " --> rule = " + str + " --> safeVars = " + map, true);
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final Triple a(String event, Bundle bundle) {
        Object objM454constructorimpl;
        Triple triple;
        Intrinsics.h(event, "event");
        Intrinsics.h(bundle, "bundle");
        try {
            Result.Companion companion = Result.INSTANCE;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String string = bundle.getString("ext");
            if (string == null) {
                string = "{}";
            }
            JSONObject jSONObject = new JSONObject(string);
            Iterator<String> itKeys = jSONObject.keys();
            Intrinsics.g(itKeys, "keys(...)");
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                linkedHashMap.put(next, jSONObject.optString(next));
            }
            String string2 = bundle.getString("page_name");
            if (string2 == null) {
                string2 = "";
            }
            linkedHashMap.put("page_name", string2);
            linkedHashMap.put(NotificationCompat.CATEGORY_EVENT, event);
            List listE = EventConfig.f43003a.e();
            if (listE == null) {
                triple = new Triple(Boolean.FALSE, 100, "没有命中，返回默认值");
                break;
            }
            Iterator it = listE.iterator();
            while (true) {
                if (!it.hasNext()) {
                    triple = new Triple(Boolean.FALSE, 100, "没有命中，返回默认值");
                    break;
                }
                EventStrategyBean eventStrategyBean = (EventStrategyBean) it.next();
                if (!TextUtils.isEmpty(eventStrategyBean.getEventExpr())) {
                    String eventExpr = eventStrategyBean.getEventExpr();
                    if (eventExpr == null) {
                        eventExpr = "";
                    }
                    if (b(eventExpr, linkedHashMap)) {
                        triple = new Triple(Boolean.TRUE, eventStrategyBean.getSamplingRate(), eventStrategyBean.getBatchKey());
                        break;
                    }
                    lg.a.C0828a.f(lg.a.f68839a, "sampler", "Eval --> eval() --> 没有命中 继续下一个表达式判断 --> eventExpr = " + eventStrategyBean.getEventExpr() + " --> contextVars = " + linkedHashMap, false, 4, null);
                }
            }
            objM454constructorimpl = Result.m454constructorimpl(triple);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = new Triple(Boolean.FALSE, 100, "没有命中，返回默认值");
        }
        return (Triple) objM454constructorimpl;
    }
}
