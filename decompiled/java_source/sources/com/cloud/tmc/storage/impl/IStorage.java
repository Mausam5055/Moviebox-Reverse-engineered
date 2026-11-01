package com.cloud.tmc.storage.impl;

import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u000b\bf\u0018\u0000 %2\u00020\u0001:\u0001%J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\f\u0012\u0004\u0012\u00020\u0006\u0012\u0002\b\u00030\u0005H'J\u001c\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\bH&J \u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010\t\u001a\u00020\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\fH'J\u001c\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u000eH&J\u001c\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u0012H&J=\u0010\u0013\u001a\u0004\u0018\u0001H\u0014\"\b\b\u0000\u0010\u0014*\u00020\u00152\b\b\u0001\u0010\t\u001a\u00020\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00172\n\b\u0002\u0010\n\u001a\u0004\u0018\u0001H\u0014H'¢\u0006\u0002\u0010\u0018J \u0010\u0019\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006H'J,\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001b2\b\b\u0001\u0010\t\u001a\u00020\u00062\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001bH'J\u001a\u0010\u001c\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\bH&J\u001a\u0010\u001e\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\fH&J\u001a\u0010\u001f\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u000eH&J\u001a\u0010 \u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0010H&J\u001a\u0010!\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0015H&J\u001a\u0010\"\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H&J \u0010#\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u00062\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u001bH&J\u0012\u0010$\u001a\u00020\u00032\b\b\u0001\u0010\t\u001a\u00020\u0006H&¨\u0006&"}, d2 = {"Lcom/cloud/tmc/storage/impl/IStorage;", "", "clearAll", "", "getAll", "", "", "getBoolean", "", "key", "defaultValue", "getByteArray", "", "getInt", "", "getLong", "", "getMMKV", "Lcom/tencent/mmkv/MMKV;", "getParcelable", "T", "Landroid/os/Parcelable;", "clz", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;", "getString", "getStringSet", "", "putBoolean", AppMeasurementSdk.ConditionalUserProperty.VALUE, "putByteArray", "putInt", "putLong", "putParcelable", "putString", "putStringSet", "removeKey", "Companion", "storage_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IStorage {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String GLOBAL_FILE_NAME = "global_Z2xvYmFs";
    public static final String GLOBAL_KEY = "HYCE81KzixeN";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/storage/impl/IStorage$Companion;", "", "()V", "GLOBAL_FILE_NAME", "", "GLOBAL_KEY", "storage_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String GLOBAL_FILE_NAME = "global_Z2xvYmFs";
        public static final String GLOBAL_KEY = "HYCE81KzixeN";

        private Companion() {
        }
    }

    @Metadata(k = 3, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ boolean getBoolean$default(IStorage iStorage, String str, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getBoolean");
            }
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            return iStorage.getBoolean(str, z10);
        }

        public static /* synthetic */ byte[] getByteArray$default(IStorage iStorage, String str, byte[] bArr, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getByteArray");
            }
            if ((i11 & 2) != 0) {
                bArr = null;
            }
            return iStorage.getByteArray(str, bArr);
        }

        public static /* synthetic */ int getInt$default(IStorage iStorage, String str, int i11, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getInt");
            }
            if ((i12 & 2) != 0) {
                i11 = 0;
            }
            return iStorage.getInt(str, i11);
        }

        public static /* synthetic */ long getLong$default(IStorage iStorage, String str, long j11, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLong");
            }
            if ((i11 & 2) != 0) {
                j11 = 0;
            }
            return iStorage.getLong(str, j11);
        }

        public static /* synthetic */ Parcelable getParcelable$default(IStorage iStorage, String str, Class cls, Parcelable parcelable, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getParcelable");
            }
            if ((i11 & 4) != 0) {
                parcelable = null;
            }
            return iStorage.getParcelable(str, cls, parcelable);
        }

        public static /* synthetic */ String getString$default(IStorage iStorage, String str, String str2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getString");
            }
            if ((i11 & 2) != 0) {
                str2 = null;
            }
            return iStorage.getString(str, str2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Set getStringSet$default(IStorage iStorage, String str, Set set, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getStringSet");
            }
            if ((i11 & 2) != 0) {
                set = null;
            }
            return iStorage.getStringSet(str, set);
        }
    }

    void clearAll();

    @Nullable
    Map<String, ?> getAll();

    boolean getBoolean(@NonNull String key, boolean defaultValue);

    @Nullable
    byte[] getByteArray(@NonNull String key, byte[] defaultValue);

    int getInt(@NonNull String key, int defaultValue);

    long getLong(@NonNull String key, long defaultValue);

    MMKV getMMKV();

    @Nullable
    <T extends Parcelable> T getParcelable(@NonNull String key, Class<T> clz, T defaultValue);

    @Nullable
    String getString(@NonNull String key, String defaultValue);

    @Nullable
    Set<String> getStringSet(@NonNull String key, Set<String> defaultValue);

    boolean putBoolean(@NonNull String key, boolean value);

    boolean putByteArray(@NonNull String key, byte[] value);

    boolean putInt(@NonNull String key, int value);

    boolean putLong(@NonNull String key, long value);

    boolean putParcelable(@NonNull String key, Parcelable value);

    boolean putString(@NonNull String key, String value);

    boolean putStringSet(@NonNull String key, Set<String> value);

    void removeKey(@NonNull String key);
}
