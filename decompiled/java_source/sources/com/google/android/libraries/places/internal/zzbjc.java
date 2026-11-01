package com.google.android.libraries.places.internal;

import com.cloud.tmc.integration.params.TmcStartParams;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class zzbjc implements zzbbx {
    zzbjc() {
    }

    @Override // com.google.android.libraries.places.internal.zzbbx
    public final /* bridge */ /* synthetic */ Object zza(String str) {
        zzmt.zzf(str.length() > 0, "empty timeout");
        zzmt.zzf(str.length() <= 9, "bad timeout format");
        long j11 = Long.parseLong(str.substring(0, str.length() - 1));
        char cCharAt = str.charAt(str.length() - 1);
        if (cCharAt == 'H') {
            return Long.valueOf(TimeUnit.HOURS.toNanos(j11));
        }
        if (cCharAt == 'M') {
            return Long.valueOf(TimeUnit.MINUTES.toNanos(j11));
        }
        if (cCharAt == 'S') {
            return Long.valueOf(TimeUnit.SECONDS.toNanos(j11));
        }
        if (cCharAt == 'u') {
            return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(j11));
        }
        if (cCharAt == 'm') {
            return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(j11));
        }
        if (cCharAt == 'n') {
            return Long.valueOf(j11);
        }
        throw new IllegalArgumentException(String.format("Invalid timeout unit: %s", Character.valueOf(cCharAt)));
    }

    @Override // com.google.android.libraries.places.internal.zzbbx
    public final /* bridge */ /* synthetic */ String zzb(Object obj) {
        Long l11 = (Long) obj;
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        if (l11.longValue() < 0) {
            throw new IllegalArgumentException("Timeout too small");
        }
        if (l11.longValue() < 100000000) {
            return String.valueOf(l11).concat("n");
        }
        if (l11.longValue() < 100000000000L) {
            return timeUnit.toMicros(l11.longValue()) + TmcStartParams.KEY_URL_SHORT;
        }
        if (l11.longValue() < 100000000000000L) {
            return timeUnit.toMillis(l11.longValue()) + "m";
        }
        if (l11.longValue() < 100000000000000000L) {
            return timeUnit.toSeconds(l11.longValue()) + "S";
        }
        if (l11.longValue() < 6000000000000000000L) {
            return timeUnit.toMinutes(l11.longValue()) + "M";
        }
        return timeUnit.toHours(l11.longValue()) + "H";
    }
}
