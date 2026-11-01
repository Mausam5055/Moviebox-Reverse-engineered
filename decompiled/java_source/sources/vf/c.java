package vf;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.media3.common.PlaybackException;
import com.hisavana.common.bean.TAdErrorCode;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.SharePatchInfo;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SharePatchInfo f77307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f77308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f77309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f77310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f77311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f77312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public File f77313g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public File f77314h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public File f77315i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public File f77316j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public File f77317k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public File f77318l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public HashMap f77319m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public HashMap f77320n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public HashMap f77321o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f77322p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f77323q;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean a(Context context, Intent intent) {
        String str;
        String str2;
        int i11;
        boolean z10;
        boolean z11;
        int i12;
        a aVarX = a.x(context);
        this.f77322p = ShareIntentUtil.getIntentReturnCode(intent);
        this.f77323q = ShareIntentUtil.getIntentPatchCostTime(intent);
        this.f77312f = ShareIntentUtil.getBooleanExtra(intent, "intent_patch_system_ota", false);
        String stringExtra = ShareIntentUtil.getStringExtra(intent, "intent_patch_oat_dir");
        this.f77309c = stringExtra;
        this.f77311e = "interpet".equals(stringExtra);
        boolean zR = aVarX.r();
        Integer numValueOf = Integer.valueOf(this.f77322p);
        String processName = ShareTinkerInternals.getProcessName(context);
        Boolean boolValueOf = Boolean.valueOf(zR);
        Boolean boolValueOf2 = Boolean.valueOf(this.f77312f);
        String str3 = Build.FINGERPRINT;
        ShareTinkerLog.i("Tinker.TinkerLoadResult", "parseTinkerResult loadCode:%d, process name:%s, main process:%b, systemOTA:%b, fingerPrint:%s, oatDir:%s, useInterpretMode:%b", numValueOf, processName, boolValueOf, boolValueOf2, str3, this.f77309c, Boolean.valueOf(this.f77311e));
        String stringExtra2 = ShareIntentUtil.getStringExtra(intent, "intent_patch_old_version");
        String stringExtra3 = ShareIntentUtil.getStringExtra(intent, "intent_patch_new_version");
        File fileH = aVarX.h();
        File fileI = aVarX.i();
        if (stringExtra2 == null || stringExtra3 == null) {
            str = stringExtra3;
            str2 = stringExtra2;
            i11 = 5;
        } else {
            if (zR) {
                this.f77308b = stringExtra3;
            } else {
                this.f77308b = stringExtra2;
            }
            ShareTinkerLog.i("Tinker.TinkerLoadResult", "parseTinkerResult oldVersion:%s, newVersion:%s, current:%s", stringExtra2, stringExtra3, this.f77308b);
            String patchVersionDirectory = SharePatchFileUtil.getPatchVersionDirectory(this.f77308b);
            if (!ShareTinkerInternals.isNullOrNil(patchVersionDirectory)) {
                this.f77313g = new File(fileH.getAbsolutePath() + "/" + patchVersionDirectory);
                this.f77314h = new File(this.f77313g.getAbsolutePath(), SharePatchFileUtil.getPatchVersionFile(this.f77308b));
                this.f77315i = new File(this.f77313g, "dex");
                this.f77316j = new File(this.f77313g, "lib");
                this.f77317k = new File(this.f77313g, "res");
                this.f77318l = new File(this.f77317k, "resources.apk");
            }
            str2 = stringExtra2;
            i11 = 5;
            this.f77307a = new SharePatchInfo(stringExtra2, stringExtra3, ShareIntentUtil.getBooleanExtra(intent, "intent_is_protected_app", false), ShareIntentUtil.getBooleanExtra(intent, "intent_use_custom_patch", false), "", str3, this.f77309c, false);
            str = stringExtra3;
            this.f77310d = !str2.equals(str);
        }
        Throwable intentPatchException = ShareIntentUtil.getIntentPatchException(intent);
        if (intentPatchException != null) {
            ShareTinkerLog.i("Tinker.TinkerLoadResult", "Tinker load have exception loadCode:%d", Integer.valueOf(this.f77322p));
            int i13 = this.f77322p;
            if (i13 == -25) {
                i12 = -4;
            } else if (i13 != -23) {
                i12 = -1;
                if (i13 != -20 && i13 == -14) {
                    i12 = -2;
                }
            } else {
                i12 = -3;
            }
            aVarX.g().a(intentPatchException, i12);
            return false;
        }
        int i14 = this.f77322p;
        if (i14 == -10000) {
            ShareTinkerLog.e("Tinker.TinkerLoadResult", "can't get the right intent return code", new Object[0]);
            throw new TinkerRuntimeException("can't get the right intent return code");
        }
        if (i14 == -24) {
            File file = this.f77318l;
            if (file == null) {
                ShareTinkerLog.e("Tinker.TinkerLoadResult", "resource file md5 mismatch, but patch resource file not found!", new Object[0]);
                throw new TinkerRuntimeException("resource file md5 mismatch, but patch resource file not found!");
            }
            ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch resource file md5 is mismatch: %s", file.getAbsolutePath());
            aVarX.g().f(this.f77318l, 6);
            return false;
        }
        if (i14 == -22) {
            if (this.f77313g == null) {
                ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch resource file not found, warning why the path is null!!!!", new Object[0]);
                throw new TinkerRuntimeException("patch resource file not found, warning why the path is null!!!!");
            }
            ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch resource file not found:%s", this.f77318l.getAbsolutePath());
            aVarX.g().c(this.f77318l, 6, false);
            return false;
        }
        if (i14 == -21) {
            if (this.f77313g == null) {
                ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch resource file directory not found, warning why the path is null!!!!", new Object[0]);
                throw new TinkerRuntimeException("patch resource file directory not found, warning why the path is null!!!!");
            }
            ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch resource file directory not found:%s", this.f77317k.getAbsolutePath());
            aVarX.g().c(this.f77317k, 6, true);
            return false;
        }
        switch (i14) {
            case -19:
                ShareTinkerLog.i("Tinker.TinkerLoadResult", "rewrite patch info file corrupted", new Object[0]);
                aVarX.g().g(str2, str, fileI);
                return false;
            case -18:
                String stringExtra4 = ShareIntentUtil.getStringExtra(intent, "intent_patch_missing_lib_path");
                if (stringExtra4 == null) {
                    ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch lib file not found, but path is null!!!!", new Object[0]);
                    throw new TinkerRuntimeException("patch lib file not found, but path is null!!!!");
                }
                ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch lib file not found:%s", stringExtra4);
                aVarX.g().c(new File(stringExtra4), i11, false);
                return false;
            case -17:
                if (this.f77313g == null) {
                    ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch lib file directory not found, warning why the path is null!!!!", new Object[0]);
                    throw new TinkerRuntimeException("patch lib file directory not found, warning why the path is null!!!!");
                }
                ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch lib file directory not found:%s", this.f77316j.getAbsolutePath());
                aVarX.g().c(this.f77316j, i11, true);
                return false;
            case -16:
                aVarX.g().d(2, ShareIntentUtil.getIntentInterpretException(intent));
                return false;
            case -15:
                aVarX.g().d(1, ShareIntentUtil.getIntentInterpretException(intent));
                return false;
            default:
                switch (i14) {
                    case -13:
                        z10 = false;
                        String stringExtra5 = ShareIntentUtil.getStringExtra(intent, "intent_patch_mismatch_dex_path");
                        if (stringExtra5 == null) {
                            ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex file md5 is mismatch, but path is null!!!!", new Object[0]);
                            throw new TinkerRuntimeException("patch dex file md5 is mismatch, but path is null!!!!");
                        }
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex file md5 is mismatch: %s", stringExtra5);
                        aVarX.g().f(new File(stringExtra5), 3);
                        return z10;
                    case -12:
                        z10 = false;
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex load fail, classloader is null", new Object[0]);
                        return z10;
                    case -11:
                        z10 = false;
                        String stringExtra6 = ShareIntentUtil.getStringExtra(intent, "intent_patch_missing_dex_path");
                        if (stringExtra6 == null) {
                            ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex opt file not found, but path is null!!!!", new Object[0]);
                            throw new TinkerRuntimeException("patch dex opt file not found, but path is null!!!!");
                        }
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex opt file not found:%s", stringExtra6);
                        aVarX.g().c(new File(stringExtra6), 4, false);
                        return z10;
                    case -10:
                        z10 = false;
                        String stringExtra7 = ShareIntentUtil.getStringExtra(intent, "intent_patch_missing_dex_path");
                        if (stringExtra7 == null) {
                            ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex file not found, but path is null!!!!", new Object[0]);
                            throw new TinkerRuntimeException("patch dex file not found, but path is null!!!!");
                        }
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex file not found:%s", stringExtra7);
                        aVarX.g().c(new File(stringExtra7), 3, false);
                        return z10;
                    case -9:
                        File file2 = this.f77315i;
                        if (file2 == null) {
                            ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex file directory not found, warning why the path is null!!!!", new Object[0]);
                            throw new TinkerRuntimeException("patch dex file directory not found, warning why the path is null!!!!");
                        }
                        z10 = false;
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch dex file directory not found:%s", file2.getAbsolutePath());
                        aVarX.g().c(this.f77315i, 3, true);
                        return z10;
                    case -8:
                        ShareTinkerLog.i("Tinker.TinkerLoadResult", "patch package check fail", new Object[0]);
                        if (this.f77314h == null) {
                            throw new TinkerRuntimeException("error patch package check fail , but file is null");
                        }
                        aVarX.g().b(this.f77314h, intent.getIntExtra("intent_patch_package_patch_check", TAdErrorCode.CODE_UNKNOWN));
                        return false;
                    case -7:
                        z11 = false;
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch version file not found, current version:%s", this.f77308b);
                        if (this.f77314h == null) {
                            throw new TinkerRuntimeException("error load patch version file not exist, but file is null");
                        }
                        aVarX.g().c(this.f77314h, 1, false);
                        return z11;
                    case PlaybackException.ERROR_CODE_NOT_SUPPORTED /* -6 */:
                        z11 = false;
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "patch version directory not found, current version:%s", this.f77308b);
                        aVarX.g().c(this.f77313g, 1, true);
                        return z11;
                    case -5:
                        z11 = false;
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "path info blank, wait main process to restart", new Object[0]);
                        return z11;
                    case -4:
                        z11 = false;
                        ShareTinkerLog.e("Tinker.TinkerLoadResult", "path info corrupted", new Object[0]);
                        aVarX.g().g(str2, str, fileI);
                        return z11;
                    case -3:
                    case -2:
                        z11 = false;
                        ShareTinkerLog.w("Tinker.TinkerLoadResult", "can't find patch file, is ok, just return", new Object[0]);
                        return z11;
                    case -1:
                        z11 = false;
                        ShareTinkerLog.w("Tinker.TinkerLoadResult", "tinker is disable, just return", new Object[0]);
                        return z11;
                    case 0:
                        ShareTinkerLog.i("Tinker.TinkerLoadResult", "oh yeah, tinker load all success", new Object[0]);
                        aVarX.w(true);
                        this.f77319m = ShareIntentUtil.getIntentPatchDexPaths(intent);
                        this.f77320n = ShareIntentUtil.getIntentPatchLibsPaths(intent);
                        this.f77321o = ShareIntentUtil.getIntentPackageConfig(intent);
                        if (this.f77311e) {
                            aVarX.g().d(0, null);
                        }
                        if (zR && this.f77310d) {
                            aVarX.g().i(str2, str, fileH, this.f77313g.getName());
                        }
                        return true;
                    default:
                        return false;
                }
        }
    }
}
