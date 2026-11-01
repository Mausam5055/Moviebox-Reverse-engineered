package com.transsion.base.report.athena.sampler;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class EventConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EventConfig f43003a = new EventConfig();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f43004b = "[\n    {\n        \"eventExpr\":\"(event =='ad_trigger')\",\n        \"batchKey\":\"客户端采样因子A\",\n        \"samplingRate\":0\n    },\n    {\n       \"eventExpr\":\"(event =='ad_display')\",\n        \"batchKey\":\"客户端采样因子b\",\n        \"samplingRate\":10\n    },\n    {\n       \"eventExpr\":\"(event =='ad_click')\",\n        \"batchKey\":\"客户端采样因子b\",\n        \"samplingRate\":90\n    }\n]";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile List f43005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set f43006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Set f43007e;

    static {
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.g(setNewSetFromMap, "newSetFromMap(...)");
        f43006d = setNewSetFromMap;
        Set setNewSetFromMap2 = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.g(setNewSetFromMap2, "newSetFromMap(...)");
        f43007e = setNewSetFromMap2;
    }

    private EventConfig() {
    }

    private final void f(String str) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            f43005c = (List) o.f().fromJson(str, new TypeToken<List<? extends EventStrategyBean>>() { // from class: com.transsion.base.report.athena.sampler.EventConfig$initEventStrategy$1$listType$1
            }.getType());
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "sampler", "EventConfig --> initEventStrategy() --> error = " + thM457exceptionOrNullimpl, false, 4, null);
            f43005c = null;
        }
    }

    private final boolean g(String str) {
        if (str == null || StringsKt.q0(str)) {
            return false;
        }
        try {
            JsonElement string = JsonParser.parseString(str);
            Intrinsics.g(string, "parseString(...)");
            return string.isJsonObject() || string.isJsonArray();
        } catch (Exception unused) {
            return false;
        }
    }

    public final void a(String event) {
        Intrinsics.h(event, "event");
        f43007e.add(event);
    }

    public final void b(String event) {
        Intrinsics.h(event, "event");
        f43006d.add(event);
    }

    public final Set c() {
        return CollectionsKt.W0(f43007e);
    }

    public final Set d() {
        return CollectionsKt.W0(f43006d);
    }

    public final List e() {
        return f43005c;
    }

    public final void h(String event) {
        Intrinsics.h(event, "event");
        f43007e.remove(event);
    }

    public final void i(String event) {
        Intrinsics.h(event, "event");
        f43006d.remove(event);
    }

    public final void j(String str) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "sampler", "EventConfig --> saveEventStrategy() --> eventStrategy = " + str, false, 4, null);
        if (TextUtils.isEmpty(str)) {
            lg.a.C0828a.l(c0828a, "sampler", "EventConfig --> saveEventStrategy() --> eventStrategy is empty!", false, 4, null);
        } else if (g(str)) {
            f(str);
        } else {
            lg.a.C0828a.l(c0828a, "sampler", "EventConfig --> saveEventStrategy() --> eventStrategy is not json!", false, 4, null);
        }
    }
}
