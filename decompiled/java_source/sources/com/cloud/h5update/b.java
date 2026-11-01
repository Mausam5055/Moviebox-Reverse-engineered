package com.cloud.h5update;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.h5update.impl.UpdateChecker;
import com.cloud.h5update.impl.UpdateParser;
import com.cloud.h5update.utils.l;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import t6.c;
import t6.d;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C0292b f21252g = new C0292b(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static UpdateEntity f21253h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference f21254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f21255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map f21256c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f21257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t6.a f21258e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f21259f;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f21260a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f21261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Map f21262c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Map f21263d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d f21264e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private t6.a f21265f;

        public a(Context context) {
            Intrinsics.h(context, "context");
            this.f21260a = context;
            this.f21264e = new UpdateParser();
            this.f21265f = new UpdateChecker();
        }

        private final b a() {
            l.f21309a.q(this.f21260a, "[UpdateManager.Builder] : context == null");
            b bVar = new b(null);
            bVar.f21254a = new WeakReference(this.f21260a);
            bVar.f21255b = this.f21261b;
            bVar.f21256c = this.f21262c;
            bVar.f21257d = this.f21263d;
            bVar.f21258e = this.f21265f;
            bVar.f21259f = this.f21264e;
            return bVar;
        }

        public final void b() {
            String str;
            String str2 = this.f21261b;
            if (str2 == null || StringsKt.q0(str2)) {
                com.cloud.h5update.a aVar = com.cloud.h5update.a.f21250a;
                if (aVar.a() == 3) {
                    str = "https://api-test.byte-app.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN";
                } else {
                    str = aVar.a() == 2 ? "https://app-manage-api-static-pre.shalltry.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN" : "https://app-manage-api-static.shalltry.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN";
                }
                this.f21261b = str;
            }
            a().k();
        }

        public final a c(t6.a updateChecker) {
            Intrinsics.h(updateChecker, "updateChecker");
            this.f21265f = updateChecker;
            return this;
        }
    }

    /* JADX INFO: renamed from: com.cloud.h5update.b$b, reason: collision with other inner class name */
    public static final class C0292b {
        private C0292b() {
        }

        public /* synthetic */ C0292b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UpdateEntity a() {
            return b.f21253h;
        }
    }

    private b() {
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final void j() {
        t6.a aVar;
        if (l.f21309a.b()) {
            i();
            return;
        }
        String str = this.f21255b;
        if (str == null || (aVar = this.f21258e) == null) {
            return;
        }
        aVar.noNetWork(str, this);
    }

    @Override // t6.c
    public UpdateEntity a(String json) {
        Intrinsics.h(json, "json");
        d dVar = this.f21259f;
        if (dVar == null) {
            return null;
        }
        Intrinsics.e(dVar);
        f21253h = dVar.a(json);
        TH5Update.a aVar = TH5Update.f21238c;
        if (aVar.j() != null) {
            t6.b bVarJ = aVar.j();
            Intrinsics.e(bVarJ);
            if (!bVarJ.onGetEntity(f21253h)) {
                return null;
            }
        }
        return f21253h;
    }

    public void i() {
        if (TextUtils.isEmpty(this.f21255b)) {
            throw new NullPointerException("[UpdateManager] : mUpdateUrl 不能为空");
        }
        t6.a aVar = this.f21258e;
        if (aVar == null) {
            return;
        }
        Intrinsics.e(aVar);
        String str = this.f21255b;
        Intrinsics.e(str);
        aVar.checkVersion(str, this.f21256c, this.f21257d, this);
    }

    public void k() {
        j();
    }
}
