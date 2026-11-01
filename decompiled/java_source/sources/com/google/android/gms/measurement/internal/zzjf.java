package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjf {
    public static <T> T zza(@NonNull Bundle bundle, String str, Class<T> cls, T t11) {
        T t12 = (T) bundle.get(str);
        if (t12 == null) {
            return t11;
        }
        if (cls.isAssignableFrom(t12.getClass())) {
            return t12;
        }
        throw new IllegalStateException(String.format("Invalid conditional user property field type. '%s' expected [%s] but was [%s]", str, cls.getCanonicalName(), t12.getClass().getCanonicalName()));
    }

    public static void zza(@NonNull Bundle bundle, @NonNull Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble(AppMeasurementSdk.ConditionalUserProperty.VALUE, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.VALUE, ((Long) obj).longValue());
        } else {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.VALUE, obj.toString());
        }
    }
}
