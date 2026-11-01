package com.transsion.subroom.deeplink;

import ak.k;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.report.h;
import com.transsion.baselib.report.l;
import com.transsion.baseui.activity.BaseCommonActivity;
import com.transsion.fissionapi.IFissionProvider;
import com.transsion.subroom.activity.MainActivity;
import com.transsion.subroom.activity.SplashActivity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends androidx.p009lifecycle.b implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f54675d = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f54676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f54677c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Uri f54679e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Function0 f54680f;

        b(Uri uri, Function0 function0) {
            this.f54679e = uri;
            this.f54680f = function0;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            d dVar = d.this;
            Uri uri = this.f54679e;
            dVar.l(uri, uri, null, this.f54680f);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(ILaunchApi.UrlBean urlBean) {
            String url;
            super.c(urlBean);
            if (urlBean != null) {
                try {
                    url = urlBean.getUrl();
                    if (url == null) {
                        url = "";
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            } else {
                url = "";
            }
            if (!TextUtils.isEmpty(url)) {
                d.this.l(this.f54679e, Uri.parse(url), null, this.f54680f);
                return;
            }
            d dVar = d.this;
            Uri uri = this.f54679e;
            dVar.l(uri, uri, null, this.f54680f);
        }
    }

    public static final class c extends bg.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0 f54681a;

        c(Function0 function0) {
            this.f54681a = function0;
        }

        @Override // bg.c
        public void b(Navigator navigator) {
            Intrinsics.h(navigator, "navigator");
            Function0 function0 = this.f54681a;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // bg.c
        public void c(Navigator navigator) {
            Intrinsics.h(navigator, "navigator");
        }

        @Override // bg.c
        public void d(Navigator navigator, int i11) {
            Intrinsics.h(navigator, "navigator");
            Function0 function0 = this.f54681a;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f54676b = LazyKt.b(new Function0() { // from class: com.transsion.subroom.deeplink.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.j();
            }
        });
    }

    private final void e(Uri uri, Function0 function0) {
        ILaunchApi iLaunchApiF = f();
        String string = uri.toString();
        Intrinsics.g(string, "toString(...)");
        ILaunchApi.a.a(iLaunchApiF, string, null, 2, null).f(sg.d.f75349a.c()).subscribe(new b(uri, function0));
    }

    private final ILaunchApi f() {
        return (ILaunchApi) this.f54676b.getValue();
    }

    private final void g(Context context, Function0 function0) {
        try {
            Uri uri = this.f54677c;
            String queryParameter = uri != null ? uri.getQueryParameter(TmcConstants.EXTRA_BACK_TO_MINIAPP_DEEPLINK) : null;
            if (queryParameter != null && queryParameter.length() != 0 && context != null) {
                uj.a.f76760a.b(context, queryParameter);
                return;
            }
        } catch (Throwable unused) {
        }
        if (!com.transsion.baselib.helper.b.f43264a.e(this.f54677c)) {
            l(null, this.f54677c, context, function0);
            return;
        }
        Uri uri2 = this.f54677c;
        if (uri2 != null) {
            e(uri2, function0);
        }
    }

    static /* synthetic */ void h(d dVar, Context context, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        dVar.g(context, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILaunchApi j() {
        return (ILaunchApi) zg.c.f79414e.a().h(ILaunchApi.class);
    }

    private final boolean k() {
        for (Activity activity : l.f43359a.m()) {
            if ((activity instanceof SplashActivity) || (activity instanceof MainActivity)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(Uri uri, Uri uri2, Context context, Function0 function0) {
        String string;
        IFissionProvider iFissionProvider;
        String string2;
        String str = "";
        if (uri != null) {
            try {
                string = uri.toString();
                if (string == null) {
                    string = "";
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
            e11.printStackTrace();
            return;
        }
        string = "";
        if (uri2 != null && (string2 = uri2.toString()) != null) {
            str = string2;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("toLandingPage short url: ");
        sb2.append(string);
        sb2.append(" whole url ");
        sb2.append(str);
        if (uri2 != null) {
            try {
                String queryParameter = uri2.getQueryParameter("inviteCode");
                if (queryParameter != null && (iFissionProvider = (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0])) != null) {
                    iFissionProvider.a(queryParameter);
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
        h hVar = h.f43348a;
        hVar.i(string, str);
        yg.b.f79009a.b("X-UtmSource", hVar.b());
        Uri uriG = com.transsion.baselib.helper.b.f43264a.g(uri2);
        if (uriG != null) {
            k.m(uriG).z(BaseCommonActivity.EXTRA_SHOW_HOME_BUTTON, uriG.getBooleanQueryParameter(BaseCommonActivity.EXTRA_SHOW_HOME_BUTTON, false)).u(context, new c(function0));
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    private final void m(Context context, boolean z10) {
        Intent intent = new Intent(context, (Class<?>) SplashActivity.class);
        intent.putExtra("from", "deeplink");
        intent.putExtra("without_ad", z10);
        if (!(context instanceof Activity)) {
            intent.addFlags(ASTNode.DEOP);
        }
        context.startActivity(intent);
    }

    public final void i(Context context, Uri uri, Function0 onArrival) {
        Intrinsics.h(context, "context");
        Intrinsics.h(uri, "uri");
        Intrinsics.h(onArrival, "onArrival");
        boolean booleanQueryParameter = uri.getBooleanQueryParameter("withoutMain", false);
        boolean booleanQueryParameter2 = uri.getBooleanQueryParameter("withoutAd", false);
        com.transsion.subroom.deeplink.b.f54673a.b(uri.getBooleanQueryParameter("skipTwiceBack", false));
        h.f43348a.k(uri);
        this.f54677c = uri;
        if (booleanQueryParameter2) {
            hi.b.f64466a.b();
        }
        if (!k()) {
            g(context, onArrival);
        } else {
            if (booleanQueryParameter) {
                g(context, onArrival);
                return;
            }
            b().registerActivityLifecycleCallbacks(this);
            m(context, booleanQueryParameter2);
            onArrival.invoke();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity p11, Bundle bundle) {
        Intrinsics.h(p11, "p0");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity p11) {
        Intrinsics.h(p11, "p0");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity p11) {
        Intrinsics.h(p11, "p0");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity p11) {
        Intrinsics.h(p11, "p0");
        try {
            if (p11 instanceof MainActivity) {
                b().unregisterActivityLifecycleCallbacks(this);
                h(this, p11, null, 2, null);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity p11, Bundle p12) {
        Intrinsics.h(p11, "p0");
        Intrinsics.h(p12, "p1");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity p11) {
        Intrinsics.h(p11, "p0");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity p11) {
        Intrinsics.h(p11, "p0");
    }
}
