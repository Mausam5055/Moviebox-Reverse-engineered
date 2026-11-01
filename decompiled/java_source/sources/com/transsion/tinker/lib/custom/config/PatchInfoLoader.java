package com.transsion.tinker.lib.custom.config;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.tinker.lib.custom.check.BffCheckUpdateData;
import com.transsion.tinker.lib.custom.check.BffPatchInfo;
import com.transsion.tinker.lib.custom.check.CheckUpdateResponse;
import java.util.List;
import ou.d;
import zg.c;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PatchInfoLoader {

    public enum LoadStatus {
        AVAILABLE,
        REVOKED_BY_SERVER,
        NETWORK_ERROR
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoadStatus f55076a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d f55077b;

        private a(LoadStatus loadStatus, d dVar) {
            this.f55076a = loadStatus;
            this.f55077b = dVar;
        }

        public static a a(d dVar) {
            return new a(LoadStatus.AVAILABLE, dVar);
        }

        public static a b() {
            return new a(LoadStatus.NETWORK_ERROR, null);
        }

        public static a c() {
            return new a(LoadStatus.REVOKED_BY_SERVER, null);
        }
    }

    private static d a(BffPatchInfo bffPatchInfo) {
        String str;
        String str2 = bffPatchInfo.bundleUrl;
        if (str2 == null || str2.trim().isEmpty()) {
            ShareTinkerLog.i("Tinker.PatchInfoLoader", "patchInfo.bundleUrl is empty, skip", new Object[0]);
            return null;
        }
        if (!str2.toLowerCase().startsWith("https://")) {
            ShareTinkerLog.w("Tinker.PatchInfoLoader", "patchInfo.bundleUrl must be HTTPS, skip: %s", str2);
            return null;
        }
        String str3 = bffPatchInfo.tinkerId;
        if (str3 == null || str3.trim().isEmpty()) {
            ShareTinkerLog.w("Tinker.PatchInfoLoader", "patchInfo.tinkerId is empty, Tinker install will fail, skip", new Object[0]);
            return null;
        }
        String str4 = bffPatchInfo.f55075id;
        if (str4 == null || str4.trim().isEmpty()) {
            str = "hotfix_bff";
        } else {
            str = "hotfix_" + bffPatchInfo.f55075id.trim();
        }
        d.b bVarX = new d.b(str2.trim(), str).y(str3.trim()).x(bffPatchInfo.patchSize);
        String str5 = bffPatchInfo.bundleMd5;
        if (str5 != null && !str5.trim().isEmpty()) {
            bVarX.u(bffPatchInfo.bundleMd5);
        }
        d dVarQ = bVarX.q();
        ShareTinkerLog.i("Tinker.PatchInfoLoader", "loaded pending patch: patchId=%s tinkerId=%s", dVarQ.f(), dVarQ.j());
        return dVarQ;
    }

    private static long b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.PatchInfoLoader", "getVersionCode failed: %s", th2.getMessage());
            return -1L;
        }
    }

    private static boolean c(String str) {
        try {
            String strF = ou.a.s().F();
            if (strF != null && !strF.trim().isEmpty()) {
                boolean zEqualsIgnoreCase = str.trim().equalsIgnoreCase(strF.trim());
                ShareTinkerLog.i("Tinker.PatchInfoLoader", "isAbiExactMatch: patch.abiFilter=%s local.ndkFilter=%s matched=%b", str, strF, Boolean.valueOf(zEqualsIgnoreCase));
                return zEqualsIgnoreCase;
            }
            ShareTinkerLog.w("Tinker.PatchInfoLoader", "isAbiExactMatch: ndkFilter not set in HotfixConfig, treat as matched", new Object[0]);
            return true;
        } catch (Throwable th2) {
            ShareTinkerLog.w("Tinker.PatchInfoLoader", "isAbiExactMatch failed: %s, treat as matched", th2.getMessage());
            return true;
        }
    }

    public static a d(Context context) {
        BffCheckUpdateData bffCheckUpdateData;
        String strT = ou.a.s().t();
        try {
            pu.a aVar = (pu.a) c.f79414e.a().h(pu.a.class);
            String strU = ou.a.s().u();
            ShareTinkerLog.i("Tinker.PatchInfoLoader", "loadPatchInfo: appPath=%s channel=%s", strT, strU);
            CheckUpdateResponse checkUpdateResponse = (CheckUpdateResponse) aVar.a(strT, "", strU).execute().a();
            if (checkUpdateResponse != null && checkUpdateResponse.code == 0 && (bffCheckUpdateData = checkUpdateResponse.data) != null) {
                List<BffPatchInfo> list = bffCheckUpdateData.hotUpdates;
                if (list != null && !list.isEmpty()) {
                    long jB = b(context);
                    d dVarA = null;
                    d dVarA2 = null;
                    for (BffPatchInfo bffPatchInfo : list) {
                        if (bffPatchInfo != null && bffPatchInfo.targetVersionCode == jB) {
                            String str = bffPatchInfo.abiFilter;
                            String strTrim = str == null ? "" : str.trim();
                            if (!strTrim.isEmpty()) {
                                if (c(strTrim) && (dVarA2 = a(bffPatchInfo)) != null) {
                                    break;
                                }
                            } else if (dVarA == null) {
                                dVarA = a(bffPatchInfo);
                            }
                        }
                    }
                    if (dVarA2 != null) {
                        dVarA = dVarA2;
                    }
                    if (dVarA != null) {
                        ShareTinkerLog.i("Tinker.PatchInfoLoader", "check-update: selected patch patchId=%s (exactMatch=%b)", dVarA.f(), Boolean.valueOf(dVarA2 != null));
                        return a.a(dVarA);
                    }
                    ShareTinkerLog.i("Tinker.PatchInfoLoader", "check-update: no patch matched versionCode=%d, server revoked patch", Long.valueOf(jB));
                    return a.c();
                }
                ShareTinkerLog.i("Tinker.PatchInfoLoader", "check-update: hotUpdates empty, server revoked patch", new Object[0]);
                return a.c();
            }
            ShareTinkerLog.i("Tinker.PatchInfoLoader", "check-update: no valid response, treat as network error", new Object[0]);
            return a.b();
        } catch (Exception e11) {
            ShareTinkerLog.e("Tinker.PatchInfoLoader", "loadPatchInfo failed: %s", e11.getMessage());
            return a.b();
        }
    }
}
