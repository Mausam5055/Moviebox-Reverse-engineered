package com.tencent.tinker.loader.shareutil;

import android.content.Intent;
import com.hisavana.common.bean.TAdErrorCode;
import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class ShareIntentUtil {
    public static void fixIntentClassLoader(Intent intent, ClassLoader classLoader) {
        try {
            intent.setExtrasClassLoader(classLoader);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static boolean getBooleanExtra(Intent intent, String str, boolean z10) {
        if (intent == null) {
            return z10;
        }
        try {
            return intent.getBooleanExtra(str, z10);
        } catch (Exception e11) {
            ShareTinkerLog.e("ShareIntentUtil", "getBooleanExtra exception:" + e11.getMessage(), new Object[0]);
            return z10;
        }
    }

    public static int getIntExtra(Intent intent, String str, int i11) {
        if (intent == null) {
            return i11;
        }
        try {
            return intent.getIntExtra(str, i11);
        } catch (Exception e11) {
            ShareTinkerLog.e("ShareIntentUtil", "getIntExtra exception:" + e11.getMessage(), new Object[0]);
            return i11;
        }
    }

    public static Throwable getIntentInterpretException(Intent intent) {
        Serializable serializableExtra = getSerializableExtra(intent, "intent_patch_interpret_exception");
        if (serializableExtra != null) {
            return (Throwable) serializableExtra;
        }
        return null;
    }

    public static HashMap<String, String> getIntentPackageConfig(Intent intent) {
        Serializable serializableExtra = getSerializableExtra(intent, "intent_patch_package_config");
        if (serializableExtra != null) {
            return (HashMap) serializableExtra;
        }
        return null;
    }

    public static long getIntentPatchCostTime(Intent intent) {
        return intent.getLongExtra("intent_patch_cost_time", 0L);
    }

    public static HashMap<String, String> getIntentPatchDexPaths(Intent intent) {
        Serializable serializableExtra = getSerializableExtra(intent, "intent_patch_dexes_path");
        if (serializableExtra != null) {
            return (HashMap) serializableExtra;
        }
        return null;
    }

    public static Throwable getIntentPatchException(Intent intent) {
        Serializable serializableExtra = getSerializableExtra(intent, "intent_patch_exception");
        if (serializableExtra != null) {
            return (Throwable) serializableExtra;
        }
        return null;
    }

    public static HashMap<String, String> getIntentPatchLibsPaths(Intent intent) {
        Serializable serializableExtra = getSerializableExtra(intent, "intent_patch_libs_path");
        if (serializableExtra != null) {
            return (HashMap) serializableExtra;
        }
        return null;
    }

    public static int getIntentReturnCode(Intent intent) {
        return getIntExtra(intent, "intent_return_code", TAdErrorCode.CODE_UNKNOWN);
    }

    public static Serializable getSerializableExtra(Intent intent, String str) {
        if (intent == null) {
            return null;
        }
        try {
            return intent.getSerializableExtra(str);
        } catch (Exception e11) {
            ShareTinkerLog.e("ShareIntentUtil", "getSerializableExtra exception:" + e11.getMessage(), new Object[0]);
            return null;
        }
    }

    public static String getStringExtra(Intent intent, String str) {
        if (intent == null) {
            return null;
        }
        try {
            return intent.getStringExtra(str);
        } catch (Exception e11) {
            ShareTinkerLog.e("ShareIntentUtil", "getStringExtra exception:" + e11.getMessage(), new Object[0]);
            return null;
        }
    }

    public static void setIntentPatchCostTime(Intent intent, long j11) {
        intent.putExtra("intent_patch_cost_time", j11);
    }

    public static void setIntentReturnCode(Intent intent, int i11) {
        intent.putExtra("intent_return_code", i11);
    }
}
