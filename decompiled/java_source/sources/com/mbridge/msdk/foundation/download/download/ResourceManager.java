package com.mbridge.msdk.foundation.download.download;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.d;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.same.task.a;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ResourceManager {
    public static final int EXPIRE_TIME = 259200000;
    public static final String KEY_INDEX_HTML = "foldername";
    public static final String KEY_MD5CHECK = "nc";
    public static final String KEY_MD5FILENAME = "md5filename";
    private static String TAG = "ResourceManager";
    private String mFileSaveSDDir;

    private static class ResourceManagerHolder {
        public static ResourceManager instance = new ResourceManager();

        private ResourceManagerHolder() {
        }
    }

    private ResourceManager() {
        init();
    }

    public static ResourceManager getinstance() {
        return ResourceManagerHolder.instance;
    }

    private String save(String str, String str2, File file) throws Throwable {
        String strB = m0.b(str2, this.mFileSaveSDDir + "/" + SameMD5.getMD5(z0.b(str)));
        return TextUtils.isEmpty(strB) ? m0.a(file) : strB;
    }

    public void cleanZipRes() {
        try {
            if (TextUtils.isEmpty(this.mFileSaveSDDir)) {
                return;
            }
            DownloadTask.getInstance().runTask(new a() { // from class: com.mbridge.msdk.foundation.download.download.ResourceManager.1
                @Override // com.mbridge.msdk.foundation.same.task.a
                public void cancelTask() {
                }

                @Override // com.mbridge.msdk.foundation.same.task.a
                public void pauseTask(boolean z10) {
                }

                @Override // com.mbridge.msdk.foundation.same.task.a
                public void runTask() {
                    m0.a(ResourceManager.this.mFileSaveSDDir);
                }
            });
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public String getResDirFromCampaign(String str) {
        String strSubstring;
        String str2 = "";
        try {
            String str3 = this.mFileSaveSDDir + "/" + SameMD5.getMD5(z0.b(str));
            List<String> queryParameters = Uri.parse(str).getQueryParameters(KEY_INDEX_HTML);
            o0.a(TAG, "check zip 下载情况：url:" + str);
            o0.a(TAG, "check zip 下载情况：indexHtml:" + queryParameters);
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
            g gVarD = h.b().d(c.m().b());
            if (gVarD != null && !TextUtils.isEmpty(gVarD.T())) {
                d.a(str, new File(str5));
            }
            try {
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

    public void init() {
        this.mFileSaveSDDir = e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_RES);
    }

    public synchronized String saveResFile(String str, byte[] bArr) {
        String message;
        String strSave = "unknow exception ";
        if (bArr != null) {
            try {
                try {
                    if (bArr.length > 0) {
                        String str2 = this.mFileSaveSDDir + "/" + SameMD5.getMD5(z0.b(str)) + ".zip";
                        File file = new File(str2);
                        if (m0.a(bArr, file)) {
                            Uri uri = Uri.parse(str);
                            List<String> queryParameters = uri.getQueryParameters(KEY_MD5CHECK);
                            if (queryParameters == null || queryParameters.size() == 0) {
                                List<String> queryParameters2 = uri.getQueryParameters(KEY_MD5FILENAME);
                                if (queryParameters2 != null && queryParameters2.size() > 0) {
                                    String str3 = queryParameters2.get(0);
                                    if (!TextUtils.isEmpty(str3) && str3.equals(l0.a(file))) {
                                        strSave = save(str, str2, file);
                                    }
                                }
                            } else {
                                strSave = save(str, str2, file);
                            }
                        }
                        if (!TextUtils.isEmpty(strSave)) {
                            m0.a(file);
                        }
                    }
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        e11.printStackTrace();
                    }
                    message = e11.getMessage();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        message = strSave;
        return message;
    }
}
