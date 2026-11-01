package com.cloud.tmc.miniapp.utils;

import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.RegexUtils;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.func.MimeTypeKt;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class OooOO0O {
    public static final OooOO0O OooO00o = new OooOO0O();

    public final File OooO00o(String str, App app, boolean z10) {
        try {
            if (app == null) {
                TmcLogger.d("RefreshUtils", "请检查 app is null");
                return null;
            }
            if (str != null && str.length() != 0) {
                if (z10 && !StringsKt.G(str, ".gif", false, 2, null)) {
                    TmcLogger.d("RefreshUtils", "请检查gif图片是否配置正确。url: " + str);
                    return null;
                }
                if (RegexUtils.isURL(str) && !StringsKt.c0(str, ".miniapp.transsion.com", false, 2, null)) {
                    TmcLogger.d("RefreshUtils", "请检查地址仅支持小程序包内的图片资源文件。url: " + str);
                    return null;
                }
                File fileFromAllProcessors = FileUtil.getFileFromAllProcessors(app, str);
                if (!FileUtil.access(fileFromAllProcessors)) {
                    TmcLogger.d("RefreshUtils", "请检查图片资源是否存在。url: " + str);
                    return null;
                }
                if (z10) {
                    if (!Intrinsics.c(fileFromAllProcessors != null ? FileExtKt.getMimeType(fileFromAllProcessors) : null, MimeTypeKt.getMIME_TYPES().get("gif"))) {
                        TmcLogger.d("RefreshUtils", "请检查gif图片的类型是否正确。url: " + str);
                        return null;
                    }
                }
                return fileFromAllProcessors;
            }
            TmcLogger.d("RefreshUtils", "请检查LoadingImage链接，链接为空。url: " + str);
            return null;
        } catch (Throwable th2) {
            TmcLogger.e("RefreshUtils", "", th2);
            return null;
        }
    }
}
