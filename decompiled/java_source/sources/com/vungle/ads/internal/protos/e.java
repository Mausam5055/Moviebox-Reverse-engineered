package com.vungle.ads.internal.protos;

import com.google.protobuf.ByteString;
import com.google.protobuf.s0;
import com.google.protobuf.t0;

/* JADX INFO: loaded from: classes7.dex */
public interface e extends t0 {
    String getAdSource();

    ByteString getAdSourceBytes();

    long getAppState();

    String getConnectionType();

    ByteString getConnectionTypeBytes();

    String getConnectionTypeDetail();

    ByteString getConnectionTypeDetailBytes();

    String getCreativeId();

    ByteString getCreativeIdBytes();

    @Override // com.google.protobuf.t0
    /* synthetic */ s0 getDefaultInstanceForType();

    String getEventId();

    ByteString getEventIdBytes();

    long getIsHbPlacement();

    boolean getIsLowDataModeEnabled();

    String getMake();

    ByteString getMakeBytes();

    String getMediationName();

    ByteString getMediationNameBytes();

    String getMeta();

    ByteString getMetaBytes();

    String getModel();

    ByteString getModelBytes();

    String getOs();

    ByteString getOsBytes();

    String getOsVersion();

    ByteString getOsVersionBytes();

    String getPlacementReferenceId();

    ByteString getPlacementReferenceIdBytes();

    String getPlacementType();

    ByteString getPlacementTypeBytes();

    String getSessionId();

    ByteString getSessionIdBytes();

    Sdk$SDKMetric.SDKMetricType getType();

    int getTypeValue();

    long getValue();

    String getVmVersion();

    ByteString getVmVersionBytes();

    @Override // com.google.protobuf.t0
    /* synthetic */ boolean isInitialized();
}
