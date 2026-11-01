package com.transsion.transfer.wifi.util;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f55966a = new e();

    private e() {
    }

    public final Map a(String urlString) {
        Object objM454constructorimpl;
        Intrinsics.h(urlString, "urlString");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(urlString);
            Intrinsics.g(uri, "parse(...)");
            linkedHashMap.put("urlPath", uri.getPath());
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            Intrinsics.g(queryParameterNames, "getQueryParameterNames(...)");
            for (String str : queryParameterNames) {
                linkedHashMap.put(str, uri.getQueryParameter(str));
            }
            objM454constructorimpl = Result.m454constructorimpl(linkedHashMap);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Object obj = linkedHashMap;
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null) {
            obj = objM454constructorimpl;
        }
        return (Map) obj;
    }
}
