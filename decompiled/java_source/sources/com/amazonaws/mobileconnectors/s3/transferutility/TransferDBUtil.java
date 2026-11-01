package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.json.JsonUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class TransferDBUtil {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Log f18459b = LogFactory.b(TransferDBUtil.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f18460c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static TransferDBBase f18461d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Gson f18462a = new Gson();

    public TransferDBUtil(Context context) {
        synchronized (f18460c) {
            try {
                if (f18461d == null) {
                    f18461d = new TransferDBBase(context);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private String b(int i11) {
        if (i11 <= 0) {
            f18459b.f("Cannot create a string of 0 or less placeholders.");
            return null;
        }
        StringBuilder sb2 = new StringBuilder((i11 * 2) - 1);
        sb2.append(UrlUtils.QUESTION_MARK);
        for (int i12 = 1; i12 < i11; i12++) {
            sb2.append(",?");
        }
        return sb2.toString();
    }

    private ContentValues e(ObjectMetadata objectMetadata) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("user_metadata", JsonUtils.e(objectMetadata.getUserMetadata()));
        contentValues.put("header_content_type", objectMetadata.getContentType());
        contentValues.put("header_content_encoding", objectMetadata.getContentEncoding());
        contentValues.put("header_cache_control", objectMetadata.getCacheControl());
        contentValues.put("content_md5", objectMetadata.getContentMD5());
        contentValues.put("header_content_disposition", objectMetadata.getContentDisposition());
        contentValues.put("sse_algorithm", objectMetadata.getSSEAlgorithm());
        contentValues.put("kms_key", objectMetadata.getSSEAwsKmsKeyId());
        contentValues.put("expiration_time_rule_id", objectMetadata.getExpirationTimeRuleId());
        if (objectMetadata.getHttpExpiresDate() != null) {
            contentValues.put("http_expires_date", String.valueOf(objectMetadata.getHttpExpiresDate().getTime()));
        }
        if (objectMetadata.getStorageClass() != null) {
            contentValues.put("header_storage_class", objectMetadata.getStorageClass());
        }
        return contentValues;
    }

    private ContentValues f(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, transferType.toString());
        contentValues.put("state", TransferState.WAITING.toString());
        contentValues.put("bucket_name", str);
        contentValues.put("key", str2);
        contentValues.put(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, file.getAbsolutePath());
        contentValues.put("bytes_current", (Long) 0L);
        if (transferType.equals(TransferType.UPLOAD)) {
            contentValues.put("bytes_total", Long.valueOf(file.length()));
        }
        contentValues.put("is_multipart", (Integer) 0);
        contentValues.put("part_num", (Integer) 0);
        contentValues.put("is_encrypted", (Integer) 0);
        contentValues.putAll(e(objectMetadata));
        if (cannedAccessControlList != null) {
            contentValues.put("canned_acl", cannedAccessControlList.toString());
        }
        if (transferUtilityOptions != null) {
            contentValues.put("transfer_utility_options", this.f18462a.toJson(transferUtilityOptions));
        }
        return contentValues;
    }

    public int a(ContentValues[] contentValuesArr) {
        TransferDBBase transferDBBase = f18461d;
        return transferDBBase.a(transferDBBase.d(), contentValuesArr);
    }

    public int c(int i11) {
        return f18461d.b(i(i11), null, null);
    }

    public ContentValues d(String str, String str2, File file, long j11, int i11, String str3, long j12, int i12, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, TransferType.UPLOAD.toString());
        contentValues.put("state", TransferState.WAITING.toString());
        contentValues.put("bucket_name", str);
        contentValues.put("key", str2);
        contentValues.put(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, file.getAbsolutePath());
        contentValues.put("bytes_current", (Long) 0L);
        contentValues.put("bytes_total", Long.valueOf(j12));
        contentValues.put("is_multipart", (Integer) 1);
        contentValues.put("part_num", Integer.valueOf(i11));
        contentValues.put("file_offset", Long.valueOf(j11));
        contentValues.put("multipart_id", str3);
        contentValues.put("is_last_part", Integer.valueOf(i12));
        contentValues.put("is_encrypted", (Integer) 0);
        contentValues.putAll(e(objectMetadata));
        if (cannedAccessControlList != null) {
            contentValues.put("canned_acl", cannedAccessControlList.toString());
        }
        if (transferUtilityOptions != null) {
            contentValues.put("transfer_utility_options", this.f18462a.toJson(transferUtilityOptions));
        }
        return contentValues;
    }

    public List g(int i11, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorF = null;
        try {
            cursorF = f18461d.f(h(i11), null, null, null, null);
            while (cursorF.moveToNext()) {
                if (!TransferState.PART_COMPLETED.equals(TransferState.getState(cursorF.getString(cursorF.getColumnIndexOrThrow("state"))))) {
                    UploadPartRequest uploadPartRequestWithPartSize = new UploadPartRequest().withId(cursorF.getInt(cursorF.getColumnIndexOrThrow("_id"))).withMainUploadId(cursorF.getInt(cursorF.getColumnIndexOrThrow("main_upload_id"))).withBucketName(cursorF.getString(cursorF.getColumnIndexOrThrow("bucket_name"))).withKey(cursorF.getString(cursorF.getColumnIndexOrThrow("key"))).withUploadId(str).withFile(new File(cursorF.getString(cursorF.getColumnIndexOrThrow(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE)))).withFileOffset(cursorF.getLong(cursorF.getColumnIndexOrThrow("file_offset"))).withPartNumber(cursorF.getInt(cursorF.getColumnIndexOrThrow("part_num"))).withPartSize(cursorF.getLong(cursorF.getColumnIndexOrThrow("bytes_total")));
                    boolean z10 = true;
                    if (1 != cursorF.getInt(cursorF.getColumnIndexOrThrow("is_last_part"))) {
                        z10 = false;
                    }
                    arrayList.add(uploadPartRequestWithPartSize.withLastPart(z10));
                }
            }
            cursorF.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursorF != null) {
                cursorF.close();
            }
            throw th2;
        }
    }

    public Uri h(int i11) {
        return Uri.parse(f18461d.d() + "/part/" + i11);
    }

    public Uri i(int i11) {
        return Uri.parse(f18461d.d() + "/" + i11);
    }

    TransferRecord j(int i11) throws Throwable {
        Cursor cursor = null;
        TransferRecord transferRecord = null;
        try {
            Cursor cursorN = n(i11);
            try {
                if (cursorN.moveToFirst()) {
                    transferRecord = new TransferRecord(i11);
                    transferRecord.j(cursorN);
                }
                cursorN.close();
                return transferRecord;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorN;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public Uri k(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValuesF = f(transferType, str, str2, file, objectMetadata, cannedAccessControlList, transferUtilityOptions);
        TransferDBBase transferDBBase = f18461d;
        return transferDBBase.e(transferDBBase.d(), contentValuesF);
    }

    public long l(int i11) {
        Cursor cursorF = null;
        try {
            cursorF = f18461d.f(h(i11), null, null, null, null);
            long j11 = 0;
            while (cursorF.moveToNext()) {
                if (TransferState.PART_COMPLETED.equals(TransferState.getState(cursorF.getString(cursorF.getColumnIndexOrThrow("state"))))) {
                    j11 += cursorF.getLong(cursorF.getColumnIndexOrThrow("bytes_total"));
                }
            }
            cursorF.close();
            return j11;
        } catch (Throwable th2) {
            if (cursorF != null) {
                cursorF.close();
            }
            throw th2;
        }
    }

    public List m(int i11) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorF = null;
        try {
            cursorF = f18461d.f(h(i11), null, null, null, null);
            while (cursorF.moveToNext()) {
                arrayList.add(new PartETag(cursorF.getInt(cursorF.getColumnIndexOrThrow("part_num")), cursorF.getString(cursorF.getColumnIndexOrThrow(DownloadModel.ETAG))));
            }
            cursorF.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursorF != null) {
                cursorF.close();
            }
            throw th2;
        }
    }

    public Cursor n(int i11) {
        return f18461d.f(i(i11), null, null, null, null);
    }

    public Cursor o(TransferType transferType, TransferState[] transferStateArr) {
        String str;
        String[] strArr;
        int length = transferStateArr.length;
        String strB = b(length);
        int i11 = 0;
        if (transferType == TransferType.ANY) {
            String str2 = "state in (" + strB + ")";
            String[] strArr2 = new String[length];
            while (i11 < length) {
                strArr2[i11] = transferStateArr[i11].toString();
                i11++;
            }
            str = str2;
            strArr = strArr2;
        } else {
            String str3 = "state in (" + strB + ") and " + NativeComponentConstants.KEY_COMPONENT_TYPE + "=?";
            String[] strArr3 = new String[length + 1];
            while (i11 < length) {
                strArr3[i11] = transferStateArr[i11].toString();
                i11++;
            }
            strArr3[i11] = transferType.toString();
            str = str3;
            strArr = strArr3;
        }
        TransferDBBase transferDBBase = f18461d;
        return transferDBBase.f(transferDBBase.d(), null, str, strArr, null);
    }

    public int p(int i11, long j11) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("bytes_current", Long.valueOf(j11));
        return f18461d.g(i(i11), contentValues, null, null);
    }

    public int q(int i11, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(DownloadModel.ETAG, str);
        return f18461d.g(i(i11), contentValues, null, null);
    }

    public int r(int i11, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("multipart_id", str);
        return f18461d.g(i(i11), contentValues, null, null);
    }

    public int s(int i11, TransferState transferState) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", transferState.toString());
        return TransferState.FAILED.equals(transferState) ? f18461d.g(i(i11), contentValues, "state not in (?,?,?,?,?) ", new String[]{TransferState.COMPLETED.toString(), TransferState.PENDING_NETWORK_DISCONNECT.toString(), TransferState.PAUSED.toString(), TransferState.CANCELED.toString(), TransferState.WAITING_FOR_NETWORK.toString()}) : f18461d.g(i(i11), contentValues, null, null);
    }

    public int t(TransferRecord transferRecord) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(transferRecord.f18481a));
        contentValues.put("state", transferRecord.f18495o.toString());
        contentValues.put("bytes_total", Long.valueOf(transferRecord.f18488h));
        contentValues.put("bytes_current", Long.valueOf(transferRecord.f18489i));
        return f18461d.g(i(transferRecord.f18481a), contentValues, null, null);
    }
}
