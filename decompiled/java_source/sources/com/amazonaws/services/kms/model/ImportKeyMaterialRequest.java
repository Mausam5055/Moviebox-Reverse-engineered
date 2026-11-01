package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class ImportKeyMaterialRequest extends AmazonWebServiceRequest implements Serializable {
    private ByteBuffer encryptedKeyMaterial;
    private String expirationModel;
    private ByteBuffer importToken;
    private String keyId;
    private Date validTo;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ImportKeyMaterialRequest)) {
            return false;
        }
        ImportKeyMaterialRequest importKeyMaterialRequest = (ImportKeyMaterialRequest) obj;
        if ((importKeyMaterialRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (importKeyMaterialRequest.getKeyId() != null && !importKeyMaterialRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((importKeyMaterialRequest.getImportToken() == null) ^ (getImportToken() == null)) {
            return false;
        }
        if (importKeyMaterialRequest.getImportToken() != null && !importKeyMaterialRequest.getImportToken().equals(getImportToken())) {
            return false;
        }
        if ((importKeyMaterialRequest.getEncryptedKeyMaterial() == null) ^ (getEncryptedKeyMaterial() == null)) {
            return false;
        }
        if (importKeyMaterialRequest.getEncryptedKeyMaterial() != null && !importKeyMaterialRequest.getEncryptedKeyMaterial().equals(getEncryptedKeyMaterial())) {
            return false;
        }
        if ((importKeyMaterialRequest.getValidTo() == null) ^ (getValidTo() == null)) {
            return false;
        }
        if (importKeyMaterialRequest.getValidTo() != null && !importKeyMaterialRequest.getValidTo().equals(getValidTo())) {
            return false;
        }
        if ((importKeyMaterialRequest.getExpirationModel() == null) ^ (getExpirationModel() == null)) {
            return false;
        }
        return importKeyMaterialRequest.getExpirationModel() == null || importKeyMaterialRequest.getExpirationModel().equals(getExpirationModel());
    }

    public ByteBuffer getEncryptedKeyMaterial() {
        return this.encryptedKeyMaterial;
    }

    public String getExpirationModel() {
        return this.expirationModel;
    }

    public ByteBuffer getImportToken() {
        return this.importToken;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public Date getValidTo() {
        return this.validTo;
    }

    public int hashCode() {
        return (((((((((getKeyId() == null ? 0 : getKeyId().hashCode()) + 31) * 31) + (getImportToken() == null ? 0 : getImportToken().hashCode())) * 31) + (getEncryptedKeyMaterial() == null ? 0 : getEncryptedKeyMaterial().hashCode())) * 31) + (getValidTo() == null ? 0 : getValidTo().hashCode())) * 31) + (getExpirationModel() != null ? getExpirationModel().hashCode() : 0);
    }

    public void setEncryptedKeyMaterial(ByteBuffer byteBuffer) {
        this.encryptedKeyMaterial = byteBuffer;
    }

    public void setExpirationModel(ExpirationModelType expirationModelType) {
        this.expirationModel = expirationModelType.toString();
    }

    public void setExpirationModel(String str) {
        this.expirationModel = str;
    }

    public void setImportToken(ByteBuffer byteBuffer) {
        this.importToken = byteBuffer;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setValidTo(Date date) {
        this.validTo = date;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getKeyId() != null) {
            sb2.append("KeyId: " + getKeyId() + ",");
        }
        if (getImportToken() != null) {
            sb2.append("ImportToken: " + getImportToken() + ",");
        }
        if (getEncryptedKeyMaterial() != null) {
            sb2.append("EncryptedKeyMaterial: " + getEncryptedKeyMaterial() + ",");
        }
        if (getValidTo() != null) {
            sb2.append("ValidTo: " + getValidTo() + ",");
        }
        if (getExpirationModel() != null) {
            sb2.append("ExpirationModel: " + getExpirationModel());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public ImportKeyMaterialRequest withEncryptedKeyMaterial(ByteBuffer byteBuffer) {
        this.encryptedKeyMaterial = byteBuffer;
        return this;
    }

    public ImportKeyMaterialRequest withExpirationModel(ExpirationModelType expirationModelType) {
        this.expirationModel = expirationModelType.toString();
        return this;
    }

    public ImportKeyMaterialRequest withExpirationModel(String str) {
        this.expirationModel = str;
        return this;
    }

    public ImportKeyMaterialRequest withImportToken(ByteBuffer byteBuffer) {
        this.importToken = byteBuffer;
        return this;
    }

    public ImportKeyMaterialRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public ImportKeyMaterialRequest withValidTo(Date date) {
        this.validTo = date;
        return this;
    }
}
