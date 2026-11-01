package com.transsion.baselib.net;

import ak.k;
import android.app.Activity;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.fragment.app.FragmentActivity;
import com.therouter.TheRouter;
import com.transsion.baselib.report.l;
import java.io.IOException;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AppLifeStatusInterceptor implements Interceptor {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f43315e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f43316a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f43317b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f43318c = LazyKt.b(new Function0() { // from class: com.transsion.baselib.net.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AppLifeStatusInterceptor.h();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f43319d;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b implements l.a {
        b() {
        }

        @Override // com.transsion.baselib.report.l.a
        public void onBackgroundStatusChange(boolean z10) {
            if (z10) {
                return;
            }
            com.transsion.baselib.report.launch.b.f43370a.b().putLong("record_latest_foreground_time", System.currentTimeMillis());
            f.f43327a.b().set(true);
            AppLifeStatusInterceptor.this.m();
        }
    }

    public AppLifeStatusInterceptor() {
        HashSet hashSet = new HashSet();
        this.f43319d = hashSet;
        hashSet.add("/wefeed-mobile-bff/message/push/local/list");
        hashSet.add("/wefeed-mobile-bff/subject-api/get-ext-captions");
        hashSet.add("/wefeed-mobile-bff/app/config");
        hashSet.add("/wefeed-mobile-bff/live/sub-upcomming-match");
        hashSet.add("/wefeed-mobile-bff/subject-api/widget");
        hashSet.add("/wefeed-mobile-bff/app/check-update");
        f();
    }

    private final void f() {
        l.f43359a.g(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler h() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String str, String str2) {
        g gVar;
        Activity activityO = l.f43359a.o();
        if (activityO instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) activityO;
            if (fragmentActivity.isDestroyed() || fragmentActivity.isFinishing() || (gVar = (g) TheRouter.d(g.class, new Object[0])) == null) {
                return;
            }
            gVar.a(fragmentActivity, str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(String str, String str2) {
        k.p(TheRouter.c("/main/page_not_available").K("message", str).K("reason", str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(String str) {
        k.p(TheRouter.c("/main/page_not_available").K("reason", str));
    }

    private final Triple l(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("code", 0);
            String strOptString = jSONObject.optString("message", "");
            if (strOptString == null) {
                strOptString = "";
            }
            String strOptString2 = jSONObject.optString("reason", "");
            if (strOptString2 == null) {
                strOptString2 = "";
            }
            return new Triple(Integer.valueOf(iOptInt), strOptString, strOptString2);
        } catch (Exception unused) {
            return new Triple(0, "", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        if (this.f43316a.get()) {
            this.f43316a.set(false);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AppLifeStatusInterceptor$requestForBackToForeground$1(null), 3, null);
        }
    }

    private final boolean n(Interceptor.Chain chain) {
        l lVar = l.f43359a;
        if (!lVar.q() || ((!lVar.w() && f.f43327a.b().get()) || lVar.s())) {
            return false;
        }
        String path = Uri.parse(chain.request().url().getUrl()).getPath();
        if (!lVar.w() && CollectionsKt.b0(this.f43319d, path)) {
            return false;
        }
        this.f43316a.set(true);
        return true;
    }

    public final Handler g() {
        return (Handler) this.f43318c.getValue();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.h(chain, "chain");
        Request request = chain.request();
        if (n(chain)) {
            lg.a.f68839a.p("HttpTag", new String[]{"AppLifeStatusInterceptor response " + ((Object) null) + " : " + request.url() + " is Background request cancel "}, true);
            throw new IOException("is Background request cancel");
        }
        Response responseProceed = chain.proceed(request);
        Triple tripleL = l(responseProceed.peekBody(Long.MAX_VALUE).string());
        int iIntValue = ((Number) tripleL.component1()).intValue();
        final String str = (String) tripleL.component2();
        final String str2 = (String) tripleL.component3();
        if (responseProceed.code() == 471 || iIntValue == 471) {
            if (!l.f43359a.q() && this.f43317b.compareAndSet(false, true)) {
                g().post(new Runnable() { // from class: com.transsion.baselib.net.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppLifeStatusInterceptor.i(str, str2);
                    }
                });
            }
        } else if (responseProceed.code() == 472 || iIntValue == 472) {
            if (!l.f43359a.q()) {
                g().post(new Runnable() { // from class: com.transsion.baselib.net.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppLifeStatusInterceptor.j(str, str2);
                    }
                });
            }
        } else if ((responseProceed.code() == 403 || iIntValue == 403) && !l.f43359a.q()) {
            g().post(new Runnable() { // from class: com.transsion.baselib.net.c
                @Override // java.lang.Runnable
                public final void run() {
                    AppLifeStatusInterceptor.k(str2);
                }
            });
        }
        return responseProceed;
    }
}
