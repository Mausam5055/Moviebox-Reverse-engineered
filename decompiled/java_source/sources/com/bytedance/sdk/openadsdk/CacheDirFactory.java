package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.Sj;
import com.bytedance.sdk.component.utils.Jcg;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.multipro.sP;
import java.io.File;
import x5.b;

/* JADX INFO: loaded from: classes2.dex */
public class CacheDirFactory {
    public static volatile b MEDIA_CACHE_DIR = null;
    public static String ROOT_DIR = null;
    public static final int SPLASH_USE_INTERNAL_STORAGE = 1;
    private static String Sj;

    private static b Sj() {
        if (MEDIA_CACHE_DIR == null) {
            synchronized (CacheDirFactory.class) {
                try {
                    if (MEDIA_CACHE_DIR == null) {
                        Sj sj2 = new Sj();
                        MEDIA_CACHE_DIR = sj2;
                        sj2.Sj(getRootDir());
                        MEDIA_CACHE_DIR.EjP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return MEDIA_CACHE_DIR;
    }

    public static int getCacheType() {
        return 1;
    }

    public static String getDiskCacheDirPath(String str) {
        return getRootDir() + File.separator + str;
    }

    public static b getICacheDir(int i11) {
        return Sj();
    }

    public static String getImageCacheDir(String str) {
        if (Sj == null) {
            Sj = getDiskCacheDirPath(str);
        }
        return Sj;
    }

    public static String getRootDir() {
        if (!TextUtils.isEmpty(ROOT_DIR)) {
            return ROOT_DIR;
        }
        File fileSj = Jcg.Sj(dNu.Sj(), sP.TKC(), "tt_ad");
        if (fileSj.isFile()) {
            fileSj.delete();
        }
        if (!fileSj.exists()) {
            fileSj.mkdirs();
        }
        String absolutePath = fileSj.getAbsolutePath();
        ROOT_DIR = absolutePath;
        return absolutePath;
    }
}
