package com.cloud.tmc.integration.chain;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0007H\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0016J\u0012\u0010\u001a\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/chain/ChainState;", "", "chainType", "Lcom/cloud/tmc/integration/chain/ChainType;", "getChainType", "()Lcom/cloud/tmc/integration/chain/ChainType;", "dataBundle", "Landroid/os/Bundle;", "getDataBundle", "()Landroid/os/Bundle;", "step", "", "getStep", "()I", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", EventConstants.KEY_TIME, "getTime", "()J", "setTime", "(J)V", "insertData", "", "chainState", "data", "log", "setChainContext", "chainContext", "Lcom/cloud/tmc/integration/chain/ChainContext;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface ChainState {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static long getTime(ChainState chainState) {
            return System.currentTimeMillis();
        }

        public static void insertData(ChainState chainState, ChainState chainState2, Bundle data) {
            Intrinsics.h(chainState2, "chainState");
            Intrinsics.h(data, "data");
        }

        public static void log(ChainState chainState) {
            TmcLogger.i("chainState", "step_" + chainState.getStep() + ":" + chainState.getChainType().name() + ", bundle:" + chainState.getDataBundle());
        }

        public static void setTime(ChainState chainState, long j11) {
        }
    }

    ChainType getChainType();

    Bundle getDataBundle();

    int getStep();

    long getTime();

    void insertData(ChainState chainState, Bundle data);

    void log();

    void setChainContext(ChainContext chainContext);

    void setTime(long j11);
}
