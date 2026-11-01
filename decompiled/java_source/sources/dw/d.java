package dw;

import android.text.TextUtils;
import com.amazonaws.auth.BasicSessionCredentials;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferListener;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferState;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.S3ClientOptions;
import com.blankj.utilcode.util.Utils;
import com.transsion.upload.bean.TstTokenEntity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends dw.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TransferUtility f61446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f61447c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedHashMap f61448d = new LinkedHashMap();

    public static final class a implements TransferListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f61450b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ cw.a f61451c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f61452d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ TransferObserver f61453e;

        /* JADX INFO: renamed from: dw.d$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0736a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f61454a;

            static {
                int[] iArr = new int[TransferState.values().length];
                try {
                    iArr[TransferState.COMPLETED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TransferState.FAILED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[TransferState.CANCELED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f61454a = iArr;
            }
        }

        a(String str, cw.a aVar, String str2, TransferObserver transferObserver) {
            this.f61450b = str;
            this.f61451c = aVar;
            this.f61452d = str2;
            this.f61453e = transferObserver;
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void a(int i11, TransferState transferState) {
            int i12 = transferState == null ? -1 : C0736a.f61454a[transferState.ordinal()];
            if (i12 == 1) {
                ew.a.f62032a.b(d.this.d() + " --> onStateChanged() --> COMPLETED --> file path == " + this.f61450b + " --> id = " + i11);
                cw.a aVar = this.f61451c;
                if (aVar != null) {
                    String str = this.f61452d;
                    String str2 = this.f61450b;
                    String strE = this.f61453e.e();
                    Intrinsics.g(strE, "transferObserver.bucket");
                    aVar.b(str, str2, strE);
                    return;
                }
                return;
            }
            if (i12 == 2) {
                ew.a.f62032a.c(d.this.d() + " --> onStateChanged() --> FAILED");
                cw.a aVar2 = this.f61451c;
                if (aVar2 != null) {
                    aVar2.c(this.f61452d, "failed", "", d.this.f());
                    return;
                }
                return;
            }
            if (i12 != 3) {
                return;
            }
            ew.a.f62032a.b(d.this.d() + " --> onStateChanged() --> CANCELED --> 取消了");
            cw.a aVar3 = this.f61451c;
            if (aVar3 != null) {
                aVar3.c(this.f61452d, "canceled", "", d.this.f());
            }
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void b(int i11, long j11, long j12) {
            ew.a.f62032a.b(d.this.d() + " --> onProgressChanged() --> id = " + i11 + " --> bytesCurrent = " + j11 + " --> bytesTotal = " + j12);
            cw.a aVar = this.f61451c;
            if (aVar != null) {
                aVar.a(this.f61452d, j11, j12);
            }
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void c(int i11, Exception exc) {
            ew.a.f62032a.b(d.this.d() + " --> onError() --> id = " + i11 + " --> ex = " + (exc != null ? exc.getMessage() : null));
            cw.a aVar = this.f61451c;
            if (aVar != null) {
                aVar.c(this.f61452d, exc != null ? exc.getMessage() : null, "", d.this.f());
            }
        }
    }

    private final void j(boolean z10, TransferObserver transferObserver) {
        if (z10) {
            if (!this.f61448d.containsKey(this.f61446b)) {
                this.f61448d.put(this.f61446b, CollectionsKt.q(transferObserver));
                return;
            }
            List list = (List) this.f61448d.get(this.f61446b);
            if (list != null) {
                list.add(transferObserver);
            }
        }
    }

    private final void k(TstTokenEntity tstTokenEntity) {
        AmazonS3Client amazonS3Client = new AmazonS3Client(new BasicSessionCredentials(tstTokenEntity.getAccessKeyId(), tstTokenEntity.getAccessKeySecret(), tstTokenEntity.getSecurityToken()), Region.e(Regions.fromName(tstTokenEntity.getRegionId())));
        amazonS3Client.d0(S3ClientOptions.a().b(false).c(true).a());
        this.f61446b = TransferUtility.c().c(amazonS3Client).b(Utils.a()).a();
    }

    private final void l(TstTokenEntity tstTokenEntity, String str, UploadFileType uploadFileType, boolean z10, cw.a aVar) {
        String strA = a(uploadFileType, str);
        TransferUtility transferUtility = this.f61446b;
        TransferObserver transferObserverI = transferUtility != null ? transferUtility.i(tstTokenEntity.getBucket(), strA, new File(str)) : null;
        j(z10, transferObserverI);
        if (transferObserverI != null) {
            transferObserverI.g(new a(strA, aVar, str, transferObserverI));
        }
    }

    @Override // dw.a
    public void b() {
        for (Map.Entry entry : this.f61448d.entrySet()) {
            for (TransferObserver transferObserver : (Iterable) entry.getValue()) {
                TransferUtility transferUtility = (TransferUtility) entry.getKey();
                if (transferUtility != null) {
                    transferUtility.d(transferObserver != null ? transferObserver.f() : 0);
                }
                if (transferObserver != null) {
                    transferObserver.d();
                }
            }
        }
        this.f61448d.clear();
        ew.a.f62032a.b(d() + " --> cancel() --> end");
    }

    @Override // dw.a
    public void c(TstTokenEntity tstToken, String localFilePath, UploadFileType uploadFileType, boolean z10, cw.a aVar) {
        Intrinsics.h(tstToken, "tstToken");
        Intrinsics.h(localFilePath, "localFilePath");
        Intrinsics.h(uploadFileType, "uploadFileType");
        l(tstToken, localFilePath, uploadFileType, z10, aVar);
    }

    @Override // dw.a
    public UploadTstTokenStorageType f() {
        return UploadTstTokenStorageType.TST_TOKEN_STORAGE_S3;
    }

    @Override // dw.a
    public void h(TstTokenEntity tstToken) {
        Intrinsics.h(tstToken, "tstToken");
        if (TextUtils.equals(this.f61447c, tstToken.getAccessKeyId())) {
            return;
        }
        String accessKeyId = tstToken.getAccessKeyId();
        if (accessKeyId == null) {
            accessKeyId = "";
        }
        this.f61447c = accessKeyId;
        k(tstToken);
    }
}
