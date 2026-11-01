package com.cloud.tmc.miniapp.performanceanalyse;

import android.os.Bundle;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.WorkerAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.a;
import com.cloud.tmc.kernel.utils.TraceLog;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooOOOO {
    public long OooO00o;
    public WorkerAnalyseType OooO0O0 = WorkerAnalyseType.INIT;

    public /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[WorkerAnalyseType.values().length];
            try {
                iArr[WorkerAnalyseType.INIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerAnalyseType.CREATE_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerAnalyseType.CREATE_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerAnalyseType.LOAD_JS_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerAnalyseType.LOAD_JS_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[WorkerAnalyseType.EXECUTE_JS_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[WorkerAnalyseType.EXECUTE_JS_END_1.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[WorkerAnalyseType.EXECUTE_JS_END_2.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[WorkerAnalyseType.SEND_TO_NATIVE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[WorkerAnalyseType.ERROR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[WorkerAnalyseType.CONSOLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            OooO00o = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0031 A[PHI: r4
  0x0031: PHI (r4v1 boolean) = (r4v0 boolean), (r4v0 boolean), (r4v0 boolean), (r4v0 boolean), (r4v0 boolean), (r4v5 boolean) binds: [B:26:0x0051, B:23:0x0044, B:20:0x0037, B:9:0x001b, B:16:0x002e, B:17:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    public void OooO00o(String str, WorkerAnalyseType target, String str2) {
        long jCurrentTimeMillis;
        long j11;
        long j12;
        String str3;
        String str4;
        Intrinsics.h(target, "target");
        int i11 = OooO00o.OooO00o[target.ordinal()];
        boolean z10 = false;
        if (i11 != 3) {
            if (i11 != 5) {
                if (i11 != 7) {
                    if (i11 == 8) {
                        WorkerAnalyseType workerAnalyseType = this.OooO0O0;
                        if (workerAnalyseType == WorkerAnalyseType.EXECUTE_JS_START) {
                            jCurrentTimeMillis = System.currentTimeMillis();
                            j11 = this.OooO00o;
                            j12 = jCurrentTimeMillis - j11;
                        } else if (workerAnalyseType == WorkerAnalyseType.SEND_TO_NATIVE) {
                            z10 = true;
                        }
                    }
                    j12 = 0;
                } else if (this.OooO0O0 == WorkerAnalyseType.EXECUTE_JS_START) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                    j11 = this.OooO00o;
                    j12 = jCurrentTimeMillis - j11;
                } else {
                    j12 = 0;
                }
            } else if (this.OooO0O0 == WorkerAnalyseType.LOAD_JS_START) {
                jCurrentTimeMillis = System.currentTimeMillis();
                j11 = this.OooO00o;
                j12 = jCurrentTimeMillis - j11;
            } else {
                j12 = 0;
            }
        } else if (this.OooO0O0 == WorkerAnalyseType.CREATE_START) {
            jCurrentTimeMillis = System.currentTimeMillis();
            j11 = this.OooO00o;
            j12 = jCurrentTimeMillis - j11;
        } else {
            j12 = 0;
        }
        if (z10) {
            return;
        }
        if (str2 != null) {
            str3 = "-信息:" + str2;
        } else {
            str3 = "";
        }
        if (j12 != 0) {
            str3 = "-耗时:" + j12 + ((Object) str3);
            ReportProxy reportProxy = (ReportProxy) TmcProxy.get(ReportProxy.class);
            Bundle bundle = new Bundle();
            bundle.putString(WorkerAnalyseType.class.getSimpleName() + "." + target.name(), str3);
            Unit unit = Unit.f67061a;
            reportProxy.report(str, "webviewWorker", bundle);
        }
        if (str != null) {
            str4 = "[" + str + "]:" + target.getDes() + ((Object) str3);
        } else {
            str4 = target.getDes() + ((Object) str3);
        }
        if (target == WorkerAnalyseType.ERROR) {
            TraceLog.e(TmcConstants.PERFERENCE_WORKER_TAG, str4);
        } else {
            TraceLog.d(TmcConstants.PERFERENCE_WORKER_TAG, str4);
        }
        a.a(target, str4);
        this.OooO0O0 = target;
        this.OooO00o = System.currentTimeMillis();
    }
}
