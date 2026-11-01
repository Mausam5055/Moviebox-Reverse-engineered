package com.google.android.gms.internal.identity;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzeo {
    private static final SimpleDateFormat zza;
    private static final SimpleDateFormat zzb;
    private static final StringBuilder zzc;

    static {
        Locale locale = Locale.ROOT;
        zza = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", locale);
        zzb = new SimpleDateFormat("MM-dd HH:mm:ss", locale);
        zzc = new StringBuilder(33);
    }

    public static String zza(long j11) {
        return j11 >= 0 ? zza.format(new Date(j11)) : Long.toString(j11);
    }

    public static String zzb(long j11) {
        String string;
        StringBuilder sb2 = zzc;
        synchronized (sb2) {
            sb2.setLength(0);
            zzc(j11, sb2);
            string = sb2.toString();
        }
        return string;
    }

    public static StringBuilder zzc(long j11, StringBuilder sb2) {
        if (j11 == 0) {
            sb2.append("0s");
            return sb2;
        }
        sb2.ensureCapacity(sb2.length() + 27);
        boolean z10 = false;
        if (j11 < 0) {
            sb2.append("-");
            if (j11 != Long.MIN_VALUE) {
                j11 = -j11;
            } else {
                j11 = Long.MAX_VALUE;
                z10 = true;
            }
        }
        if (j11 >= 86400000) {
            sb2.append(j11 / 86400000);
            sb2.append(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
            j11 %= 86400000;
        }
        if (true == z10) {
            j11 = 25975808;
        }
        if (j11 >= 3600000) {
            sb2.append(j11 / 3600000);
            sb2.append("h");
            j11 %= 3600000;
        }
        if (j11 >= 60000) {
            sb2.append(j11 / 60000);
            sb2.append("m");
            j11 %= 60000;
        }
        if (j11 >= 1000) {
            sb2.append(j11 / 1000);
            sb2.append("s");
            j11 %= 1000;
        }
        if (j11 > 0) {
            sb2.append(j11);
            sb2.append("ms");
        }
        return sb2;
    }
}
