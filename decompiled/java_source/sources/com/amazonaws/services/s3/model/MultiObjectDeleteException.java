package com.amazonaws.services.s3.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MultiObjectDeleteException extends AmazonS3Exception {
    private static final long serialVersionUID = -2004213552302446866L;
    private final List<DeleteObjectsResult.DeletedObject> deletedObjects;
    private final List<DeleteError> errors;

    public static class DeleteError {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f18737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f18738b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f18739c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f18740d;

        public void a(String str) {
            this.f18739c = str;
        }

        public void b(String str) {
            this.f18737a = str;
        }

        public void c(String str) {
            this.f18740d = str;
        }

        public void d(String str) {
            this.f18738b = str;
        }
    }

    public MultiObjectDeleteException(Collection<DeleteError> collection, Collection<DeleteObjectsResult.DeletedObject> collection2) {
        super("One or more objects could not be deleted");
        ArrayList arrayList = new ArrayList();
        this.errors = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.deletedObjects = arrayList2;
        arrayList2.addAll(collection2);
        arrayList.addAll(collection);
    }

    public List<DeleteObjectsResult.DeletedObject> getDeletedObjects() {
        return this.deletedObjects;
    }

    @Override // com.amazonaws.AmazonServiceException
    public String getErrorCode() {
        return super.getErrorCode();
    }

    public List<DeleteError> getErrors() {
        return this.errors;
    }
}
