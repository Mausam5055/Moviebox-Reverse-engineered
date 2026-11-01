package xu;

import android.content.Context;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.tinker.lib.custom.api.PatchState;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static void a(Context context, String str, String str2, ou.c cVar) {
        if (context == null) {
            ShareTinkerLog.w("Tinker.AutoRollbackMgr", "tryRollback: context is null, skip rollback for patchId=%s reason=%s", str, str2);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            vf.a.x(applicationContext).a();
            yu.a.o(applicationContext, PatchState.ROLLBACK, str, str2);
            yu.a.i(applicationContext, str);
            ShareTinkerLog.w("Tinker.AutoRollbackMgr", "auto rollback executed, patchId=%s, reason=%s", str, str2);
            if (cVar != null) {
                cVar.h(str, str2);
            }
        } catch (Throwable th2) {
            String str3 = "rollback_fail:" + th2.getMessage();
            yu.a.o(applicationContext, PatchState.BLACKLISTED, str, str3);
            yu.a.i(applicationContext, str);
            ShareTinkerLog.e("Tinker.AutoRollbackMgr", "auto rollback failed: %s", th2.getMessage());
            if (cVar != null) {
                cVar.c(str, str3);
            }
        }
    }
}
