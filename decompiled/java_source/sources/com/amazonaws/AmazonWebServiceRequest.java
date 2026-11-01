package com.amazonaws;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.metrics.RequestMetricCollector;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AmazonWebServiceRequest implements Cloneable {
    private AmazonWebServiceRequest cloneSource;
    private AWSCredentials credentials;
    private ProgressListener generalProgressListener;
    private final RequestClientOptions requestClientOptions = new RequestClientOptions();

    @Deprecated
    private RequestMetricCollector requestMetricCollector;

    private void a(AmazonWebServiceRequest amazonWebServiceRequest) {
        this.cloneSource = amazonWebServiceRequest;
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AmazonWebServiceRequest mo198clone() {
        try {
            AmazonWebServiceRequest amazonWebServiceRequest = (AmazonWebServiceRequest) super.clone();
            amazonWebServiceRequest.a(this);
            return amazonWebServiceRequest;
        } catch (CloneNotSupportedException e11) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e11);
        }
    }

    protected final <T extends AmazonWebServiceRequest> T copyBaseTo(T t11) {
        t11.setGeneralProgressListener(this.generalProgressListener);
        t11.setRequestMetricCollector(this.requestMetricCollector);
        return t11;
    }

    public AmazonWebServiceRequest getCloneRoot() {
        AmazonWebServiceRequest cloneSource = this.cloneSource;
        if (cloneSource != null) {
            while (cloneSource.getCloneSource() != null) {
                cloneSource = cloneSource.getCloneSource();
            }
        }
        return cloneSource;
    }

    public AmazonWebServiceRequest getCloneSource() {
        return this.cloneSource;
    }

    public ProgressListener getGeneralProgressListener() {
        return this.generalProgressListener;
    }

    public RequestClientOptions getRequestClientOptions() {
        return this.requestClientOptions;
    }

    public AWSCredentials getRequestCredentials() {
        return this.credentials;
    }

    @Deprecated
    public RequestMetricCollector getRequestMetricCollector() {
        return this.requestMetricCollector;
    }

    public void setGeneralProgressListener(ProgressListener progressListener) {
        this.generalProgressListener = progressListener;
    }

    public void setRequestCredentials(AWSCredentials aWSCredentials) {
        this.credentials = aWSCredentials;
    }

    @Deprecated
    public void setRequestMetricCollector(RequestMetricCollector requestMetricCollector) {
        this.requestMetricCollector = requestMetricCollector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AmazonWebServiceRequest> T withGeneralProgressListener(ProgressListener progressListener) {
        setGeneralProgressListener(progressListener);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public <T extends AmazonWebServiceRequest> T withRequestMetricCollector(RequestMetricCollector requestMetricCollector) {
        setRequestMetricCollector(requestMetricCollector);
        return this;
    }
}
