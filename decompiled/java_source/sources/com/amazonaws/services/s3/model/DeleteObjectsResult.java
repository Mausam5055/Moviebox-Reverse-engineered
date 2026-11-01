package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DeleteObjectsResult implements Serializable, S3RequesterChargedResult {
    private final List<DeletedObject> deletedObjects;
    private boolean isRequesterCharged;

    public static class DeletedObject implements Serializable {
        private boolean deleteMarker;
        private String deleteMarkerVersionId;
        private String key;
        private String versionId;

        public String getDeleteMarkerVersionId() {
            return this.deleteMarkerVersionId;
        }

        public String getKey() {
            return this.key;
        }

        public String getVersionId() {
            return this.versionId;
        }

        public boolean isDeleteMarker() {
            return this.deleteMarker;
        }

        public void setDeleteMarker(boolean z10) {
            this.deleteMarker = z10;
        }

        public void setDeleteMarkerVersionId(String str) {
            this.deleteMarkerVersionId = str;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public void setVersionId(String str) {
            this.versionId = str;
        }
    }

    public DeleteObjectsResult(List<DeletedObject> list) {
        this(list, false);
    }

    public DeleteObjectsResult(List<DeletedObject> list, boolean z10) {
        ArrayList arrayList = new ArrayList();
        this.deletedObjects = arrayList;
        arrayList.addAll(list);
        setRequesterCharged(z10);
    }

    public List<DeletedObject> getDeletedObjects() {
        return this.deletedObjects;
    }

    public boolean isRequesterCharged() {
        return this.isRequesterCharged;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z10) {
        this.isRequesterCharged = z10;
    }
}
