package mw;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import com.transsion.usercenter.edit.api.RequstUserEntity;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends mw.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private lw.a f70018b = new lw.a();

    public static final class a implements com.transsion.usercenter.edit.a {
        a() {
        }

        @Override // com.transsion.usercenter.edit.a
        public void a(String str, String str2) {
            if (b.this.d()) {
                com.transsion.usercenter.edit.b bVar = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar != null) {
                    bVar.onEditProfile(false);
                }
                com.transsion.usercenter.edit.b bVar2 = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar2 != null) {
                    bVar2.onError(str, str2);
                }
            }
        }

        @Override // com.transsion.usercenter.edit.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(String str, boolean z10, String bucket) {
            com.transsion.usercenter.edit.b bVar;
            Intrinsics.h(bucket, "bucket");
            if (!b.this.d() || (bVar = (com.transsion.usercenter.edit.b) b.this.c()) == null) {
                return;
            }
            bVar.onEditProfile(true);
        }
    }

    /* JADX INFO: renamed from: mw.b$b, reason: collision with other inner class name */
    public static final class C0842b implements com.transsion.usercenter.edit.a {
        C0842b() {
        }

        @Override // com.transsion.usercenter.edit.a
        public void a(String str, String str2) {
            if (b.this.d()) {
                com.transsion.usercenter.edit.b bVar = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar != null) {
                    bVar.onEditProfile(false);
                }
                com.transsion.usercenter.edit.b bVar2 = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar2 != null) {
                    bVar2.onError(str, str2);
                }
            }
        }

        @Override // com.transsion.usercenter.edit.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(UserInfo userInfo, boolean z10, String bucket) {
            Intrinsics.h(bucket, "bucket");
            if (b.this.d()) {
                if (userInfo != null) {
                    com.transsion.usercenter.edit.b bVar = (com.transsion.usercenter.edit.b) b.this.c();
                    if (bVar != null) {
                        bVar.onUserInfo(userInfo);
                        return;
                    }
                    return;
                }
                com.transsion.usercenter.edit.b bVar2 = (com.transsion.usercenter.edit.b) b.this.c();
                if (bVar2 != null) {
                    bVar2.onUserInfo(null);
                }
            }
        }
    }

    public static final class c implements cw.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.transsion.usercenter.edit.a f70021a;

        c(com.transsion.usercenter.edit.a aVar) {
            this.f70021a = aVar;
        }

        @Override // cw.a
        public void a(String localFilePath, long j11, long j12) {
            Intrinsics.h(localFilePath, "localFilePath");
        }

        @Override // cw.a
        public void b(String localFilePath, String url, String bucket) {
            Intrinsics.h(localFilePath, "localFilePath");
            Intrinsics.h(url, "url");
            Intrinsics.h(bucket, "bucket");
            this.f70021a.b(url, false, bucket);
        }

        @Override // cw.a
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            lg.a.C0828a.g(lg.a.f68839a, "uploadKey: " + str + "; clientMessage:" + str2 + "; serviceMessage: " + str3, false, 2, null);
            this.f70021a.a(TmcConstants.COLD_OPEN_TYPE, "clientMessage");
        }
    }

    @Override // mw.a
    public void b() {
        super.b();
        cw.c.f60931a.b();
    }

    public final void e(RequstUserEntity entity) {
        Intrinsics.h(entity, "entity");
        lw.a aVar = this.f70018b;
        if (aVar != null) {
            aVar.a(entity, new a());
        }
    }

    public final void f() {
        lw.a aVar = this.f70018b;
        if (aVar != null) {
            aVar.b(new C0842b());
        }
    }

    public final void g(String imagePath, com.transsion.usercenter.edit.a apiCallback) {
        Intrinsics.h(imagePath, "imagePath");
        Intrinsics.h(apiCallback, "apiCallback");
        cw.c.f60931a.f(imagePath, UploadFileType.OBJECT_NAME_IMAGE, true, new c(apiCallback));
    }
}
