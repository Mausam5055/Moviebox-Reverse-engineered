package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.S3ClientOptions;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.SSEAlgorithm;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.DateUtils;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Log f18671a = LogFactory.b(ServiceUtils.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final DateUtils f18672b = new DateUtils();

    public static String a(Date date) {
        return DateUtils.d(date);
    }

    public static boolean b(String str) {
        return str.contains("-");
    }

    public static String c(List list) {
        Iterator it = list.iterator();
        String str = "";
        boolean z10 = true;
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (!z10) {
                str = str + ", ";
            }
            str = str + str2;
            z10 = false;
        }
        return str;
    }

    public static Date d(String str) {
        return DateUtils.h(str);
    }

    public static Date e(String str) {
        return DateUtils.i(str);
    }

    public static String f(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.startsWith("\"")) {
            strTrim = strTrim.substring(1);
        }
        return strTrim.endsWith("\"") ? strTrim.substring(0, strTrim.length() - 1) : strTrim;
    }

    public static boolean g(AmazonWebServiceRequest amazonWebServiceRequest, S3ClientOptions s3ClientOptions) {
        if ((s3ClientOptions != null && s3ClientOptions.c()) || System.getProperty("com.amazonaws.services.s3.disableGetObjectMD5Validation") != null) {
            return true;
        }
        if (amazonWebServiceRequest instanceof GetObjectRequest) {
            GetObjectRequest getObjectRequest = (GetObjectRequest) amazonWebServiceRequest;
            if (getObjectRequest.getRange() != null || getObjectRequest.getSSECustomerKey() != null) {
                return true;
            }
        } else {
            if (!(amazonWebServiceRequest instanceof PutObjectRequest)) {
                return (amazonWebServiceRequest instanceof UploadPartRequest) && ((UploadPartRequest) amazonWebServiceRequest).getSSECustomerKey() != null;
            }
            PutObjectRequest putObjectRequest = (PutObjectRequest) amazonWebServiceRequest;
            ObjectMetadata metadata = putObjectRequest.getMetadata();
            if ((metadata != null && metadata.getSSEAlgorithm() != null) || putObjectRequest.getSSECustomerKey() != null) {
                return true;
            }
            if (putObjectRequest.getSSEAwsKeyManagementParams() != null && (putObjectRequest.getSSEAwsKeyManagementParams().getEncryption() != null || putObjectRequest.getSSEAwsKeyManagementParams().getAwsKmsKeyId() != null)) {
                return true;
            }
        }
        return false;
    }

    public static boolean h(ObjectMetadata objectMetadata, S3ClientOptions s3ClientOptions) {
        if (s3ClientOptions != null && s3ClientOptions.c()) {
            return true;
        }
        if (objectMetadata == null) {
            return false;
        }
        return objectMetadata.getSSECustomerAlgorithm() != null || SSEAlgorithm.KMS.toString().equals(objectMetadata.getSSEAlgorithm());
    }
}
