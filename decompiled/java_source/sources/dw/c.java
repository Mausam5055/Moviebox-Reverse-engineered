package dw;

import android.net.Uri;
import android.os.Build;
import com.alibaba.sdk.android.oss.ClientConfiguration;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.OSS;
import com.alibaba.sdk.android.oss.OSSClient;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.auth.OSSStsTokenCredentialProvider;
import com.alibaba.sdk.android.oss.internal.OSSAsyncTask;
import com.alibaba.sdk.android.oss.model.PutObjectRequest;
import com.alibaba.sdk.android.oss.model.PutObjectResult;
import com.blankj.utilcode.util.Utils;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends dw.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TstTokenEntity f61439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OSS f61440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedHashMap f61441d = new LinkedHashMap();

    public static final class a implements OSSCompletedCallback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f61443b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ cw.a f61444c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f61445d;

        a(String str, cw.a aVar, String str2) {
            this.f61443b = str;
            this.f61444c = aVar;
            this.f61445d = str2;
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFailure(PutObjectRequest putObjectRequest, ClientException clientException, ServiceException serviceException) {
            ew.a.f62032a.c(c.this.d() + " --> OSSCompletedCallback() --> onFailure() --> clientException = " + clientException + " --> serviceException = " + serviceException);
            cw.a aVar = this.f61444c;
            if (aVar != null) {
                aVar.c(this.f61445d, clientException != null ? clientException.getMessage() : null, serviceException != null ? serviceException.getMessage() : null, c.this.f());
            }
        }

        @Override // com.alibaba.sdk.android.oss.callback.OSSCompletedCallback
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(PutObjectRequest putObjectRequest, PutObjectResult result) {
            Intrinsics.h(result, "result");
            ew.a.f62032a.b(c.this.d() + " --> OSSCompletedCallback() --> onSuccess() --> remotePath = " + this.f61443b);
            cw.a aVar = this.f61444c;
            if (aVar != null) {
                String str = this.f61445d;
                String str2 = this.f61443b;
                String bucketName = putObjectRequest != null ? putObjectRequest.getBucketName() : null;
                if (bucketName == null) {
                    bucketName = "";
                }
                aVar.b(str, str2, bucketName);
            }
        }
    }

    private final void k(String str, OSSAsyncTask oSSAsyncTask) {
        this.f61441d.put(str, oSSAsyncTask);
    }

    private final void l(UploadFileType uploadFileType, final String str, boolean z10, final cw.a aVar) {
        PutObjectRequest putObjectRequest;
        String strA = a(uploadFileType, str);
        if (Build.VERSION.SDK_INT >= 29) {
            TstTokenEntity tstTokenEntity = this.f61439b;
            putObjectRequest = new PutObjectRequest(tstTokenEntity != null ? tstTokenEntity.getBucket() : null, strA, Uri.fromFile(new File(str)));
        } else {
            TstTokenEntity tstTokenEntity2 = this.f61439b;
            putObjectRequest = new PutObjectRequest(tstTokenEntity2 != null ? tstTokenEntity2.getBucket() : null, strA, str);
        }
        putObjectRequest.setProgressCallback(new OSSProgressCallback() { // from class: dw.b
            @Override // com.alibaba.sdk.android.oss.callback.OSSProgressCallback
            public final void onProgress(Object obj, long j11, long j12) {
                c.m(aVar, str, (PutObjectRequest) obj, j11, j12);
            }
        });
        OSS oss = this.f61440c;
        OSSAsyncTask<PutObjectResult> oSSAsyncTaskAsyncPutObject = oss != null ? oss.asyncPutObject(putObjectRequest, new a(strA, aVar, str)) : null;
        if (z10) {
            k(str, oSSAsyncTaskAsyncPutObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(cw.a aVar, String localFilePath, PutObjectRequest putObjectRequest, long j11, long j12) {
        Intrinsics.h(localFilePath, "$localFilePath");
        if (aVar != null) {
            aVar.a(localFilePath, j11, j12);
        }
    }

    @Override // dw.a
    public void b() {
        Iterator it = this.f61441d.entrySet().iterator();
        while (it.hasNext()) {
            OSSAsyncTask oSSAsyncTask = (OSSAsyncTask) ((Map.Entry) it.next()).getValue();
            if (oSSAsyncTask != null) {
                oSSAsyncTask.cancel();
            }
        }
        this.f61441d.clear();
        ew.a.f62032a.b(d() + " --> cancel() --> end");
    }

    @Override // dw.a
    public void c(TstTokenEntity tstToken, String localFilePath, UploadFileType uploadFileType, boolean z10, cw.a aVar) {
        Intrinsics.h(tstToken, "tstToken");
        Intrinsics.h(localFilePath, "localFilePath");
        Intrinsics.h(uploadFileType, "uploadFileType");
        l(uploadFileType, localFilePath, z10, aVar);
    }

    @Override // dw.a
    public UploadTstTokenStorageType f() {
        return UploadTstTokenStorageType.TST_TOKEN_STORAGE_OSS;
    }

    @Override // dw.a
    public void h(TstTokenEntity tstToken) {
        Intrinsics.h(tstToken, "tstToken");
        this.f61439b = tstToken;
        if (tstToken != null) {
            OSSStsTokenCredentialProvider oSSStsTokenCredentialProvider = new OSSStsTokenCredentialProvider(tstToken.getAccessKeyId(), tstToken.getAccessKeySecret(), tstToken.getSecurityToken());
            ClientConfiguration clientConfiguration = new ClientConfiguration();
            clientConfiguration.setConnectionTimeout(30000);
            clientConfiguration.setSocketTimeout(30000);
            clientConfiguration.setMaxConcurrentRequest(5);
            clientConfiguration.setMaxErrorRetry(3);
            OSS oss = this.f61440c;
            if (oss == null) {
                this.f61440c = new OSSClient(Utils.a(), tstToken.getEndPoint(), oSSStsTokenCredentialProvider);
            } else if (oss != null) {
                oss.updateCredentialProvider(oSSStsTokenCredentialProvider);
            }
        }
    }
}
