package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.collection.x0;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgy implements zzhh {
    private final x0 zza;

    zzgy(x0 x0Var) {
        this.zza = x0Var;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0018 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x0019 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x001b  */
    /* JADX WARN: Code duplicated, block: B:8:0x000e  */
    /* JADX WARN: Instruction removed from duplicated block: B:13:0x001b, please report this as an issue */
    @Override // com.google.android.gms.internal.measurement.zzhh
    public final String zza(Uri uri, String str, String str2, String str3) {
        x0 x0Var;
        if (uri == null) {
            if (str == null) {
                x0Var = null;
            }
            if (x0Var == null) {
                return null;
            }
            if (str2 != null) {
                str3 = str2 + str3;
            }
            return (String) x0Var.get(str3);
        }
        str = uri.toString();
        x0 x0Var2 = this.zza;
        if (x0Var2 == null) {
            x0Var = null;
        } else {
            x0Var = (x0) x0Var2.get(str);
        }
        if (x0Var == null) {
            return null;
        }
        if (str2 != null) {
            str3 = str2 + str3;
        }
        return (String) x0Var.get(str3);
    }
}
