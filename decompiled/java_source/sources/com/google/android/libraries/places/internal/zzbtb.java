package com.google.android.libraries.places.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbtb {
    private final List zza = new ArrayList(20);

    public final zzbtb zza(String str, String str2) {
        int i11 = 0;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i12 = 0; i12 < length; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt <= 31 || cCharAt >= 127) {
                throw new IllegalArgumentException(String.format(Locale.US, "Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i12), str));
            }
        }
        if (str2 == null) {
            throw new IllegalArgumentException("value == null");
        }
        for (int i13 = 0; i13 < str2.length(); i13++) {
            char cCharAt2 = str2.charAt(i13);
            if (cCharAt2 <= 31 || cCharAt2 >= 127) {
                throw new IllegalArgumentException(String.format(Locale.US, "Unexpected char %#04x at %d in header value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i13), str2));
            }
        }
        while (i11 < this.zza.size()) {
            if (str.equalsIgnoreCase((String) this.zza.get(i11))) {
                this.zza.remove(i11);
                this.zza.remove(i11);
                i11 -= 2;
            }
            i11 += 2;
        }
        this.zza.add(str);
        this.zza.add(str2.trim());
        return this;
    }

    public final zzbtd zzb() {
        return new zzbtd(this, null);
    }
}
