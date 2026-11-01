package com.mbridge.msdk.videocommon.download;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Patterns;
import android.webkit.URLUtil;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static d f39908h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CopyOnWriteArrayList<String> f39909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentMap<String, Object> f39910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f39911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f39912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f39913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f39914f = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f39915g = "down_type";

    private d() {
        this.f39913e = false;
        try {
            this.f39911c = i.a();
            this.f39912d = f.a();
            this.f39909a = new CopyOnWriteArrayList<>();
            this.f39910b = new ConcurrentHashMap();
            com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD != null) {
                this.f39913e = gVarD.b(1);
            }
        } catch (Throwable th2) {
            o0.b("H5DownLoadManager", th2.getMessage(), th2);
        }
    }

    public static synchronized d a() {
        try {
            if (f39908h == null) {
                f39908h = new d();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f39908h;
    }

    private String b(String str) {
        f fVar = this.f39912d;
        return fVar != null ? fVar.b(str) : str;
    }

    public String a(String str) {
        try {
            if (Patterns.WEB_URL.matcher(str).matches() || URLUtil.isValidUrl(str)) {
                Uri uri = Uri.parse(str);
                String path = uri.getPath();
                if (TextUtils.isEmpty(path) || !TextUtils.isEmpty(uri.getQueryParameter("urlDebug"))) {
                    return str;
                }
                return path.toLowerCase().endsWith(".zip") ? c(str) : b(str);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return str;
    }

    public String c(String str) {
        i iVar = this.f39911c;
        if (iVar != null) {
            return iVar.a(str);
        }
        return null;
    }
}
