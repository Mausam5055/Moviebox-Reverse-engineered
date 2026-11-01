package com.cloud.tmc.kernel.utils;

import android.util.LruCache;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.log.TmcLogger;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes3.dex */
public class PatternUtils {
    private static final String TAG = "PatternUtils";
    private static final boolean DEBUG = KernelUtils.isDebug();
    private static LruCache<String, Pattern> sPatternCache = new LruCache<>(20);

    @Nullable
    public static Pattern compile(String str) {
        if (str == null) {
            return null;
        }
        Pattern pattern = sPatternCache.get(str);
        if (pattern != null) {
            if (DEBUG) {
                TmcLogger.d(TAG, "pattern cache hit: " + str);
            }
            return pattern;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Pattern patternCompile = Pattern.compile(str);
            sPatternCache.put(str, patternCompile);
            if (DEBUG) {
                TmcLogger.d(TAG, "pattern cache miss, use time: " + (System.currentTimeMillis() - jCurrentTimeMillis) + " " + str);
            }
            return patternCompile;
        } catch (PatternSyntaxException e11) {
            TmcLogger.e(TAG, "pattern " + str + " compile error!", e11);
            return null;
        }
    }

    public static boolean matchRegex(String str, String str2) {
        Pattern patternCompile;
        if (str == null || str2 == null || (patternCompile = compile(str)) == null) {
            return false;
        }
        return patternCompile.matcher(str2).matches();
    }
}
