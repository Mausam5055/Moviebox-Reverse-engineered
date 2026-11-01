package com.transsion.web.share;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.u;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.web.R$string;
import com.transsion.web.fragment.WebFragmentV2;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kr.p;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f58127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function2 f58128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.activity.result.b f58129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f58130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f58131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f58132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f58133g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f58134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.activity.result.a f58135i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f58136j;

    public static final class a implements androidx.p009lifecycle.f {
        a() {
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onCreate(u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onDestroy(u uVar) {
            androidx.p009lifecycle.e.b(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onPause(u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onResume(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.d(this, owner);
            k.this.f58131e = 0L;
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStart(u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onStop(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.f(this, owner);
            if (com.blankj.utilcode.util.c.l()) {
                return;
            }
            k.this.f58131e = SystemClock.elapsedRealtime();
        }
    }

    public k(Fragment fragment, Function2 shareCallback) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(shareCallback, "shareCallback");
        this.f58127a = fragment;
        this.f58128b = shareCallback;
        this.f58132f = "fail";
        this.f58133g = "cancel";
        this.f58134h = NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
        androidx.activity.result.a aVar = new androidx.activity.result.a() { // from class: com.transsion.web.share.j
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                k.n(this.f58126a, (ActivityResult) obj);
            }
        };
        this.f58135i = aVar;
        this.f58129c = fragment.registerForActivityResult(new f.j(), aVar);
        fragment.getLifecycle().a(new a());
        this.f58136j = "";
    }

    private final Intent f(Context context, String str, String str2, String str3) {
        String strG = g(context, str2, str3);
        if (strG == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ShareConstant.SHARE_TYPE_TEXT);
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setPackage(strG);
        return intent;
    }

    private final String g(Context context, String str, String str2) {
        if (str != null && com.transsion.baseui.util.a.f43502a.c(context, str)) {
            return str;
        }
        if (str2 == null || !com.transsion.baseui.util.a.f43502a.c(context, str2)) {
            return null;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(k kVar, boolean z10) {
        if (z10) {
            kVar.m(kVar.f58134h);
        } else {
            kVar.m(kVar.f58132f);
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.web_app_not_exist);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(k kVar, boolean z10) {
        if (z10) {
            kVar.m(kVar.f58134h);
        } else {
            kVar.m(kVar.f58132f);
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.web_app_not_exist);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(Context context, k kVar, String packageName, String str, String txt) {
        Object objM454constructorimpl;
        Unit unit;
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(txt, "txt");
        if (packageName.length() == 0) {
            ClipData clipDataNewPlainText = ClipData.newPlainText("MovieBox", txt);
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipDataNewPlainText);
            }
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.web_copied);
            kVar.m(kVar.f58134h);
        } else {
            Intent intentF = kVar.f(context, txt, packageName, str);
            if (intentF == null) {
                com.tn.lib.widget.toast.core.h.f41479a.k(R$string.web_app_not_exist);
                kVar.m(kVar.f58132f);
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    androidx.activity.result.b bVar = kVar.f58129c;
                    if (bVar != null) {
                        bVar.a(intentF);
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                    kVar.m(kVar.f58132f);
                    objM454constructorimpl = Unit.f67061a;
                }
            }
        }
        return Unit.f67061a;
    }

    private final void m(String str) {
        this.f58128b.invoke(this.f58136j, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(k kVar, ActivityResult activityResult) {
        String str;
        Intrinsics.h(activityResult, "activityResult");
        try {
            if (kVar.f58130d) {
                int resultCode = activityResult.getResultCode();
                if (resultCode == -1) {
                    str = kVar.f58134h;
                } else if (resultCode != 0) {
                    str = kVar.f58132f;
                } else {
                    com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.share.R$string.cancel);
                    str = kVar.f58133g;
                }
            } else if (kVar.f58131e == 0 || SystemClock.elapsedRealtime() - kVar.f58131e < 1500) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                String strA = WebFragmentV2.INSTANCE.a();
                Intrinsics.g(strA, "<get-TAG>(...)");
                lg.a.C0828a.f(c0828a, strA, "操作太快了 leaveVskitTime:" + kVar.f58131e, false, 4, null);
                str = kVar.f58132f;
            } else {
                str = kVar.f58134h;
            }
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String strA2 = WebFragmentV2.INSTANCE.a();
            Intrinsics.g(strA2, "<get-TAG>(...)");
            lg.a.C0828a.f(c0828a2, strA2, "shareResultActivityResultCallback:" + str + "  ----  " + activityResult.getResultCode(), false, 4, null);
            kVar.m(str);
        } catch (Exception unused) {
        }
    }

    public final void h(Activity activity, String data, String callbackId) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        JSONObject jSONObject = new JSONObject(data);
        String strOptString = jSONObject.optString("packageName");
        String strOptString2 = jSONObject.optString("txt");
        this.f58136j = callbackId;
        Context context = this.f58127a.getContext();
        if (context == null) {
            return;
        }
        if (Intrinsics.c(strOptString, "copyLink")) {
            ClipData clipDataNewPlainText = ClipData.newPlainText("MovieBox", strOptString2);
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipDataNewPlainText);
            }
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.web_copied);
            m(this.f58134h);
            return;
        }
        if (strOptString == null || strOptString.length() == 0) {
            m("0");
            return;
        }
        if (TextUtils.equals(strOptString, "com.whatsapp")) {
            p pVar = p.f68388a;
            Intrinsics.e(strOptString2);
            pVar.d(activity, strOptString2, new Function1() { // from class: com.transsion.web.share.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return k.i(this.f58124a, ((Boolean) obj).booleanValue());
                }
            });
        } else if (TextUtils.equals(strOptString, "org.telegram.messenger")) {
            p pVar2 = p.f68388a;
            Intrinsics.e(strOptString2);
            pVar2.c(activity, strOptString2, new Function1() { // from class: com.transsion.web.share.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return k.j(this.f58125a, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    public final void k(String data, String callbackId, FragmentManager fragmentManager) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(fragmentManager, "fragmentManager");
        this.f58136j = callbackId;
        final Context context = this.f58127a.getContext();
        if (context == null) {
            return;
        }
        try {
            if (fragmentManager.k0("WebShareDialog") != null) {
                return;
            }
            WebShareDialog webShareDialogA = WebShareDialog.INSTANCE.a(data);
            webShareDialogA.r0(new Function3() { // from class: com.transsion.web.share.g
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return k.l(context, this, (String) obj, (String) obj2, (String) obj3);
                }
            });
            webShareDialogA.show(fragmentManager, "WebShareDialog");
        } catch (Exception unused) {
            m(this.f58132f);
        }
    }
}
