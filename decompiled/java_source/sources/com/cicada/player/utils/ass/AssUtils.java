package com.cicada.player.utils.ass;

import com.aliyun.utils.NativeLoader;

/* JADX INFO: loaded from: classes3.dex */
public class AssUtils {
    static {
        NativeLoader.loadPlayer();
    }

    public static void loadClass() {
    }

    private static native Object nParseAssDialogue(Object obj, String str);

    private static native Object nParseAssHeader(String str);

    public static AssDialogue parseAssDialogue(AssHeader assHeader, String str) {
        return (AssDialogue) nParseAssDialogue(assHeader, str);
    }

    public static AssHeader parseAssHeader(String str) {
        return (AssHeader) nParseAssHeader(str);
    }
}
