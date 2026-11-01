package com.amazonaws.services.s3.model.inventory;

import com.alibaba.sdk.android.oss.model.CreateBucketRequest;

/* JADX INFO: loaded from: classes2.dex */
public enum InventoryOptionalField {
    Size("Size"),
    LastModifiedDate("LastModifiedDate"),
    StorageClass(CreateBucketRequest.TAB_STORAGECLASS),
    ETag("ETag"),
    IsMultipartUploaded("IsMultipartUploaded"),
    ReplicationStatus("ReplicationStatus");

    private final String field;

    InventoryOptionalField(String str) {
        this.field = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.field;
    }
}
