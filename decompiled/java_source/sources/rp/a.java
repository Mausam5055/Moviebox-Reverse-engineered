package rp;

import android.content.Context;
import com.transsion.mpush.api.IPushFeature;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements IPushFeature {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0907a f74594a = new C0907a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile b f74595b;

    /* JADX INFO: renamed from: rp.a$a, reason: collision with other inner class name */
    public static final class C0907a {
        private C0907a() {
        }

        public /* synthetic */ C0907a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final b b() {
            return a.f74595b;
        }

        public final void c(b bVar) {
            a.f74595b = bVar;
        }
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void destroy() {
        f74594a.c(null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void init(Context context) {
        Intrinsics.h(context, "context");
        lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【下载推送】初始化", false, 4, null);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onMessageReceive(String str, Object obj) {
        IPushFeature.DefaultImpls.onMessageReceive(this, str, obj);
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public void onTrigger(int i11) {
        b bVarB;
        Object objM454constructorimpl;
        if (i11 == 4 && (bVarB = f74594a.b()) != null) {
            lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "【下载推送】TIMER 触发，执行下载通知检查", false, 4, null);
            try {
                Result.Companion companion = Result.INSTANCE;
                bVarB.a();
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, "PushRegisterManager", "【下载推送】timeTask 执行异常：" + thM457exceptionOrNullimpl, false, 4, null);
            }
        }
    }

    @Override // com.transsion.mpush.api.IPushFeature
    public boolean refreshMessage(Object obj) {
        return IPushFeature.DefaultImpls.refreshMessage(this, obj);
    }
}
