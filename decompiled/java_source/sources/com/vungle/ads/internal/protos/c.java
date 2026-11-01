package com.vungle.ads.internal.protos;

import com.google.protobuf.s0;
import com.google.protobuf.t0;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public interface c extends t0 {
    @Override // com.google.protobuf.t0
    /* synthetic */ s0 getDefaultInstanceForType();

    Sdk$SDKError getErrors(int i11);

    int getErrorsCount();

    List<Sdk$SDKError> getErrorsList();

    @Override // com.google.protobuf.t0
    /* synthetic */ boolean isInitialized();
}
