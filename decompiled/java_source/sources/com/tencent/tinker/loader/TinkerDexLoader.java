package com.tencent.tinker.loader;

import android.content.Intent;
import com.tencent.tinker.loader.app.TinkerApplication;
import com.tencent.tinker.loader.shareutil.ShareConstants;
import com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareSecurityCheck;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class TinkerDexLoader {
    private static final ArrayList<ShareDexDiffPatchInfo> LOAD_DEX_LIST = new ArrayList<>();
    private static HashSet<ShareDexDiffPatchInfo> classNDexInfo = new HashSet<>();
    private static boolean isVmArt = ShareTinkerInternals.isVmArt();

    private TinkerDexLoader() {
    }

    public static boolean checkComplete(String str, ShareSecurityCheck shareSecurityCheck, String str2, Intent intent) {
        String str3 = shareSecurityCheck.getMetaContentMap().get("assets/dex_meta.txt");
        if (str3 == null) {
            return true;
        }
        LOAD_DEX_LIST.clear();
        classNDexInfo.clear();
        ArrayList<ShareDexDiffPatchInfo> arrayList = new ArrayList();
        ShareDexDiffPatchInfo.parseDexDiffPatchInfo(str3, arrayList);
        if (arrayList.isEmpty()) {
            return true;
        }
        HashMap map = new HashMap();
        ShareDexDiffPatchInfo shareDexDiffPatchInfo = null;
        for (ShareDexDiffPatchInfo shareDexDiffPatchInfo2 : arrayList) {
            if (!isJustArtSupportDex(shareDexDiffPatchInfo2)) {
                if (!ShareDexDiffPatchInfo.checkDexDiffPatchInfo(shareDexDiffPatchInfo2)) {
                    intent.putExtra("intent_patch_package_patch_check", -3);
                    ShareIntentUtil.setIntentReturnCode(intent, -8);
                    return false;
                }
                if (isVmArt && shareDexDiffPatchInfo2.rawName.startsWith("test.dex")) {
                    shareDexDiffPatchInfo = shareDexDiffPatchInfo2;
                } else if (isVmArt && ShareConstants.CLASS_N_PATTERN.matcher(shareDexDiffPatchInfo2.realName).matches()) {
                    classNDexInfo.add(shareDexDiffPatchInfo2);
                } else {
                    map.put(shareDexDiffPatchInfo2.realName, getInfoMd5(shareDexDiffPatchInfo2));
                    LOAD_DEX_LIST.add(shareDexDiffPatchInfo2);
                }
            }
        }
        if (isVmArt && (shareDexDiffPatchInfo != null || !classNDexInfo.isEmpty())) {
            if (shareDexDiffPatchInfo != null) {
                HashSet<ShareDexDiffPatchInfo> hashSet = classNDexInfo;
                hashSet.add(ShareTinkerInternals.changeTestDexToClassN(shareDexDiffPatchInfo, hashSet.size() + 1));
            }
            map.put("tinker_classN.apk", "");
        }
        String str4 = str + "/dex/";
        File file = new File(str4);
        if (!file.exists() || !file.isDirectory()) {
            ShareIntentUtil.setIntentReturnCode(intent, -9);
            return false;
        }
        File file2 = new File(str + "/" + str2 + "/");
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            File file3 = new File(str4 + ((String) it.next()));
            if (!SharePatchFileUtil.isLegalFile(file3)) {
                intent.putExtra("intent_patch_missing_dex_path", file3.getAbsolutePath());
                ShareIntentUtil.setIntentReturnCode(intent, -10);
                return false;
            }
            File file4 = new File(SharePatchFileUtil.optimizedPathFor(file3, file2));
            if (!SharePatchFileUtil.isLegalFile(file4) && !SharePatchFileUtil.shouldAcceptEvenIfIllegal(file4)) {
                intent.putExtra("intent_patch_missing_dex_path", file4.getAbsolutePath());
                ShareIntentUtil.setIntentReturnCode(intent, -11);
                return false;
            }
        }
        intent.putExtra("intent_patch_dexes_path", map);
        return true;
    }

    private static void deleteOutOfDateOATFile(String str) {
        SharePatchFileUtil.deleteDir(str + "/odex/");
        if (ShareTinkerInternals.isAfterAndroidO()) {
            SharePatchFileUtil.deleteDir(str + "/dex/oat/");
        }
    }

    private static String getInfoMd5(ShareDexDiffPatchInfo shareDexDiffPatchInfo) {
        return isVmArt ? shareDexDiffPatchInfo.destMd5InArt : shareDexDiffPatchInfo.destMd5InDvm;
    }

    private static boolean isJustArtSupportDex(ShareDexDiffPatchInfo shareDexDiffPatchInfo) {
        return !isVmArt && shareDexDiffPatchInfo.destMd5InDvm.equals("0");
    }

    public static boolean loadTinkerJars(TinkerApplication tinkerApplication, String str, String str2, Intent intent, boolean z10, boolean z11) {
        File file;
        ArrayList<ShareDexDiffPatchInfo> arrayList = LOAD_DEX_LIST;
        if (arrayList.isEmpty() && classNDexInfo.isEmpty()) {
            ShareTinkerLog.w("Tinker.TinkerDexLoader", "there is no dex to load", new Object[0]);
            return true;
        }
        ClassLoader classLoader = TinkerDexLoader.class.getClassLoader();
        if (classLoader == null) {
            ShareTinkerLog.e("Tinker.TinkerDexLoader", "classloader is null", new Object[0]);
            ShareIntentUtil.setIntentReturnCode(intent, -12);
            return false;
        }
        ShareTinkerLog.i("Tinker.TinkerDexLoader", "classloader: " + classLoader.toString(), new Object[0]);
        String str3 = str + "/dex/";
        ArrayList arrayList2 = new ArrayList();
        for (ShareDexDiffPatchInfo shareDexDiffPatchInfo : arrayList) {
            if (!isJustArtSupportDex(shareDexDiffPatchInfo)) {
                File file2 = new File(str3 + shareDexDiffPatchInfo.realName);
                if (tinkerApplication.isTinkerLoadVerifyFlag()) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (!SharePatchFileUtil.verifyDexFileMd5(file2, getInfoMd5(shareDexDiffPatchInfo))) {
                        ShareIntentUtil.setIntentReturnCode(intent, -13);
                        intent.putExtra("intent_patch_mismatch_dex_path", file2.getAbsolutePath());
                        return false;
                    }
                    ShareTinkerLog.i("Tinker.TinkerDexLoader", "verify dex file:" + file2.getPath() + " md5, use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                }
                arrayList2.add(file2);
            }
        }
        if (isVmArt && !classNDexInfo.isEmpty()) {
            File file3 = new File(str3 + "tinker_classN.apk");
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (tinkerApplication.isTinkerLoadVerifyFlag()) {
                for (ShareDexDiffPatchInfo shareDexDiffPatchInfo2 : classNDexInfo) {
                    if (!SharePatchFileUtil.verifyDexFileMd5(file3, shareDexDiffPatchInfo2.rawName, shareDexDiffPatchInfo2.destMd5InArt)) {
                        ShareIntentUtil.setIntentReturnCode(intent, -13);
                        intent.putExtra("intent_patch_mismatch_dex_path", file3.getAbsolutePath());
                        return false;
                    }
                }
            }
            ShareTinkerLog.i("Tinker.TinkerDexLoader", "verify dex file:" + file3.getPath() + " md5, use time: " + (System.currentTimeMillis() - jCurrentTimeMillis2), new Object[0]);
            arrayList2.add(file3);
        }
        File file4 = new File(str + "/" + str2);
        if (z10) {
            final boolean[] zArr = {true};
            final Throwable[] thArr = new Throwable[1];
            try {
                String currentInstructionSet = ShareTinkerInternals.getCurrentInstructionSet();
                deleteOutOfDateOATFile(str);
                ShareTinkerLog.w("Tinker.TinkerDexLoader", "systemOTA, try parallel oat dexes, targetISA:" + currentInstructionSet, new Object[0]);
                File file5 = new File(str + "/interpet");
                TinkerDexOptimizer.optimizeAll(tinkerApplication, arrayList2, file5, true, tinkerApplication.isUseDelegateLastClassLoader(), currentInstructionSet, false, new TinkerDexOptimizer.ResultCallback() { // from class: com.tencent.tinker.loader.TinkerDexLoader.1
                    long start;

                    @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                    public void onFailed(File file6, File file7, Throwable th2) {
                        zArr[0] = false;
                        thArr[0] = th2;
                        ShareTinkerLog.i("Tinker.TinkerDexLoader", "fail to optimize dex " + file6.getPath() + ", use time " + (System.currentTimeMillis() - this.start), new Object[0]);
                    }

                    @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                    public void onStart(File file6, File file7) {
                        this.start = System.currentTimeMillis();
                        ShareTinkerLog.i("Tinker.TinkerDexLoader", "start to optimize dex:" + file6.getPath(), new Object[0]);
                    }

                    @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
                    public void onSuccess(File file6, File file7, File file8) {
                        ShareTinkerLog.i("Tinker.TinkerDexLoader", "success to optimize dex " + file6.getPath() + ", use time " + (System.currentTimeMillis() - this.start), new Object[0]);
                    }
                });
                if (!zArr[0]) {
                    ShareTinkerLog.e("Tinker.TinkerDexLoader", "parallel oat dexes failed", new Object[0]);
                    intent.putExtra("intent_patch_interpret_exception", thArr[0]);
                    ShareIntentUtil.setIntentReturnCode(intent, -16);
                    return false;
                }
                file = file5;
            } catch (Throwable th2) {
                ShareTinkerLog.i("Tinker.TinkerDexLoader", "getCurrentInstructionSet fail:" + th2, new Object[0]);
                deleteOutOfDateOATFile(str);
                intent.putExtra("intent_patch_interpret_exception", th2);
                ShareIntentUtil.setIntentReturnCode(intent, -15);
                return false;
            }
        } else {
            file = file4;
        }
        try {
            SystemClassLoaderAdder.installDexes(tinkerApplication, classLoader, file, arrayList2, z11, tinkerApplication.isUseDelegateLastClassLoader());
            return true;
        } catch (Throwable th3) {
            ShareTinkerLog.e("Tinker.TinkerDexLoader", "install dexes failed", new Object[0]);
            intent.putExtra("intent_patch_exception", th3);
            ShareIntentUtil.setIntentReturnCode(intent, -14);
            return false;
        }
    }
}
