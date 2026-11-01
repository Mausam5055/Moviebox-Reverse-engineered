package com.tencent.tinker.lib.service;

import android.os.Process;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import vf.a;
import vf.c;
import wf.b;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultTinkerResultService extends AbstractResultService {
    @Override // com.tencent.tinker.lib.service.AbstractResultService
    public void a(PatchResult patchResult) {
        if (patchResult == null) {
            ShareTinkerLog.e("Tinker.DefaultTinkerResultService", "DefaultTinkerResultService received null result!!!!", new Object[0]);
            return;
        }
        ShareTinkerLog.i("Tinker.DefaultTinkerResultService", "DefaultTinkerResultService received a result:%s ", patchResult.toString());
        b.e(getApplicationContext());
        if (patchResult.isSuccess) {
            d(new File(patchResult.rawPatchFilePath));
            if (c(patchResult)) {
                Process.killProcess(Process.myPid());
            } else {
                ShareTinkerLog.i("Tinker.DefaultTinkerResultService", "I have already install the newly patch version!", new Object[0]);
            }
        }
    }

    public boolean c(PatchResult patchResult) {
        c cVarM;
        a aVarX = a.x(getApplicationContext());
        if (!aVarX.u() || (cVarM = aVarX.m()) == null) {
            return true;
        }
        String str = cVarM.f77308b;
        String str2 = patchResult.patchVersion;
        return str2 == null || !str2.equals(str);
    }

    public void d(File file) {
        if (SharePatchFileUtil.isLegalFile(file)) {
            ShareTinkerLog.w("Tinker.DefaultTinkerResultService", "deleteRawPatchFile rawFile path: %s", file.getPath());
            String name = file.getName();
            if (!name.startsWith("patch-") || !name.endsWith(".apk")) {
                SharePatchFileUtil.safeDeleteFile(file);
                return;
            }
            File parentFile = file.getParentFile();
            if (!parentFile.getName().startsWith("patch-")) {
                SharePatchFileUtil.safeDeleteFile(file);
                return;
            }
            File parentFile2 = parentFile.getParentFile();
            if (parentFile2.getName().equals("tinker") || parentFile2.getName().equals("wc_tinker_dir")) {
                return;
            }
            SharePatchFileUtil.safeDeleteFile(file);
        }
    }
}
