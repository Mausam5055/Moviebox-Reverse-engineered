package com.tencent.tinker.loader;

import android.annotation.TargetApi;
import android.content.Intent;
import com.tencent.tinker.loader.app.TinkerApplication;
import com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareSecurityCheck;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class TinkerArkHotLoader {
    private static HashSet<ShareArkHotDiffPatchInfo> arkHotApkInfo = new HashSet<>();
    private static boolean isArkHotRuning = ShareTinkerInternals.isArkHotRuning();

    private TinkerArkHotLoader() {
    }

    public static boolean checkComplete(String str, ShareSecurityCheck shareSecurityCheck, Intent intent) {
        String str2 = shareSecurityCheck.getMetaContentMap().get("assets/arkHot_meta.txt");
        if (str2 == null) {
            return true;
        }
        arkHotApkInfo.clear();
        ArrayList<ShareArkHotDiffPatchInfo> arrayList = new ArrayList();
        ShareArkHotDiffPatchInfo.parseDiffPatchInfo(str2, arrayList);
        if (arrayList.isEmpty()) {
            return true;
        }
        HashMap map = new HashMap(1);
        for (ShareArkHotDiffPatchInfo shareArkHotDiffPatchInfo : arrayList) {
            if (!ShareArkHotDiffPatchInfo.checkDiffPatchInfo(shareArkHotDiffPatchInfo)) {
                intent.putExtra("intent_patch_package_patch_check", -3);
                ShareIntentUtil.setIntentReturnCode(intent, -8);
                return false;
            }
            if (isArkHotRuning && "patch.apk".equals(shareArkHotDiffPatchInfo.name)) {
                arkHotApkInfo.add(shareArkHotDiffPatchInfo);
            }
        }
        if (isArkHotRuning && !arkHotApkInfo.isEmpty()) {
            map.put("patch.apk", "");
        }
        String str3 = str + "/arkHot/";
        File file = new File(str3);
        if (!file.exists() || !file.isDirectory()) {
            ShareIntentUtil.setIntentReturnCode(intent, -9);
            return false;
        }
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            File file2 = new File(str3 + ((String) it.next()));
            if (!SharePatchFileUtil.isLegalFile(file2)) {
                try {
                    intent.putExtra("intent_patch_missing_dex_path", file2.getCanonicalPath());
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                ShareIntentUtil.setIntentReturnCode(intent, -10);
                return false;
            }
        }
        intent.putExtra("intent_patch_dexes_path", map);
        return true;
    }

    @TargetApi(14)
    public static boolean loadTinkerArkHot(TinkerApplication tinkerApplication, String str, Intent intent) {
        if (arkHotApkInfo.isEmpty()) {
            ShareTinkerLog.w("Tinker.TinkerArkHotLoader", "there is no apk to load", new Object[0]);
            return true;
        }
        PathClassLoader pathClassLoader = (PathClassLoader) TinkerArkHotLoader.class.getClassLoader();
        if (pathClassLoader == null) {
            ShareTinkerLog.e("Tinker.TinkerArkHotLoader", "classloader is null", new Object[0]);
            ShareIntentUtil.setIntentReturnCode(intent, -12);
            return false;
        }
        ShareTinkerLog.i("Tinker.TinkerArkHotLoader", "classloader: " + pathClassLoader.toString(), new Object[0]);
        String str2 = str + "/arkHot/";
        ArrayList arrayList = new ArrayList();
        if (isArkHotRuning && !arkHotApkInfo.isEmpty()) {
            arrayList.add(new File(str2 + "patch.apk"));
        }
        try {
            SystemClassLoaderAdder.installApk(pathClassLoader, arrayList);
            return true;
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.TinkerArkHotLoader", "install dexes failed", new Object[0]);
            intent.putExtra("intent_patch_exception", th2);
            ShareIntentUtil.setIntentReturnCode(intent, -14);
            return false;
        }
    }
}
