package com.amazonaws.services.s3;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.PartCreationEvent;
import com.amazonaws.services.s3.internal.S3DirectSpi;
import com.amazonaws.services.s3.model.UploadObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class UploadObjectObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f18609a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private UploadObjectRequest f18610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private S3DirectSpi f18612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExecutorService f18613e;

    protected AmazonWebServiceRequest a(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        amazonWebServiceRequest.getRequestClientOptions().a(str);
        return amazonWebServiceRequest;
    }

    protected UploadPartRequest b(PartCreationEvent partCreationEvent, File file) {
        return new UploadPartRequest().withBucketName(this.f18610b.getBucketName()).withFile(file).withKey(this.f18610b.getKey()).withPartNumber(partCreationEvent.c()).withPartSize(file.length()).withLastPart(partCreationEvent.d()).withUploadId(this.f18611c).withObjectMetadata(this.f18610b.getUploadPartMetadata());
    }

    public void c(PartCreationEvent partCreationEvent) {
        final File fileB = partCreationEvent.b();
        final UploadPartRequest uploadPartRequestB = b(partCreationEvent, fileB);
        final OnFileDelete onFileDeleteA = partCreationEvent.a();
        a(uploadPartRequestB, AmazonS3EncryptionClient.f18594w);
        this.f18609a.add(this.f18613e.submit(new Callable<UploadPartResult>() { // from class: com.amazonaws.services.s3.UploadObjectObserver.1
            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UploadPartResult call() {
                try {
                    UploadPartResult uploadPartResultD = UploadObjectObserver.this.d(uploadPartRequestB);
                    if (!fileB.delete()) {
                    }
                    return uploadPartResultD;
                } finally {
                    if (fileB.delete()) {
                        OnFileDelete onFileDelete = onFileDeleteA;
                        if (onFileDelete != null) {
                            onFileDelete.b(null);
                        }
                    } else {
                        LogFactory.b(getClass()).a("Ignoring failure to delete file " + fileB + " which has already been uploaded");
                    }
                }
            }
        }));
    }

    protected UploadPartResult d(UploadPartRequest uploadPartRequest) {
        return this.f18612d.a(uploadPartRequest);
    }
}
