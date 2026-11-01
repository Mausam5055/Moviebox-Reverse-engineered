package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.util.VersionInfoUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class TransferUtility {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Log f18525g = LogFactory.b(TransferUtility.class);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object f18526h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f18527i = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TransferStatusUpdater f18528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TransferDBUtil f18529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ConnectivityManager f18530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AmazonS3 f18531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f18532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TransferUtilityOptions f18533f;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AmazonS3 f18534a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f18535b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f18536c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TransferUtilityOptions f18537d;

        protected Builder() {
        }

        public TransferUtility a() {
            if (this.f18534a == null) {
                throw new IllegalArgumentException("AmazonS3 client is required please set using .s3Client(yourClient)");
            }
            if (this.f18535b == null) {
                throw new IllegalArgumentException("Context is required please set using .context(applicationContext)");
            }
            if (this.f18537d == null) {
                this.f18537d = new TransferUtilityOptions();
            }
            return new TransferUtility(this.f18534a, this.f18535b, this.f18536c, this.f18537d);
        }

        public Builder b(Context context) {
            this.f18535b = context.getApplicationContext();
            return this;
        }

        public Builder c(AmazonS3 amazonS3) {
            this.f18534a = amazonS3;
            return this;
        }
    }

    private TransferUtility(AmazonS3 amazonS3, Context context, String str, TransferUtilityOptions transferUtilityOptions) {
        this.f18531d = amazonS3;
        this.f18532e = str;
        this.f18533f = transferUtilityOptions;
        this.f18529b = new TransferDBUtil(context.getApplicationContext());
        this.f18528a = TransferStatusUpdater.c(context.getApplicationContext());
        TransferThreadPool.b(transferUtilityOptions.getTransferThreadPoolSize());
        this.f18530c = (ConnectivityManager) context.getSystemService("connectivity");
    }

    static AmazonWebServiceRequest a(AmazonWebServiceRequest amazonWebServiceRequest) {
        amazonWebServiceRequest.getRequestClientOptions().a("TransferService_multipart/" + f() + VersionInfoUtils.c());
        return amazonWebServiceRequest;
    }

    static AmazonWebServiceRequest b(AmazonWebServiceRequest amazonWebServiceRequest) {
        amazonWebServiceRequest.getRequestClientOptions().a("TransferService/" + f() + VersionInfoUtils.c());
        return amazonWebServiceRequest;
    }

    public static Builder c() {
        return new Builder();
    }

    private int e(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        long length = file.length();
        double d11 = length;
        long jMax = (long) Math.max(Math.ceil(d11 / 10000.0d), 5242880.0d);
        int iCeil = ((int) Math.ceil(d11 / jMax)) + 1;
        ContentValues[] contentValuesArr = new ContentValues[iCeil];
        contentValuesArr[0] = this.f18529b.d(str, str2, file, 0L, 0, "", file.length(), 0, objectMetadata, cannedAccessControlList, this.f18533f);
        int i11 = 1;
        long j11 = 0;
        for (int i12 = 1; i12 < iCeil; i12++) {
            long jMin = Math.min(jMax, length);
            length -= jMax;
            contentValuesArr[i12] = this.f18529b.d(str, str2, file, j11, i11, "", jMin, length <= 0 ? 1 : 0, objectMetadata, cannedAccessControlList, this.f18533f);
            j11 += jMax;
            i11++;
        }
        return this.f18529b.a(contentValuesArr);
    }

    private static String f() {
        synchronized (f18526h) {
            try {
                String str = f18527i;
                if (str != null && !str.trim().isEmpty()) {
                    return f18527i.trim() + "/";
                }
                return "";
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean g(File file) {
        return file != null && file.length() > 5242880;
    }

    private synchronized void h(String str, int i11) {
        S3ClientReference.b(Integer.valueOf(i11), this.f18531d);
        TransferRecord transferRecordD = this.f18528a.d(i11);
        if (transferRecordD == null) {
            transferRecordD = this.f18529b.j(i11);
            if (transferRecordD == null) {
                f18525g.f("Cannot find transfer with id: " + i11);
                return;
            }
            this.f18528a.b(transferRecordD);
        } else if ("add_transfer".equals(str)) {
            f18525g.j("Transfer has already been added: " + i11);
            return;
        }
        if ("add_transfer".equals(str) || "resume_transfer".equals(str)) {
            transferRecordD.i(this.f18531d, this.f18529b, this.f18528a, this.f18530c);
        } else if ("pause_transfer".equals(str)) {
            transferRecordD.g(this.f18531d, this.f18528a);
        } else if ("cancel_transfer".equals(str)) {
            transferRecordD.b(this.f18531d, this.f18528a);
        } else {
            f18525g.f("Unknown action: " + str);
        }
    }

    public boolean d(int i11) {
        h("cancel_transfer", i11);
        return true;
    }

    public TransferObserver i(String str, String str2, File file) {
        return j(str, str2, file, new ObjectMetadata());
    }

    public TransferObserver j(String str, String str2, File file, ObjectMetadata objectMetadata) {
        return k(str, str2, file, objectMetadata, null);
    }

    public TransferObserver k(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        return l(str, str2, file, objectMetadata, cannedAccessControlList, null);
    }

    public TransferObserver l(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferListener transferListener) {
        if (file == null || file.isDirectory() || !file.exists()) {
            throw new IllegalArgumentException("Invalid file: " + file);
        }
        int iE = g(file) ? e(str, str2, file, objectMetadata, cannedAccessControlList) : Integer.parseInt(this.f18529b.k(TransferType.UPLOAD, str, str2, file, objectMetadata, cannedAccessControlList, this.f18533f).getLastPathSegment());
        TransferObserver transferObserver = new TransferObserver(iE, this.f18529b, str, str2, file, transferListener);
        h("add_transfer", iE);
        return transferObserver;
    }
}
