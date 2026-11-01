package com.google.android.gms.internal.gcm;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes4.dex */
public final class zzq {
    private static final zzr zzdq;
    private static final int zzdr;

    static final class zzd extends zzr {
        zzd() {
        }

        @Override // com.google.android.gms.internal.gcm.zzr
        public final void zzd(Throwable th2, Throwable th3) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0006, B:6:0x000e, B:9:0x0016, B:11:0x001e, B:12:0x0024), top: B:24:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:12:0x0024 A[Catch: all -> 0x0014, TRY_LEAVE, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0006, B:6:0x000e, B:9:0x0016, B:11:0x001e, B:12:0x0024), top: B:24:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x0016 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0006, B:6:0x000e, B:9:0x0016, B:11:0x001e, B:12:0x0024), top: B:24:0x0006 }] */
    static {
        Integer numZzac;
        zzr zzdVar;
        try {
            numZzac = zzac();
            if (numZzac != null) {
                try {
                    if (numZzac.intValue() >= 19) {
                        zzdVar = new zzv();
                    } else if (Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                        zzdVar = new zzd();
                    } else {
                        zzdVar = new zzu();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    PrintStream printStream = System.err;
                    String name = zzd.class.getName();
                    StringBuilder sb2 = new StringBuilder(name.length() + Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE);
                    sb2.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
                    sb2.append(name);
                    sb2.append("will be used. The error is: ");
                    printStream.println(sb2.toString());
                    th.printStackTrace(printStream);
                    zzdVar = new zzd();
                }
            } else if (Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                zzdVar = new zzu();
            } else {
                zzdVar = new zzd();
            }
        } catch (Throwable th3) {
            th = th3;
            numZzac = null;
        }
        zzdq = zzdVar;
        zzdr = numZzac == null ? 1 : numZzac.intValue();
    }

    private static Integer zzac() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e11) {
            PrintStream printStream = System.err;
            printStream.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e11.printStackTrace(printStream);
            return null;
        }
    }

    public static void zzd(Throwable th2, Throwable th3) {
        zzdq.zzd(th2, th3);
    }
}
