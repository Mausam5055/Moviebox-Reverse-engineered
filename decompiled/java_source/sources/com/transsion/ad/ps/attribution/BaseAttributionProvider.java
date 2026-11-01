package com.transsion.ad.ps.attribution;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.AttributionPoint;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public class BaseAttributionProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f42182b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f42183a = LazyKt.b(new Function0() { // from class: com.transsion.ad.ps.attribution.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BaseAttributionProvider.i();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.ad.db.pslink.a f() {
        return (com.transsion.ad.db.pslink.a) this.f42183a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.ad.db.pslink.a i() {
        MbAdDatabase.Companion companion = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).x0();
    }

    protected final Object c(AttributionPoint attributionPoint, Continuation continuation) {
        Object objG = i.g(y0.b(), new BaseAttributionProvider$delete$2(this, attributionPoint, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    protected final Object d(Continuation continuation) {
        MbAdDatabase.Companion companion = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).x0().d(System.currentTimeMillis(), 5000L, continuation);
    }

    protected final String e() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    protected final Object g(String str, AttributionPoint.AttributionType attributionType, String str2, Continuation continuation) {
        Object objG = i.g(y0.b(), new BaseAttributionProvider$insert$2(this, str2, str, attributionType, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    protected final Object h(String str, AttributionPoint.AttributionType attributionType, String str2, Continuation continuation) {
        return i.g(y0.b(), new BaseAttributionProvider$isAttributionPointExists$2(this, str, attributionType, str2, null), continuation);
    }

    protected final Object j(AttributionPoint attributionPoint, Continuation continuation) {
        Object objG = i.g(y0.b(), new BaseAttributionProvider$update$2(attributionPoint, this, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }
}
