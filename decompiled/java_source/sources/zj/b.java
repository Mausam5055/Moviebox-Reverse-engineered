package zj;

import ak.k;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.transsion.commercializationapi.ITaskCenterApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f79427a = new b();

    public static final class a implements ok.b {
        a(c cVar) {
        }

        @Override // ok.b
        public void a(boolean z10) {
            ok.b.a.a(this, z10);
        }

        @Override // ok.b
        public void onFail() {
        }

        @Override // ok.b
        public void onSuccess() {
        }
    }

    private b() {
    }

    private final boolean b(String str) {
        return TextUtils.equals("/common/dialog", Uri.parse(str).getQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE));
    }

    public static /* synthetic */ void d(b bVar, Context context, String str, c cVar, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            cVar = null;
        }
        bVar.c(context, str, cVar);
    }

    private final void e(FragmentActivity fragmentActivity, String str, final c cVar) {
        String queryParameter = Uri.parse(str).getQueryParameter("name");
        if (Intrinsics.c(queryParameter, "MemberPageVideoTaskDialog")) {
            ITaskCenterApi iTaskCenterApi = (ITaskCenterApi) TheRouter.d(ITaskCenterApi.class, new Object[0]);
            if (iTaskCenterApi != null) {
                iTaskCenterApi.b(fragmentActivity, new Function1(cVar) { // from class: zj.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return b.f(null, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            }
            return;
        }
        if (Intrinsics.c(queryParameter, "DownloadInterceptDialog")) {
            ITaskCenterApi iTaskCenterApi2 = (ITaskCenterApi) TheRouter.d(ITaskCenterApi.class, new Object[0]);
            if (iTaskCenterApi2 != null) {
                iTaskCenterApi2.c(new a(cVar));
                return;
            }
            return;
        }
        lg.a.C0828a.l(lg.a.f68839a, "cm_dialog", "name = " + queryParameter + " --> 没有匹配到", false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(c cVar, boolean z10) {
        if (cVar != null) {
            cVar.a(z10);
        }
        return Unit.f67061a;
    }

    public final void c(Context context, String deeplink, c cVar) {
        Object objM454constructorimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(deeplink, "deeplink");
        if (TextUtils.isEmpty(deeplink)) {
            return;
        }
        if (b(deeplink)) {
            if (context instanceof FragmentActivity) {
                e((FragmentActivity) context, deeplink, cVar);
                return;
            }
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(deeplink);
            Intrinsics.g(uri, "parse(...)");
            k.o(uri);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Result.m453boximpl(objM454constructorimpl);
    }
}
