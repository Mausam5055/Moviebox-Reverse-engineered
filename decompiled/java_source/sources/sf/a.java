package sf;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.text.TextUtils;
import com.tencent.tinker.lib.service.TinkerPatchForeService;
import com.tencent.tinker.lib.service.TinkerPatchService;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.SharePatchInfo;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import java.io.File;
import vf.c;

/* JADX INFO: loaded from: classes5.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f75343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ServiceConnection f75344b;

    /* JADX INFO: renamed from: sf.a$a, reason: collision with other inner class name */
    class ServiceConnectionC0914a implements ServiceConnection {
        ServiceConnectionC0914a() {
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            a aVar = a.this;
            if (aVar.f75343a == null || aVar.f75344b == null) {
                return;
            }
            try {
                a aVar2 = a.this;
                aVar2.f75343a.unbindService(aVar2.f75344b);
            } catch (Throwable unused) {
            }
        }
    }

    public a(Context context) {
        this.f75343a = context;
    }

    private void e() {
        try {
            this.f75344b = new ServiceConnectionC0914a();
            this.f75343a.bindService(new Intent(this.f75343a, (Class<?>) TinkerPatchForeService.class), this.f75344b, 1);
        } catch (Throwable unused) {
        }
    }

    @Override // sf.b
    public int a(String str) {
        return c(str, false);
    }

    protected int c(String str, boolean z10) {
        int iD = d(str, SharePatchFileUtil.getMD5(new File(str)));
        if (iD == 0) {
            e();
            TinkerPatchService.j(this.f75343a, str, z10);
        } else {
            vf.a.x(this.f75343a).g().h(new File(str), iD);
        }
        return iD;
    }

    protected int d(String str, String str2) {
        vf.a aVarX = vf.a.x(this.f75343a);
        if (!aVarX.t() || !ShareTinkerInternals.isTinkerEnableWithSharedPreferences(this.f75343a)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2) || !SharePatchFileUtil.isLegalFile(new File(str))) {
            return -2;
        }
        if (aVarX.s()) {
            return -4;
        }
        if (wf.b.d(this.f75343a)) {
            return -3;
        }
        if (ShareTinkerInternals.isVmJit()) {
            return -5;
        }
        c cVarM = aVarX.m();
        if (!aVarX.r() || cVarM == null || !cVarM.f77311e) {
            String absolutePath = aVarX.h().getAbsolutePath();
            try {
                SharePatchInfo andCheckPropertyWithLock = SharePatchInfo.readAndCheckPropertyWithLock(SharePatchFileUtil.getPatchInfoFile(absolutePath), SharePatchFileUtil.getPatchInfoLockFile(absolutePath));
                if (andCheckPropertyWithLock != null && !ShareTinkerInternals.isNullOrNil(andCheckPropertyWithLock.newVersion) && !andCheckPropertyWithLock.newVersion.equals(andCheckPropertyWithLock.versionToRemove) && str2.equals(andCheckPropertyWithLock.newVersion)) {
                    return -6;
                }
            } catch (Throwable unused) {
            }
        }
        return !wf.c.b(this.f75343a).c(str2) ? -7 : 0;
    }
}
