package com.mbridge.msdk.videocommon.download;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.z0;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f39918a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static i f39919a = new i(null);
    }

    private i() {
        b();
    }

    /* synthetic */ i(h hVar) {
        this();
    }

    public static i a() {
        return a.f39919a;
    }

    public String a(String str) {
        String strSubstring;
        String str2 = "";
        try {
            String str3 = this.f39918a + "/" + SameMD5.getMD5(z0.b(str));
            List<String> queryParameters = Uri.parse(str).getQueryParameters(ResourceManager.KEY_INDEX_HTML);
            if (queryParameters == null || queryParameters.size() <= 0) {
                return null;
            }
            String str4 = queryParameters.get(0);
            if (TextUtils.isEmpty(str4)) {
                return null;
            }
            String str5 = str3 + "/" + str4 + "/" + str4 + ".html";
            if (!m0.e(str5)) {
                return null;
            }
            try {
                com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (gVarD != null && !TextUtils.isEmpty(gVarD.T())) {
                    com.mbridge.msdk.foundation.same.d.a(str, new File(str5));
                }
                strSubstring = str.substring(str.indexOf(UrlUtils.QUESTION_MARK) + 1);
            } catch (Exception unused) {
                strSubstring = "";
            }
            if (!TextUtils.isEmpty(strSubstring)) {
                str2 = UrlUtils.QUESTION_MARK + strSubstring;
            }
            return AdPayload.FILE_SCHEME + str5 + str2;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            e11.printStackTrace();
            return null;
        }
    }

    public void b() {
        this.f39918a = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_RES);
    }
}
