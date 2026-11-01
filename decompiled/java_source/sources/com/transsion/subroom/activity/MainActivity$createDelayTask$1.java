package com.transsion.subroom.activity;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.usercenter.setting.labelsfeedback.sender.FBSender;
import com.transsion.usercenterapi.UpdateResultEvent;
import com.transsion.version.update.UpdateManager;
import com.transsnet.downloader.notification.DownloadNotificationUtils;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subroom.activity.MainActivity$createDelayTask$1", f = "MainActivity.kt", l = {1191, 1192, 1202}, m = "invokeSuspend")
@SourceDebugExtension
final class MainActivity$createDelayTask$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ MainActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivity$createDelayTask$1(MainActivity mainActivity, Continuation<? super MainActivity$createDelayTask$1> continuation) {
        super(2, continuation);
        this.this$0 = mainActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d() {
        DownloadNotificationUtils.f59506a.G();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivity$createDelayTask$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MainActivity$createDelayTask$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0058  */
    /* JADX WARN: Code duplicated, block: B:23:0x008d A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                ResultKt.b(obj);
                if (((Boolean) obj).booleanValue()) {
                    UpdateResultEvent updateResultEvent = new UpdateResultEvent(true);
                    FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                    String name = UpdateResultEvent.class.getName();
                    Intrinsics.g(name, "getName(...)");
                    flowEventBus.postEvent(name, updateResultEvent, 0L);
                    lg.a.C0828a.f(lg.a.f68839a, "update", "NeedUpdate", false, 4, null);
                }
                this.label = 3;
                if (u0.a(5000L, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            com.tn.lib.thread.b.f40868a.a(new Runnable() { // from class: com.transsion.subroom.activity.x
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity$createDelayTask$1.d();
                }
            });
            FBSender fBSender = FBSender.f57459a;
            Application application = this.this$0.getApplication();
            Intrinsics.g(application, "getApplication(...)");
            fBSender.j(application);
            vj.d dVar = vj.d.f77333a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            dVar.g(applicationA);
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        this.label = 1;
        if (u0.a(2000L, this) == objF) {
            return objF;
        }
        UpdateManager updateManagerA = UpdateManager.f57518f.a();
        MainActivity mainActivity = this.this$0;
        this.label = 2;
        obj = UpdateManager.j(updateManagerA, mainActivity, "main_page", "wefeed-mobile-bff", "", false, this, 16, null);
        if (obj == objF) {
            return objF;
        }
        if (((Boolean) obj).booleanValue()) {
            UpdateResultEvent updateResultEvent2 = new UpdateResultEvent(true);
            FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = UpdateResultEvent.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, updateResultEvent2, 0L);
            lg.a.C0828a.f(lg.a.f68839a, "update", "NeedUpdate", false, 4, null);
        }
        this.label = 3;
        if (u0.a(5000L, this) == objF) {
            return objF;
        }
        com.tn.lib.thread.b.f40868a.a(new Runnable() { // from class: com.transsion.subroom.activity.x
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity$createDelayTask$1.d();
            }
        });
        FBSender fBSender2 = FBSender.f57459a;
        Application application2 = this.this$0.getApplication();
        Intrinsics.g(application2, "getApplication(...)");
        fBSender2.j(application2);
        vj.d dVar2 = vj.d.f77333a;
        Application applicationA2 = Utils.a();
        Intrinsics.g(applicationA2, "getApp(...)");
        dVar2.g(applicationA2);
        return Unit.f67061a;
    }
}
