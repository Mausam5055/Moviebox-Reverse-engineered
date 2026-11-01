package com.cloud.tmc.storage;

import android.content.Context;
import android.os.Parcelable;
import com.cloud.tmc.storage.impl.IStorage;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\n\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\b\u0010\f\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\f\u0012\u0004\u0012\u00020\u0005\u0012\u0002\b\u00030\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u000bH\u0016J9\u0010\u001a\u001a\u0004\u0018\u0001H\u001b\"\b\b\u0000\u0010\u001b*\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u00052\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001e2\b\u0010\u0012\u001a\u0004\u0018\u0001H\u001bH\u0016¢\u0006\u0002\u0010\u001fJ\u001c\u0010 \u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0016J(\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\"2\u0006\u0010\u0011\u001a\u00020\u00052\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\"H\u0016J\u0018\u0010#\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0007H\u0016J\u0018\u0010%\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0014H\u0016J\u0018\u0010&\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0016H\u0016J\u0018\u0010'\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0018H\u0016J\u0018\u0010(\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u001cH\u0016J\u0018\u0010)\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005H\u0016J\u001e\u0010*\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00052\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050\"H\u0016J\u0010\u0010+\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/cloud/tmc/storage/TmcStorage;", "Lcom/cloud/tmc/storage/impl/IStorage;", "context", "Landroid/content/Context;", "fileName", "", "multiProcess", "", "cryptKey", "(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V", "kv", "Lcom/tencent/mmkv/MMKV;", "clearAll", "", "getAll", "", "getBoolean", "key", "defaultValue", "getByteArray", "", "getInt", "", "getLong", "", "getMMKV", "getParcelable", "T", "Landroid/os/Parcelable;", "clz", "Ljava/lang/Class;", "(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;", "getString", "getStringSet", "", "putBoolean", AppMeasurementSdk.ConditionalUserProperty.VALUE, "putByteArray", "putInt", "putLong", "putParcelable", "putString", "putStringSet", "removeKey", "storage_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TmcStorage implements IStorage {
    private final MMKV kv;

    public TmcStorage(Context context, String fileName, boolean z10, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fileName, "fileName");
        MMKV mmkvK = MMKV.K(fileName, z10 ? 2 : 1, str);
        Intrinsics.g(mmkvK, "mmkvWithID(\n            …       cryptKey\n        )");
        this.kv = mmkvK;
    }

    public /* synthetic */ TmcStorage(Context context, String str, boolean z10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? "global_Z2xvYmFs" : str, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? null : str2);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public void clearAll() {
        this.kv.clearAll();
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public Map<String, ?> getAll() {
        Map<String, ?> all = this.kv.getAll();
        return all == null ? MapsKt.h() : all;
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public boolean getBoolean(String key, boolean defaultValue) {
        Intrinsics.h(key, "key");
        return this.kv.d(key, defaultValue);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public byte[] getByteArray(String key, byte[] defaultValue) {
        Intrinsics.h(key, "key");
        return this.kv.f(key, defaultValue);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public int getInt(String key, int defaultValue) {
        Intrinsics.h(key, "key");
        return this.kv.g(key, defaultValue);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public long getLong(String key, long defaultValue) {
        Intrinsics.h(key, "key");
        return this.kv.h(key, defaultValue);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    /* JADX INFO: renamed from: getMMKV, reason: from getter */
    public MMKV getKv() {
        return this.kv;
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public <T extends Parcelable> T getParcelable(String key, Class<T> clz, T defaultValue) {
        Intrinsics.h(key, "key");
        Intrinsics.h(clz, "clz");
        return (T) this.kv.j(key, clz, defaultValue);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public String getString(String key, String defaultValue) {
        Intrinsics.h(key, "key");
        return this.kv.l(key, defaultValue);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public Set<String> getStringSet(String key, Set<String> defaultValue) {
        Intrinsics.h(key, "key");
        return this.kv.m(key, defaultValue);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public boolean putBoolean(String key, boolean value) {
        Intrinsics.h(key, "key");
        return this.kv.x(key, value);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public boolean putByteArray(String key, byte[] value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        return this.kv.y(key, value);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public boolean putInt(String key, int value) {
        Intrinsics.h(key, "key");
        return this.kv.s(key, value);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public boolean putLong(String key, long value) {
        Intrinsics.h(key, "key");
        return this.kv.t(key, value);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public boolean putParcelable(String key, Parcelable value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        return this.kv.u(key, value);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public boolean putString(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        return this.kv.v(key, value);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public boolean putStringSet(String key, Set<String> value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        return this.kv.w(key, value);
    }

    @Override // com.cloud.tmc.storage.impl.IStorage
    public void removeKey(String key) {
        Intrinsics.h(key, "key");
        this.kv.M(key);
    }
}
