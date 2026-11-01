package com.transsion.usercenter.setting.labelsfeedback.sender;

import ak.a0;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.c0;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.f;
import androidx.work.v;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tencent.mmkv.MMKV;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;

/* JADX INFO: loaded from: classes.dex */
public final class FBSender {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FBSender f57459a = new FBSender();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f57460b = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.labelsfeedback.sender.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FBSender.i();
        }
    });

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a implements c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LiveData f57461a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FBSender f57462b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f57463c;

        /* JADX INFO: renamed from: com.transsion.usercenter.setting.labelsfeedback.sender.FBSender$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0688a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f57464a;

            static {
                int[] iArr = new int[WorkInfo.State.values().length];
                try {
                    iArr[WorkInfo.State.SUCCEEDED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[WorkInfo.State.FAILED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[WorkInfo.State.CANCELLED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f57464a = iArr;
            }
        }

        a(LiveData liveData, FBSender fBSender, String str) {
            this.f57461a = liveData;
            this.f57462b = fBSender;
            this.f57463c = str;
        }

        @Override // androidx.p009lifecycle.c0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(WorkInfo workInfo) {
            WorkInfo.State stateA = workInfo != null ? workInfo.a() : null;
            int i11 = stateA == null ? -1 : C0688a.f57464a[stateA.ordinal()];
            if (i11 == 1) {
                uh.b.f76753a.d(R$string.feedback_tips_suceess);
                this.f57461a.o(this);
                this.f57462b.n(null);
            } else if (i11 == 2 || i11 == 3) {
                uh.b.f76753a.d(R$string.feedback_tips_failed);
                this.f57461a.o(this);
                this.f57462b.n(this.f57463c);
            }
        }
    }

    private FBSender() {
    }

    private final String e() {
        return g().k("key_failed_json");
    }

    private final MMKV g() {
        return (MMKV) f57460b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str, Throwable th2) {
        if (th2 != null) {
            a0.f627a.g(th2);
            lg.a.f68839a.x("FBSender", "Failed to schedule feedback work: " + th2.getMessage(), false);
        }
        n(str);
        uh.b.f76753a.d(R$string.upload_failed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV i() {
        MMKV mmkvI = MMKV.I("feedback_mmkv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(String str, Application application) {
        Object objM454constructorimpl;
        if (!a0.f627a.a(application)) {
            h(str, null);
            return;
        }
        v.a aVar = new v.a(FbSenderWorker.class);
        Pair[] pairArr = {TuplesKt.a("key_work_data", str)};
        f.a aVar2 = new f.a();
        Pair pair = pairArr[0];
        aVar2.b((String) pair.getFirst(), pair.getSecond());
        aVar.l(aVar2.a());
        v vVar = (v) aVar.b();
        Context contextCreateDeviceProtectedStorageContext = Build.VERSION.SDK_INT >= 24 ? application.createDeviceProtectedStorageContext() : application;
        try {
            Result.Companion companion = Result.INSTANCE;
            WorkManager.a aVar3 = WorkManager.f15399a;
            Intrinsics.e(contextCreateDeviceProtectedStorageContext);
            WorkManager workManagerA = aVar3.a(contextCreateDeviceProtectedStorageContext);
            LiveData liveDataG = workManagerA.g(vVar.a());
            objM454constructorimpl = Result.m454constructorimpl(k.d(o0.a(y0.c()), null, null, new FBSender$sendJson$1$1(liveDataG, new a(liveDataG, this, str), workManagerA, vVar, application, new AtomicBoolean(false), this, str, null), 3, null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            f57459a.h(str, thM457exceptionOrNullimpl);
        }
    }

    private final void m(String str) {
        if (str == null) {
            g().remove("key_failed_json");
        } else {
            g().v("key_failed_json", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(String str) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            m(str);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.x("FBSender", "Failed to update feedback retry data: " + thM457exceptionOrNullimpl.getMessage(), false);
        }
    }

    public final FbDataModel f() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(e());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        String str = (String) objM454constructorimpl;
        if (str != null) {
            try {
                return (FbDataModel) o.d(str, FbDataModel.class);
            } catch (Exception e11) {
                String message = e11.getMessage();
                if (message == null) {
                    message = "unable to parse json";
                }
                Log.e(TmcConstants.MENU_KEY_FEEDBACK, message);
            }
        }
        return null;
    }

    public final void j(Application application) {
        Object objM454constructorimpl;
        Intrinsics.h(application, "application");
        if (m.f70474a.e()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(e());
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            String str = (String) objM454constructorimpl;
            if (str != null) {
                f57459a.l(str, application);
            }
        }
    }

    public final void k(FbDataModel model, Application application) {
        Intrinsics.h(model, "model");
        Intrinsics.h(application, "application");
        k.d(o0.a(y0.b()), null, null, new FBSender$send$1(model, application, null), 3, null);
    }
}
