package yv;

import android.content.Context;
import bw.i;
import com.transsion.gslb.GslbSdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f79060d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile c f79061e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f79062a = new String[3];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f79063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f79064c;

    public c() {
        a();
    }

    public final void a() {
        if (f.f79067o.a().f79072d) {
            this.f79062a[0] = "https://test-upgrade-api.palmplaystore.com/";
        } else {
            this.f79062a[0] = "https://app-manage-api.shalltry.com/";
        }
    }

    public final void b(Context context) {
        Intrinsics.h(context, "context");
        this.f79063b = i.f16941b.a(context).a("KV_UPGRADE_GSLB_COUNTRY", "");
        GslbSdk.init(context, this.f79062a, new b(this, context));
    }
}
