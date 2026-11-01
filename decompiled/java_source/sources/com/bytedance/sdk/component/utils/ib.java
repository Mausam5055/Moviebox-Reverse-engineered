package com.bytedance.sdk.component.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public final class ib {
    private static String EjP;
    private static boolean HiB;

    @SuppressLint({"StaticFieldLeak"})
    private static Context Sj;
    private static Resources TKC;
    private static String sP;
    private static boolean vS;

    public static int Dq(Context context, String str) {
        return Sj(context, str, TtmlNode.ATTR_TTS_COLOR);
    }

    public static int EjP(Context context, String str) {
        try {
            return Sj(context, str, "drawable");
        } catch (Exception unused) {
            return 0;
        }
    }

    private static String EjP(Context context) {
        if (EjP == null) {
            EjP = context.getPackageName();
        }
        return EjP;
    }

    public static int HiB(Context context, String str) {
        return Sj(context, str, "id");
    }

    public static int Jcg(Context context, String str) {
        return sP(context).getColor(Dq(context, str));
    }

    private static int Sj(Context context, String str, String str2) {
        int identifier = sP(context).getIdentifier(str, str2, EjP(context));
        if (identifier != 0) {
            return identifier;
        }
        if (HiB) {
            return context.getResources().getIdentifier(str, str2, EjP(context));
        }
        TKC(context);
        return sP(context).getIdentifier(str, str2, EjP(context));
    }

    public static String Sj(Context context, String str) {
        return sP(context).getString(sP(context, str));
    }

    public static void Sj(Context context) {
        Sj = context;
    }

    public static void Sj(String str) {
        EjP = str;
    }

    public static boolean Sj(AssetManager assetManager, String str) {
        Method methodSj = Yf.Sj((Class<?>) AssetManager.class, "addAssetPath", (Class<?>[]) new Class[]{String.class});
        if (methodSj == null) {
            methodSj = Yf.Sj((Class<?>) AssetManager.class, "addAssetPath", (Class<?>[]) new Class[]{String.class});
        }
        if (methodSj != null) {
            int i11 = 3;
            while (true) {
                int i12 = i11 - 1;
                if (i11 < 0) {
                    break;
                }
                try {
                    if (((Integer) methodSj.invoke(assetManager, str)).intValue() != 0) {
                        return true;
                    }
                    i11 = i12;
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    public static Drawable TKC(Context context, String str) {
        try {
            return sP(context).getDrawable(EjP(context, str));
        } catch (Exception unused) {
            return null;
        }
    }

    public static synchronized void TKC(Context context) {
        try {
            if (TextUtils.isEmpty(sP)) {
                return;
            }
            Resources resources = context.getResources();
            TKC = new Resources(sP(resources.getAssets(), sP + "/apk/base-1.apk"), resources.getDisplayMetrics(), resources.getConfiguration());
            EjP = context.getPackageName();
            HiB = true;
        } catch (Throwable th2) {
            Log.e("ResourceHelp", "makePluginResources failed", th2);
        }
    }

    public static int sP(Context context, String str) {
        return Sj(context, str, "string");
    }

    private static AssetManager sP(AssetManager assetManager, String str) {
        try {
            AssetManager assetManager2 = assetManager.getClass().getName().equals("android.content.res.BaiduAssetManager") ? (AssetManager) Class.forName("android.content.res.BaiduAssetManager").getConstructor(null).newInstance(null) : (AssetManager) AssetManager.class.newInstance();
            Sj(assetManager2, str);
            assetManager = assetManager2;
        } catch (Exception unused) {
            Sj(assetManager, str);
        }
        try {
            Yf.Sj(assetManager, "ensureStringBlocks", new Object[0]);
        } catch (Exception unused2) {
        }
        return assetManager;
    }

    public static Resources sP(Context context) {
        Resources resources = TKC;
        if (resources == null) {
            resources = null;
        }
        Context context2 = Sj;
        if (context2 != null) {
            resources = context2.getResources();
        }
        return resources == null ? context.getResources() : resources;
    }

    public static int uA(Context context, String str) {
        return Sj(context, str, "anim");
    }

    public static int vS(Context context, String str) {
        return Sj(context, str, TtmlNode.TAG_STYLE);
    }
}
