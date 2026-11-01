package com.transsion.al.util;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/transsion/al/util/AlMMkvUtil;", "", "<init>", "()V", "Companion", "Keepalive_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AlMMkvUtil {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String table_name = "kv_alive_table";

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\nJ\u0016\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000eJ\u0016\u0010\u0010\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/transsion/al/util/AlMMkvUtil$Companion;", "", "<init>", "()V", "table_name", "", "putBoolean", "", "key", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "getBoolean", "defaultValue", "putLong", "", "getLong", "putInt", "", "getInt", "Keepalive_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getBoolean(String key, boolean defaultValue) {
            Intrinsics.h(key, "key");
            MMKV mmkvJ = MMKV.J(AlMMkvUtil.table_name, 2);
            Intrinsics.g(mmkvJ, "mmkvWithID(...)");
            return mmkvJ.getBoolean(key, defaultValue);
        }

        public final int getInt(String key, int defaultValue) {
            Intrinsics.h(key, "key");
            MMKV mmkvJ = MMKV.J(AlMMkvUtil.table_name, 2);
            Intrinsics.g(mmkvJ, "mmkvWithID(...)");
            return mmkvJ.getInt(key, defaultValue);
        }

        public final long getLong(String key, long defaultValue) {
            Intrinsics.h(key, "key");
            MMKV mmkvJ = MMKV.J(AlMMkvUtil.table_name, 2);
            Intrinsics.g(mmkvJ, "mmkvWithID(...)");
            return mmkvJ.getLong(key, defaultValue);
        }

        public final void putBoolean(String key, boolean value) {
            Intrinsics.h(key, "key");
            MMKV mmkvJ = MMKV.J(AlMMkvUtil.table_name, 2);
            Intrinsics.g(mmkvJ, "mmkvWithID(...)");
            mmkvJ.putBoolean(key, value);
        }

        public final void putInt(String key, int value) {
            Intrinsics.h(key, "key");
            MMKV mmkvJ = MMKV.J(AlMMkvUtil.table_name, 2);
            Intrinsics.g(mmkvJ, "mmkvWithID(...)");
            mmkvJ.putInt(key, value);
        }

        public final void putLong(String key, long value) {
            Intrinsics.h(key, "key");
            MMKV mmkvJ = MMKV.J(AlMMkvUtil.table_name, 2);
            Intrinsics.g(mmkvJ, "mmkvWithID(...)");
            mmkvJ.putLong(key, value);
        }
    }
}
