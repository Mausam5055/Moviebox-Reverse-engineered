package com.cloud.tmc.integration.chain.endState;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.ChainContext;
import com.cloud.tmc.integration.chain.ChainState;
import com.cloud.tmc.integration.chain.ChainType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/integration/chain/endState/FwResInfoUpdateStepEndState;", "Lcom/cloud/tmc/integration/chain/ChainState;", "dataBundle", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "chainType", "Lcom/cloud/tmc/integration/chain/ChainType;", "getChainType", "()Lcom/cloud/tmc/integration/chain/ChainType;", "getDataBundle", "()Landroid/os/Bundle;", "step", "", "getStep", "()I", "setChainContext", "", "chainContext", "Lcom/cloud/tmc/integration/chain/ChainContext;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FwResInfoUpdateStepEndState implements ChainState {
    private final Bundle dataBundle;

    /* JADX WARN: Multi-variable type inference failed */
    public FwResInfoUpdateStepEndState() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public FwResInfoUpdateStepEndState(Bundle dataBundle) {
        Intrinsics.h(dataBundle, "dataBundle");
        this.dataBundle = dataBundle;
    }

    public /* synthetic */ FwResInfoUpdateStepEndState(Bundle bundle, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new Bundle() : bundle);
    }

    @Override // com.cloud.tmc.integration.chain.ChainState
    public ChainType getChainType() {
        return ChainType.TYPE_END;
    }

    @Override // com.cloud.tmc.integration.chain.ChainState
    public Bundle getDataBundle() {
        return this.dataBundle;
    }

    @Override // com.cloud.tmc.integration.chain.ChainState
    public int getStep() {
        return 4;
    }

    @Override // com.cloud.tmc.integration.chain.ChainState
    public long getTime() {
        return ChainState.DefaultImpls.getTime(this);
    }

    @Override // com.cloud.tmc.integration.chain.ChainState
    public void insertData(ChainState chainState, Bundle bundle) {
        ChainState.DefaultImpls.insertData(this, chainState, bundle);
    }

    @Override // com.cloud.tmc.integration.chain.ChainState
    public void log() {
        ChainState.DefaultImpls.log(this);
    }

    @Override // com.cloud.tmc.integration.chain.ChainState
    public void setChainContext(ChainContext chainContext) {
        log();
        if (chainContext != null) {
            chainContext.setChainState(this);
        }
    }

    @Override // com.cloud.tmc.integration.chain.ChainState
    public void setTime(long j11) {
        ChainState.DefaultImpls.setTime(this, j11);
    }
}
