package com.vungle.ads.internal.util;

import android.util.Log;
import java.util.regex.Pattern;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes7.dex */
public final class o {
    public static final a Companion = new a(null);
    private static boolean enabled;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final int d(String tag, String message) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(message, "message");
            if (o.enabled) {
                return Log.d(tag, eraseSensitiveData(message));
            }
            return -1;
        }

        @JvmStatic
        public final int e(String tag, String message) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(message, "message");
            if (o.enabled) {
                return Log.e(tag, eraseSensitiveData(message));
            }
            return -1;
        }

        @JvmStatic
        public final int e(String tag, String message, Throwable throwable) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(message, "message");
            Intrinsics.h(throwable, "throwable");
            if (!o.enabled) {
                return -1;
            }
            return Log.e(tag, eraseSensitiveData(message) + "; error: " + throwable.getLocalizedMessage());
        }

        public final void enable(boolean z10) {
            o.enabled = z10;
        }

        public final String eraseSensitiveData(String str) {
            Intrinsics.h(str, "<this>");
            Pattern patternCompile = Pattern.compile("[\\d]{1,3}\\.[\\d]{1,3}\\.[\\d]{1,3}\\.[\\d]{1,3}");
            Intrinsics.g(patternCompile, "compile(\"[\\\\d]{1,3}\\\\.[\\…[\\\\d]{1,3}\\\\.[\\\\d]{1,3}\")");
            return new Regex(patternCompile).replace(str, "xxx.xxx.xxx.xxx");
        }

        @JvmStatic
        public final int i(String tag, String message) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(message, "message");
            if (o.enabled) {
                return Log.i(tag, eraseSensitiveData(message));
            }
            return -1;
        }

        @JvmStatic
        public final int i(String tag, String message, Throwable throwable) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(message, "message");
            Intrinsics.h(throwable, "throwable");
            if (!o.enabled) {
                return -1;
            }
            return Log.i(tag, eraseSensitiveData(message) + "; error: " + throwable.getLocalizedMessage());
        }

        @JvmStatic
        public final int w(String tag, String message) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(message, "message");
            if (o.enabled) {
                return Log.w(tag, eraseSensitiveData(message));
            }
            return -1;
        }

        @JvmStatic
        public final int w(String tag, String message, Throwable throwable) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(message, "message");
            Intrinsics.h(throwable, "throwable");
            if (!o.enabled) {
                return -1;
            }
            return Log.w(tag, eraseSensitiveData(message) + "; error: " + throwable.getLocalizedMessage());
        }
    }

    @JvmStatic
    public static final int d(String str, String str2) {
        return Companion.d(str, str2);
    }

    @JvmStatic
    public static final int e(String str, String str2) {
        return Companion.e(str, str2);
    }

    @JvmStatic
    public static final int e(String str, String str2, Throwable th2) {
        return Companion.e(str, str2, th2);
    }

    @JvmStatic
    public static final int i(String str, String str2) {
        return Companion.i(str, str2);
    }

    @JvmStatic
    public static final int i(String str, String str2, Throwable th2) {
        return Companion.i(str, str2, th2);
    }

    @JvmStatic
    public static final int w(String str, String str2) {
        return Companion.w(str, str2);
    }

    @JvmStatic
    public static final int w(String str, String str2, Throwable th2) {
        return Companion.w(str, str2, th2);
    }
}
