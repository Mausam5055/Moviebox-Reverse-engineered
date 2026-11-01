package com.cloud.config.utils;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.core.log.ObjectLogUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\nJ\"\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\nJ\u0016\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nJ \u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\b\u0010\u0010\u001a\u00020\nH\u0002J\u0018\u0010\u0011\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\nJ\"\u0010\u0011\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\"\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\nH\u0002J,\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u000e\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0019\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\nJ\"\u0010\u0019\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\u001a\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\nJ\"\u0010\u001a\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/cloud/config/utils/XLogUtil;", "", "()V", "logUtils", "Lcom/transsion/core/log/ObjectLogUtils;", "mLoggingLevel", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "tag", "", "id", NotificationCompat.CATEGORY_MESSAGE, "t", "", "e", "getGlobalTag", "i", "log", "logLevel", "logWithThrowable", "setLogSwitch", "isDebug", "", "shouldLog", "v", "w", "Companion", "SingletonHolder", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class XLogUtil {
    private static final int DEBUG = 3;
    private static final int ERROR = 6;
    private static final int INFO = 4;
    private static final int JSON = 9;
    public static final String TAG = "config";
    private static final int VERBOSE = 2;
    private static final int WARN = 5;
    private final ObjectLogUtils logUtils;
    private final int mLoggingLevel;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static ObjectLogUtils NET_LOG = new ObjectLogUtils.a().p("UPDATE_N").q(false).n(false).m();
    private static final Lazy<XLogUtil> log$delegate = LazyKt.b(new Function0<XLogUtil>() { // from class: com.cloud.config.utils.XLogUtil$Companion$log$2
        @Override // kotlin.jvm.functions.Function0
        public final XLogUtil invoke() {
            return XLogUtil.SingletonHolder.INSTANCE.getINSTANCE();
        }
    });

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\"\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, d2 = {"Lcom/cloud/config/utils/XLogUtil$Companion;", "", "()V", "DEBUG", "", "ERROR", "INFO", "JSON", "NET_LOG", "Lcom/transsion/core/log/ObjectLogUtils;", "kotlin.jvm.PlatformType", "getNET_LOG", "()Lcom/transsion/core/log/ObjectLogUtils;", "setNET_LOG", "(Lcom/transsion/core/log/ObjectLogUtils;)V", "TAG", "", "VERBOSE", "WARN", "log", "Lcom/cloud/config/utils/XLogUtil;", "getLog", "()Lcom/cloud/config/utils/XLogUtil;", "log$delegate", "Lkotlin/Lazy;", "netLog", "", NotificationCompat.CATEGORY_MESSAGE, "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final XLogUtil getLog() {
            return (XLogUtil) XLogUtil.log$delegate.getValue();
        }

        public final ObjectLogUtils getNET_LOG() {
            return XLogUtil.NET_LOG;
        }

        public final void netLog(String msg) {
            getNET_LOG().o(msg, new Object[0]);
        }

        public final void setNET_LOG(ObjectLogUtils objectLogUtils) {
            XLogUtil.NET_LOG = objectLogUtils;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u0004¢\u0006\n\n\u0002\b\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/cloud/config/utils/XLogUtil$SingletonHolder;", "", "()V", "INSTANCE", "Lcom/cloud/config/utils/XLogUtil;", "getINSTANCE", "()Lcom/cloud/config/utils/XLogUtil;", "INSTANCE$1", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    static final class SingletonHolder {
        public static final SingletonHolder INSTANCE = new SingletonHolder();

        /* JADX INFO: renamed from: INSTANCE$1, reason: from kotlin metadata */
        private static final XLogUtil INSTANCE = new XLogUtil(null);

        private SingletonHolder() {
        }

        public final XLogUtil getINSTANCE() {
            return INSTANCE;
        }
    }

    private XLogUtil() {
        ObjectLogUtils objectLogUtilsM = new ObjectLogUtils.a().p("UPDATE").r(true).n(false).m();
        Intrinsics.g(objectLogUtilsM, "Builder().setGlobalTag(\"…derSwitch(false).create()");
        this.logUtils = objectLogUtilsM;
        this.mLoggingLevel = 2;
        objectLogUtilsM.x(3);
    }

    public /* synthetic */ XLogUtil(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final String getGlobalTag() {
        return OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_SDK;
    }

    private final void log(int logLevel, String tag, String msg) {
        logWithThrowable(logLevel, tag, msg, null);
    }

    private final void logWithThrowable(int logLevel, String tag, String msg, Throwable t11) {
        try {
            if (shouldLog(logLevel)) {
                if (!TextUtils.isEmpty(tag)) {
                    tag = getGlobalTag() + '_' + tag;
                }
                if (logLevel == 2) {
                    if (t11 != null) {
                        this.logUtils.y(tag, msg, t11);
                        return;
                    } else {
                        this.logUtils.y(tag, msg);
                        return;
                    }
                }
                if (logLevel == 3) {
                    if (t11 != null) {
                        this.logUtils.h(tag, msg, t11);
                        return;
                    } else {
                        this.logUtils.h(tag, msg);
                        return;
                    }
                }
                if (logLevel == 4) {
                    if (t11 != null) {
                        this.logUtils.o(tag, msg, t11);
                        return;
                    } else {
                        this.logUtils.o(tag, msg);
                        return;
                    }
                }
                if (logLevel == 5) {
                    if (t11 != null) {
                        this.logUtils.A(tag, msg, t11);
                        return;
                    } else {
                        this.logUtils.A(tag, msg);
                        return;
                    }
                }
                if (logLevel != 6) {
                    if (logLevel != 9) {
                        return;
                    }
                    this.logUtils.q(tag, msg);
                } else if (t11 != null) {
                    this.logUtils.j(tag, msg, t11);
                } else {
                    this.logUtils.j(tag, msg);
                }
            }
        } catch (Exception unused) {
        }
    }

    private final boolean shouldLog(int logLevel) {
        return logLevel >= this.mLoggingLevel;
    }

    public final void d(String tag, int id2) {
        Intrinsics.h(tag, "tag");
        String string = qk.a.a().getString(id2);
        Intrinsics.g(string, "getContext().getString(id)");
        log(3, tag, string);
    }

    public final void d(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        log(3, tag, msg);
    }

    public final void d(String tag, String msg, Throwable t11) {
        Intrinsics.h(tag, "tag");
        log(3, tag, msg);
    }

    public final void e(String msg) {
        Intrinsics.h(msg, "msg");
        log(6, "", "******" + msg + "******");
    }

    public final void e(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        log(6, tag, "******" + msg + "******");
    }

    public final void e(String tag, String msg, Throwable t11) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        logWithThrowable(6, tag, "******" + msg + "******", null);
    }

    public final void i(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        log(4, tag, msg);
    }

    public final void i(String tag, String msg, Throwable t11) {
        Intrinsics.h(tag, "tag");
        logWithThrowable(4, tag, msg, null);
    }

    public final void setLogSwitch(boolean isDebug) {
        this.logUtils.m().r(isDebug);
    }

    public final void v(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        log(2, tag, msg);
    }

    public final void v(String tag, String msg, Throwable t11) {
        Intrinsics.h(tag, "tag");
        logWithThrowable(2, tag, msg, t11);
    }

    public final void w(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        log(5, tag, msg);
    }

    public final void w(String tag, String msg, Throwable t11) {
        Intrinsics.h(tag, "tag");
        logWithThrowable(5, tag, msg, null);
    }
}
