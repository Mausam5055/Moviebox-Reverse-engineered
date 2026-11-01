package com.amazonaws.util;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceClientHolderInputStream extends SdkFilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AmazonWebServiceClient f19003a;

    public ServiceClientHolderInputStream(InputStream inputStream, AmazonWebServiceClient amazonWebServiceClient) {
        super(inputStream);
        this.f19003a = amazonWebServiceClient;
    }
}
