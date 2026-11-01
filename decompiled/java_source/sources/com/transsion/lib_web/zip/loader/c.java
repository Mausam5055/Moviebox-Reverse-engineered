package com.transsion.lib_web.zip.loader;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f46202a = a.f46203a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f46203a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final HashMap f46204b = MapsKt.j(new Pair(OSSHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*"), new Pair("Access-Control-Allow-Credentials", "*"));

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f46205c = "versionCode";

        private a() {
        }

        public final HashMap a() {
            return f46204b;
        }
    }

    public static final class b {
        public static Map a(c cVar, Map headers) {
            Intrinsics.h(headers, "headers");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(headers);
            linkedHashMap.putAll(c.f46202a.a());
            return linkedHashMap;
        }
    }

    WebResourceResponse a(WebResourceRequest webResourceRequest);
}
