package nv;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.e;
import androidx.p009lifecycle.f;
import androidx.p009lifecycle.u;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.tn.lib.widget.toast.core.h;
import com.transsion.transfer.wifi.qrcode.QrCodeUtil;
import com.transsion.transfer.wifi.util.g;
import com.transsion.web.R$string;
import com.transsion.web.share.WebShareDialog;
import f.j;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f70576a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.activity.result.b f70580e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f70577b = "fail";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f70578c = "cancel";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f70579d = NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.activity.result.a f70581f = new androidx.activity.result.a() { // from class: nv.a
        @Override // androidx.activity.result.a
        public final void a(Object obj) {
            c.h(this.f70573a, (ActivityResult) obj);
        }
    };

    public static final class a implements f {
        a() {
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onCreate(u uVar) {
            e.a(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onDestroy(u uVar) {
            e.b(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onPause(u uVar) {
            e.c(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onResume(u owner) {
            Intrinsics.h(owner, "owner");
            e.d(this, owner);
            c.this.f70576a = 0L;
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStart(u uVar) {
            e.e(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onStop(u owner) {
            Intrinsics.h(owner, "owner");
            e.f(this, owner);
            if (com.blankj.utilcode.util.c.l()) {
                return;
            }
            c.this.f70576a = SystemClock.elapsedRealtime();
        }
    }

    private final Intent d(Context context, String str, String str2, String str3) {
        String strE = e(context, str2, str3);
        if (strE == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ShareConstant.SHARE_TYPE_TEXT);
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setPackage(strE);
        return intent;
    }

    private final String e(Context context, String str, String str2) {
        if (str != null && com.transsion.baseui.util.a.f43502a.c(context, str)) {
            return str;
        }
        if (str2 == null || !com.transsion.baseui.util.a.f43502a.c(context, str2)) {
            return null;
        }
        return str2;
    }

    private final String f() {
        return "Enjoy Free Dramas & HD Movies on MovieBox—now with file transfer support! " + QrCodeUtil.f55907a.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(c cVar, ActivityResult activityResult) {
        Intrinsics.h(activityResult, "activityResult");
        try {
            String str = (cVar.f70576a == 0 || SystemClock.elapsedRealtime() - cVar.f70576a < 1500) ? cVar.f70577b : cVar.f70579d;
            g.d(g.f55970a, "ShareManager --> shareResultActivityResultCallback --> result = " + str, false, 2, null);
            h.f41479a.l(str);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(AppCompatActivity appCompatActivity, c cVar, String packageName, String str, String txt) {
        Object objM454constructorimpl;
        Unit unit;
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(txt, "txt");
        g.h(g.f55970a, "ShareManager --> showShareDialog() --> packageName = " + packageName + " --> backUpPackageName = " + str + " --> txt = " + txt, false, 2, null);
        if (packageName.length() == 0) {
            ClipData clipDataNewPlainText = ClipData.newPlainText("MovieBox", txt);
            ClipboardManager clipboardManager = (ClipboardManager) appCompatActivity.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipDataNewPlainText);
            }
            h.f41479a.k(R$string.web_copied);
        } else {
            Intent intentD = cVar.d(appCompatActivity, txt, packageName, str);
            if (intentD == null) {
                h.f41479a.k(R$string.web_app_not_exist);
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    androidx.activity.result.b bVar = cVar.f70580e;
                    if (bVar != null) {
                        bVar.a(intentD);
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    g.d(g.f55970a, "ShareManager --> showShareDialog() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
                    objM454constructorimpl = Unit.f67061a;
                }
            }
        }
        return Unit.f67061a;
    }

    public final void g(AppCompatActivity activity) {
        Intrinsics.h(activity, "activity");
        this.f70580e = activity.registerForActivityResult(new j(), this.f70581f);
        activity.getLifecycle().a(new a());
    }

    public final void i(final AppCompatActivity activity) {
        Intrinsics.h(activity, "activity");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("WhatsApp", f());
        jSONObject.put("Telegram", f());
        jSONObject.put("CopyLink", f());
        WebShareDialog.Companion aVar = WebShareDialog.INSTANCE;
        String string = jSONObject.toString();
        Intrinsics.g(string, "toString(...)");
        WebShareDialog webShareDialogA = aVar.a(string);
        webShareDialogA.s0("wifi_share_panel");
        webShareDialogA.t0(false);
        webShareDialogA.r0(new Function3() { // from class: nv.b
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return c.j(activity, this, (String) obj, (String) obj2, (String) obj3);
            }
        });
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        webShareDialogA.show(supportFragmentManager, "WebShareDialog");
    }
}
