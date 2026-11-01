package com.tencent.tinker.loader;

import android.content.Intent;
import com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareSecurityCheck;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class TinkerSoLoader {
    public static boolean checkComplete(String str, ShareSecurityCheck shareSecurityCheck, Intent intent) {
        String str2 = shareSecurityCheck.getMetaContentMap().get("assets/so_meta.txt");
        if (str2 == null) {
            return true;
        }
        ArrayList<ShareBsDiffPatchInfo> arrayList = new ArrayList();
        ShareBsDiffPatchInfo.parseDiffPatchInfo(str2, arrayList);
        if (arrayList.isEmpty()) {
            return true;
        }
        String str3 = str + "/lib/";
        HashMap map = new HashMap();
        for (ShareBsDiffPatchInfo shareBsDiffPatchInfo : arrayList) {
            if (!ShareBsDiffPatchInfo.checkDiffPatchInfo(shareBsDiffPatchInfo)) {
                intent.putExtra("intent_patch_package_patch_check", -4);
                ShareIntentUtil.setIntentReturnCode(intent, -8);
                return false;
            }
            map.put(shareBsDiffPatchInfo.path + "/" + shareBsDiffPatchInfo.name, shareBsDiffPatchInfo.md5);
        }
        File file = new File(str3);
        if (!file.exists() || !file.isDirectory()) {
            ShareIntentUtil.setIntentReturnCode(intent, -17);
            return false;
        }
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            File file2 = new File(str3 + ((String) it.next()));
            if (!SharePatchFileUtil.isLegalFile(file2)) {
                ShareIntentUtil.setIntentReturnCode(intent, -18);
                intent.putExtra("intent_patch_missing_lib_path", file2.getAbsolutePath());
                return false;
            }
        }
        intent.putExtra("intent_patch_libs_path", map);
        return true;
    }
}
