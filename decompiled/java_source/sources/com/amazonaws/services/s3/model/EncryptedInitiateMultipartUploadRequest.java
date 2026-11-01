package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptedInitiateMultipartUploadRequest extends InitiateMultipartUploadRequest implements Serializable {
    private boolean createEncryptionMaterial;
    private Map<String, String> materialsDescription;

    public EncryptedInitiateMultipartUploadRequest(String str, String str2) {
        super(str, str2);
        this.createEncryptionMaterial = true;
    }

    public EncryptedInitiateMultipartUploadRequest(String str, String str2, ObjectMetadata objectMetadata) {
        super(str, str2, objectMetadata);
        this.createEncryptionMaterial = true;
    }

    public Map<String, String> getMaterialsDescription() {
        return this.materialsDescription;
    }

    public boolean isCreateEncryptionMaterial() {
        return this.createEncryptionMaterial;
    }

    public void setCreateEncryptionMaterial(boolean z10) {
        this.createEncryptionMaterial = z10;
    }

    public void setMaterialsDescription(Map<String, String> map) {
        this.materialsDescription = map == null ? null : Collections.unmodifiableMap(new HashMap(map));
    }

    public EncryptedInitiateMultipartUploadRequest withCreateEncryptionMaterial(boolean z10) {
        this.createEncryptionMaterial = z10;
        return this;
    }

    public EncryptedInitiateMultipartUploadRequest withMaterialsDescription(Map<String, String> map) {
        setMaterialsDescription(map);
        return this;
    }
}
