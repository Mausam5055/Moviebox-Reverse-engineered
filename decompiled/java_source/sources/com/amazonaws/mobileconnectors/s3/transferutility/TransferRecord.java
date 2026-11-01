package com.amazonaws.mobileconnectors.s3.transferutility;

import android.database.Cursor;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.util.json.JsonUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
class TransferRecord {
    private static final Log M = LogFactory.b(TransferRecord.class);
    public String A;
    public String B;
    public Map C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;
    public String I;
    public TransferUtilityOptions J;
    private Future K;
    private Gson L = new Gson();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18486f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f18487g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f18488h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f18489i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f18490j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f18491k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f18492l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f18493m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TransferType f18494n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TransferState f18495o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f18496p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f18497q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f18498r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f18499s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f18500t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f18501u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f18502v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f18503w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f18504x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f18505y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f18506z;

    public TransferRecord(int i11) {
        this.f18481a = i11;
    }

    private boolean c() {
        return this.f18487g == 0 && !TransferState.COMPLETED.equals(this.f18495o);
    }

    private boolean d(TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        TransferUtilityOptions transferUtilityOptions;
        if (connectivityManager == null || (transferUtilityOptions = this.J) == null || transferUtilityOptions.getTransferNetworkConnectionType().isConnected(connectivityManager)) {
            return true;
        }
        M.d("Network Connection " + this.J.getTransferNetworkConnectionType() + " is not available.");
        transferStatusUpdater.l(this.f18481a, TransferState.WAITING_FOR_NETWORK);
        return false;
    }

