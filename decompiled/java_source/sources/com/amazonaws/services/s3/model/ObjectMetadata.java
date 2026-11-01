package com.amazonaws.services.s3.model;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.AmazonClientException;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.ObjectRestoreResult;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
import com.amazonaws.util.DateUtils;
import java.io.Serializable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectMetadata implements ServerSideEncryptionResult, S3RequesterChargedResult, ObjectExpirationResult, ObjectRestoreResult, Cloneable, Serializable {
    public static final String AES_256_SERVER_SIDE_ENCRYPTION = SSEAlgorithm.AES256.getAlgorithm();
    public static final String KMS_SERVER_SIDE_ENCRYPTION = SSEAlgorithm.KMS.getAlgorithm();
    private Date expirationTime;
    private String expirationTimeRuleId;
    private Date httpExpiresDate;
    private Map<String, Object> metadata;
    private Boolean ongoingRestore;
    private Date restoreExpirationTime;
    private Map<String, String> userMetadata;

    public ObjectMetadata() {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        this.userMetadata = new TreeMap(comparator);
        this.metadata = new TreeMap(comparator);
    }

    private ObjectMetadata(ObjectMetadata objectMetadata) {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        this.userMetadata = new TreeMap(comparator);
        this.metadata = new TreeMap(comparator);
        this.userMetadata = objectMetadata.userMetadata == null ? null : new TreeMap(objectMetadata.userMetadata);
        this.metadata = objectMetadata.metadata != null ? new TreeMap(objectMetadata.metadata) : null;
        this.expirationTime = DateUtils.b(objectMetadata.expirationTime);
        this.expirationTimeRuleId = objectMetadata.expirationTimeRuleId;
        this.httpExpiresDate = DateUtils.b(objectMetadata.httpExpiresDate);
        this.ongoingRestore = objectMetadata.ongoingRestore;
        this.restoreExpirationTime = DateUtils.b(objectMetadata.restoreExpirationTime);
    }

    public void addUserMetadata(String str, String str2) {
        this.userMetadata.put(str, str2);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ObjectMetadata m201clone() {
        return new ObjectMetadata(this);
    }

    public String getCacheControl() {
        return (String) this.metadata.get(HttpHeaders.CACHE_CONTROL);
    }

    public String getContentDisposition() {
        return (String) this.metadata.get(HttpHeaders.CONTENT_DISPOSITION);
    }

    public String getContentEncoding() {
        return (String) this.metadata.get(HttpHeaders.CONTENT_ENCODING);
    }

    public String getContentLanguage() {
        return (String) this.metadata.get("Content-Language");
    }

    public long getContentLength() {
        Long l11 = (Long) this.metadata.get(HttpHeaders.CONTENT_LENGTH);
        if (l11 == null) {
            return 0L;
        }
        return l11.longValue();
    }

    public String getContentMD5() {
        return (String) this.metadata.get(HttpHeaders.CONTENT_MD5);
    }

    public Long[] getContentRange() {
        String str = (String) this.metadata.get("Content-Range");
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("[ -/]+");
        try {
            return new Long[]{Long.valueOf(Long.parseLong(strArrSplit[1])), Long.valueOf(Long.parseLong(strArrSplit[2]))};
        } catch (NumberFormatException e11) {
            throw new AmazonClientException("Unable to parse content range. Header 'Content-Range' has corrupted data" + e11.getMessage(), e11);
        }
    }

    public String getContentType() {
        return (String) this.metadata.get(HttpHeaders.CONTENT_TYPE);
    }

    public String getETag() {
        return (String) this.metadata.get("ETag");
    }

    public Date getExpirationTime() {
        return DateUtils.b(this.expirationTime);
    }

    public String getExpirationTimeRuleId() {
        return this.expirationTimeRuleId;
    }

    public Date getHttpExpiresDate() {
        return DateUtils.b(this.httpExpiresDate);
    }

    public long getInstanceLength() {
        int iLastIndexOf;
        String str = (String) this.metadata.get("Content-Range");
        return (str == null || (iLastIndexOf = str.lastIndexOf("/")) < 0) ? getContentLength() : Long.parseLong(str.substring(iLastIndexOf + 1));
    }

    public Date getLastModified() {
        return DateUtils.b((Date) this.metadata.get("Last-Modified"));
    }

    public Boolean getOngoingRestore() {
        return this.ongoingRestore;
    }

    public Integer getPartCount() {
        return (Integer) this.metadata.get("x-amz-mp-parts-count");
    }

    public Map<String, Object> getRawMetadata() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        treeMap.putAll(this.metadata);
        return Collections.unmodifiableMap(treeMap);
    }

    public Object getRawMetadataValue(String str) {
        return this.metadata.get(str);
    }

    public String getReplicationStatus() {
        return (String) this.metadata.get("x-amz-replication-status");
    }

    public Date getRestoreExpirationTime() {
        return DateUtils.b(this.restoreExpirationTime);
    }

    public String getSSEAlgorithm() {
        return (String) this.metadata.get("x-amz-server-side-encryption");
    }

    public String getSSEAwsKmsKeyId() {
        return (String) this.metadata.get("x-amz-server-side-encryption-aws-kms-key-id");
    }

    public String getSSECustomerAlgorithm() {
        return (String) this.metadata.get("x-amz-server-side-encryption-customer-algorithm");
    }

    public String getSSECustomerKeyMd5() {
        return (String) this.metadata.get("x-amz-server-side-encryption-customer-key-MD5");
    }

    @Deprecated
    public String getServerSideEncryption() {
        return (String) this.metadata.get("x-amz-server-side-encryption");
    }

    public String getStorageClass() {
        Object obj = this.metadata.get("x-amz-storage-class");
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public String getUserMetaDataOf(String str) {
        Map<String, String> map = this.userMetadata;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public Map<String, String> getUserMetadata() {
        return this.userMetadata;
    }

    public String getVersionId() {
        return (String) this.metadata.get("x-amz-version-id");
    }

    public boolean isRequesterCharged() {
        return this.metadata.get("x-amz-request-charged") != null;
    }

    public void setCacheControl(String str) {
        this.metadata.put(HttpHeaders.CACHE_CONTROL, str);
    }

    public void setContentDisposition(String str) {
        this.metadata.put(HttpHeaders.CONTENT_DISPOSITION, str);
    }

    public void setContentEncoding(String str) {
        this.metadata.put(HttpHeaders.CONTENT_ENCODING, str);
    }

    public void setContentLanguage(String str) {
        this.metadata.put("Content-Language", str);
    }

    public void setContentLength(long j11) {
        this.metadata.put(HttpHeaders.CONTENT_LENGTH, Long.valueOf(j11));
    }

    public void setContentMD5(String str) {
        if (str == null) {
            this.metadata.remove(HttpHeaders.CONTENT_MD5);
        } else {
            this.metadata.put(HttpHeaders.CONTENT_MD5, str);
        }
    }

    public void setContentType(String str) {
        this.metadata.put(HttpHeaders.CONTENT_TYPE, str);
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void setExpirationTime(Date date) {
        this.expirationTime = date;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void setExpirationTimeRuleId(String str) {
        this.expirationTimeRuleId = str;
    }

    public void setHeader(String str, Object obj) {
        this.metadata.put(str, obj);
    }

    public void setHttpExpiresDate(Date date) {
        this.httpExpiresDate = date;
    }

    public void setLastModified(Date date) {
        this.metadata.put("Last-Modified", date);
    }

    @Override // com.amazonaws.services.s3.internal.ObjectRestoreResult
    public void setOngoingRestore(boolean z10) {
        this.ongoingRestore = Boolean.valueOf(z10);
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z10) {
        if (z10) {
            this.metadata.put("x-amz-request-charged", "requester");
        }
    }

    @Override // com.amazonaws.services.s3.internal.ObjectRestoreResult
    public void setRestoreExpirationTime(Date date) {
        this.restoreExpirationTime = date;
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public void setSSEAlgorithm(String str) {
        this.metadata.put("x-amz-server-side-encryption", str);
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public void setSSECustomerAlgorithm(String str) {
        this.metadata.put("x-amz-server-side-encryption-customer-algorithm", str);
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public void setSSECustomerKeyMd5(String str) {
        this.metadata.put("x-amz-server-side-encryption-customer-key-MD5", str);
    }

    @Deprecated
    public void setServerSideEncryption(String str) {
        this.metadata.put("x-amz-server-side-encryption", str);
    }

    public void setStorageClass(StorageClass storageClass) {
        this.metadata.put("x-amz-storage-class", storageClass);
    }

    public void setUserMetadata(Map<String, String> map) {
        this.userMetadata = map;
    }
}
