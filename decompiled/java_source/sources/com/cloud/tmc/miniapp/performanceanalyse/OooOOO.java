package com.cloud.tmc.miniapp.performanceanalyse;

import android.os.Bundle;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.V8AnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.a;
import com.cloud.tmc.kernel.utils.TraceLog;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooOOO {
    public long OooO00o;

    public /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[V8AnalyseType.values().length];
            try {
                iArr[V8AnalyseType.CHECK_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[V8AnalyseType.CHECK_EXIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[V8AnalyseType.CHECK_UN_EXIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[V8AnalyseType.DOWNLOAD_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[V8AnalyseType.DOWNLOAD_SUCCESS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[V8AnalyseType.DOWNLOAD_FAIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[V8AnalyseType.UNZIP_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[V8AnalyseType.UNZIP_SUCCESS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[V8AnalyseType.UNZIP_FAIL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            OooO00o = iArr;
        }
    }

    public OooOOO() {
        V8AnalyseType v8AnalyseType = V8AnalyseType.CHECK_START;
    }

    public void OooO00o(String str, V8AnalyseType target, String str2) {
        long j11;
        String str3;
        String str4;
        Intrinsics.h(target, "target");
        int i11 = OooO00o.OooO00o[target.ordinal()];
        if (i11 == 5 || i11 == 8) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j12 = this.OooO00o;
            j11 = jCurrentTimeMillis - j12;
        } else {
            j11 = 0;
        }
        if (str2 != null) {
            str3 = "-信息:" + str2;
        } else {
            str3 = "";
        }
        if (j11 != 0) {
            str3 = "-耗时:" + j11 + ((Object) str3);
            ReportProxy reportProxy = (ReportProxy) TmcProxy.get(ReportProxy.class);
            Bundle bundle = new Bundle();
            bundle.putString(V8AnalyseType.class.getSimpleName() + "." + target.name(), str3);
            Unit unit = Unit.f67061a;
            reportProxy.report(str, "v8", bundle);
        }
        if (str != null) {
            str4 = "[" + str + "]:" + target.getDes() + ((Object) str3);
        } else {
            str4 = target.getDes() + ((Object) str3);
        }
        if (target == V8AnalyseType.DOWNLOAD_FAIL || target == V8AnalyseType.UNZIP_FAIL) {
            TraceLog.e(TmcConstants.PERFERENCE_V8_TAG, str4, j11 != 0);
        } else {
            TraceLog.d(TmcConstants.PERFERENCE_V8_TAG, str4, j11 != 0);
        }
        a.a(target, str4);
        this.OooO00o = System.currentTimeMillis();
    }
}