    private boolean e(TransferState transferState) {
        return TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState);
    }

    public boolean b(final AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (e(this.f18495o)) {
            return false;
        }
        transferStatusUpdater.l(this.f18481a, TransferState.PENDING_CANCEL);
        if (f()) {
            this.K.cancel(true);
        }
        if (TransferType.UPLOAD.equals(this.f18494n) && this.f18484d == 1) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AmazonS3 amazonS4 = amazonS3;
                        TransferRecord transferRecord = TransferRecord.this;
                        amazonS4.e(new AbortMultipartUploadRequest(transferRecord.f18496p, transferRecord.f18497q, transferRecord.f18500t));
                        TransferRecord.M.a("Successfully clean up multipart upload: " + TransferRecord.this.f18481a);
                    } catch (AmazonClientException e11) {
                        TransferRecord.M.g("Failed to abort multiplart upload: " + TransferRecord.this.f18481a, e11);
                    }
                }
            }).start();
        } else if (TransferType.DOWNLOAD.equals(this.f18494n)) {
            new File(this.f18499s).delete();
        }
        return true;
    }

    boolean f() {
        Future future = this.K;
        return (future == null || future.isDone()) ? false : true;
    }

    public boolean g(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (e(this.f18495o) || TransferState.PAUSED.equals(this.f18495o)) {
            return false;
        }
        TransferState transferState = TransferState.PENDING_PAUSE;
        if (transferState.equals(this.f18495o)) {
            return false;
        }
        transferStatusUpdater.l(this.f18481a, transferState);
        if (f()) {
            this.K.cancel(true);
        }
        return true;
    }

    boolean h(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        boolean zD = d(transferStatusUpdater, connectivityManager);
        boolean z10 = false;
        if (!zD && !e(this.f18495o)) {
            z10 = true;
            if (f()) {
                this.K.cancel(true);
            }
        }
        return z10;
    }

    public boolean i(AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        if (f() || !c() || !d(transferStatusUpdater, connectivityManager)) {
            return false;
        }
        if (this.f18494n.equals(TransferType.DOWNLOAD)) {
            this.K = TransferThreadPool.c(new DownloadTask(this, amazonS3, transferStatusUpdater));
            return true;
        }
        this.K = TransferThreadPool.c(new UploadTask(this, amazonS3, transferDBUtil, transferStatusUpdater));
        return true;
    }

    public void j(Cursor cursor) {
        this.f18481a = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        this.f18482b = cursor.getInt(cursor.getColumnIndexOrThrow("main_upload_id"));
        this.f18494n = TransferType.getType(cursor.getString(cursor.getColumnIndexOrThrow(NativeComponentConstants.KEY_COMPONENT_TYPE)));
        this.f18495o = TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow("state")));
        this.f18496p = cursor.getString(cursor.getColumnIndexOrThrow("bucket_name"));
        this.f18497q = cursor.getString(cursor.getColumnIndexOrThrow("key"));
        this.f18498r = cursor.getString(cursor.getColumnIndexOrThrow("version_id"));
        this.f18488h = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total"));
        this.f18489i = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_current"));
        this.f18490j = cursor.getLong(cursor.getColumnIndexOrThrow("speed"));
        this.f18483c = cursor.getInt(cursor.getColumnIndexOrThrow("is_requester_pays"));
        this.f18484d = cursor.getInt(cursor.getColumnIndexOrThrow("is_multipart"));
        this.f18485e = cursor.getInt(cursor.getColumnIndexOrThrow("is_last_part"));
        this.f18486f = cursor.getInt(cursor.getColumnIndexOrThrow("is_encrypted"));
        this.f18487g = cursor.getInt(cursor.getColumnIndexOrThrow("part_num"));
        this.f18501u = cursor.getString(cursor.getColumnIndexOrThrow(DownloadModel.ETAG));
        this.f18499s = cursor.getString(cursor.getColumnIndexOrThrow(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE));
        this.f18500t = cursor.getString(cursor.getColumnIndexOrThrow("multipart_id"));
        this.f18491k = cursor.getLong(cursor.getColumnIndexOrThrow("range_start"));
        this.f18492l = cursor.getLong(cursor.getColumnIndexOrThrow("range_last"));
        this.f18493m = cursor.getLong(cursor.getColumnIndexOrThrow("file_offset"));
        this.f18502v = cursor.getString(cursor.getColumnIndexOrThrow("header_content_type"));
        this.f18503w = cursor.getString(cursor.getColumnIndexOrThrow("header_content_language"));
        this.f18504x = cursor.getString(cursor.getColumnIndexOrThrow("header_content_disposition"));
        this.f18505y = cursor.getString(cursor.getColumnIndexOrThrow("header_content_encoding"));
        this.f18506z = cursor.getString(cursor.getColumnIndexOrThrow("header_cache_control"));
        this.A = cursor.getString(cursor.getColumnIndexOrThrow("header_expire"));
        this.C = JsonUtils.d(cursor.getString(cursor.getColumnIndexOrThrow("user_metadata")));
        this.D = cursor.getString(cursor.getColumnIndexOrThrow("expiration_time_rule_id"));
        this.E = cursor.getString(cursor.getColumnIndexOrThrow("http_expires_date"));
        this.F = cursor.getString(cursor.getColumnIndexOrThrow("sse_algorithm"));
        this.G = cursor.getString(cursor.getColumnIndexOrThrow("kms_key"));
        this.H = cursor.getString(cursor.getColumnIndexOrThrow("content_md5"));
        this.I = cursor.getString(cursor.getColumnIndexOrThrow("canned_acl"));
        this.B = cursor.getString(cursor.getColumnIndexOrThrow("header_storage_class"));
        this.J = (TransferUtilityOptions) this.L.fromJson(cursor.getString(cursor.getColumnIndexOrThrow("transfer_utility_options")), TransferUtilityOptions.class);
    }

    public String toString() {
        return "[id:" + this.f18481a + ",bucketName:" + this.f18496p + ",key:" + this.f18497q + ",file:" + this.f18499s + ",type:" + this.f18494n + ",bytesTotal:" + this.f18488h + ",bytesCurrent:" + this.f18489i + ",fileOffset:" + this.f18493m + ",state:" + this.f18495o + ",cannedAcl:" + this.I + ",mainUploadId:" + this.f18482b + ",isMultipart:" + this.f18484d + ",isLastPart:" + this.f18485e + ",partNumber:" + this.f18487g + ",multipartId:" + this.f18500t + ",eTag:" + this.f18501u + ",storageClass:" + this.B + ",userMetadata:" + this.C.toString() + ",transferUtilityOptions:" + this.L.toJson(this.J) + "]";
    }
}
