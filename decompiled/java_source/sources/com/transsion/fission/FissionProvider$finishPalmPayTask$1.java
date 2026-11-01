package com.transsion.fission;

import android.app.Activity;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.bean.HomePopupEntity;
import com.transsion.bean.HomePopupInfo;
import com.transsion.commercializationapi.ICommonDialogApi;
import com.transsion.fission.activity.bean.PalmPayTaskInfo;
import com.transsion.fission.activity.bean.PalmPayTaskResult;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.fission.FissionProvider$finishPalmPayTask$1", f = "FissionProvider.kt", l = {Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE}, m = "invokeSuspend")
final class FissionProvider$finishPalmPayTask$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $subjectType;
    int label;
    final /* synthetic */ FissionProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FissionProvider$finishPalmPayTask$1(int i11, FissionProvider fissionProvider, Continuation<? super FissionProvider$finishPalmPayTask$1> continuation) {
        super(2, continuation);
        this.$subjectType = i11;
        this.this$0 = fissionProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(HomePopupEntity homePopupEntity) {
        ICommonDialogApi iCommonDialogApi = (ICommonDialogApi) TheRouter.d(ICommonDialogApi.class, new Object[0]);
        if (iCommonDialogApi != null) {
            iCommonDialogApi.b(homePopupEntity, new Function1() { // from class: com.transsion.fission.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FissionProvider$finishPalmPayTask$1.h(((Boolean) obj).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(boolean z10) {
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FissionProvider$finishPalmPayTask$1(this.$subjectType, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FissionProvider$finishPalmPayTask$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0065 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:5:0x000f, B:17:0x005f, B:20:0x0065, B:22:0x006b, B:24:0x0073, B:26:0x0079, B:28:0x0081, B:33:0x008b, B:35:0x0095, B:37:0x00a8, B:39:0x00b0, B:42:0x00b9, B:44:0x00db, B:36:0x009f, B:45:0x00e3, B:12:0x0027, B:14:0x0050), top: B:54:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:21:0x006a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0081 A[Catch: all -> 0x0015, TRY_LEAVE, TryCatch #0 {all -> 0x0015, blocks: (B:5:0x000f, B:17:0x005f, B:20:0x0065, B:22:0x006b, B:24:0x0073, B:26:0x0079, B:28:0x0081, B:33:0x008b, B:35:0x0095, B:37:0x00a8, B:39:0x00b0, B:42:0x00b9, B:44:0x00db, B:36:0x009f, B:45:0x00e3, B:12:0x0027, B:14:0x0050), top: B:54:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    /* JADX WARN: Code duplicated, block: B:36:0x009f A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:5:0x000f, B:17:0x005f, B:20:0x0065, B:22:0x006b, B:24:0x0073, B:26:0x0079, B:28:0x0081, B:33:0x008b, B:35:0x0095, B:37:0x00a8, B:39:0x00b0, B:42:0x00b9, B:44:0x00db, B:36:0x009f, B:45:0x00e3, B:12:0x0027, B:14:0x0050), top: B:54:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00b0 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:5:0x000f, B:17:0x005f, B:20:0x0065, B:22:0x006b, B:24:0x0073, B:26:0x0079, B:28:0x0081, B:33:0x008b, B:35:0x0095, B:37:0x00a8, B:39:0x00b0, B:42:0x00b9, B:44:0x00db, B:36:0x009f, B:45:0x00e3, B:12:0x0027, B:14:0x0050), top: B:54:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b9 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:5:0x000f, B:17:0x005f, B:20:0x0065, B:22:0x006b, B:24:0x0073, B:26:0x0079, B:28:0x0081, B:33:0x008b, B:35:0x0095, B:37:0x00a8, B:39:0x00b0, B:42:0x00b9, B:44:0x00db, B:36:0x009f, B:45:0x00e3, B:12:0x0027, B:14:0x0050), top: B:54:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00db A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:5:0x000f, B:17:0x005f, B:20:0x0065, B:22:0x006b, B:24:0x0073, B:26:0x0079, B:28:0x0081, B:33:0x008b, B:35:0x0095, B:37:0x00a8, B:39:0x00b0, B:42:0x00b9, B:44:0x00db, B:36:0x009f, B:45:0x00e3, B:12:0x0027, B:14:0x0050), top: B:54:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00fb  */
    /* JADX WARN: Instruction removed from duplicated block: B:51:0x00fb, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        BaseDto baseDto;
        Object objA;
        String code;
        PalmPayTaskResult palmPayTaskResult;
        PalmPayTaskInfo taskInfo;
        PalmPayTaskResult palmPayTaskResult2;
        HomePopupInfo popup;
        final HomePopupEntity homePopupEntity;
        Activity activityB;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                int i12 = this.$subjectType;
                FissionProvider fissionProvider = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("subjectType", i12);
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string = jSONObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string, MediaType.INSTANCE.parse("application/json"));
                xk.b bVarL = fissionProvider.l();
                if (bVarL != null) {
                    String strA = vg.a.f77324a.a();
                    this.label = 1;
                    objA = bVarL.a(strA, requestBodyCreate, this);
                    if (objA == objF) {
                        return objF;
                    }
                } else {
                    baseDto = null;
                }
                if (baseDto != null) {
                    code = baseDto.getCode();
                } else {
                    code = null;
                }
                if (Intrinsics.c(code, "0") && baseDto.getData() != null) {
                    palmPayTaskResult = (PalmPayTaskResult) baseDto.getData();
                    if (palmPayTaskResult != null) {
                        taskInfo = palmPayTaskResult.getTaskInfo();
                    } else {
                        taskInfo = null;
                    }
                    if (taskInfo != null || taskInfo.getProgress() < taskInfo.getTotalProgress()) {
                        defpackage.c.f16958a.b().putBoolean("kv_task_is_finished", false);
                    } else {
                        defpackage.c.f16958a.b().putBoolean("kv_task_is_finished", true);
                    }
                    palmPayTaskResult2 = (PalmPayTaskResult) baseDto.getData();
                    if (palmPayTaskResult2 != null) {
                        popup = palmPayTaskResult2.getPopup();
                    } else {
                        popup = null;
                    }
                    if (popup != null) {
                        homePopupEntity = new HomePopupEntity(popup, new HomePopupInfo(0L, "", 0, "", 0, "", ""), 0, 0L);
                        activityB = com.blankj.utilcode.util.a.b();
                        if (activityB != null) {
                            activityB.runOnUiThread(new Runnable() { // from class: com.transsion.fission.n
                                @Override // java.lang.Runnable
                                public final void run() {
                                    FissionProvider$finishPalmPayTask$1.g(homePopupEntity);
                                }
                            });
                        }
                    }
                }
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    lg.a.C0828a.m(lg.a.f68839a, "finishPalmPayTask() ---> getOrElse() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            objA = obj;
            baseDto = (BaseDto) objA;
            if (baseDto != null) {
                code = baseDto.getCode();
            } else {
                code = null;
            }
            if (Intrinsics.c(code, "0")) {
                palmPayTaskResult = (PalmPayTaskResult) baseDto.getData();
                if (palmPayTaskResult != null) {
                    taskInfo = palmPayTaskResult.getTaskInfo();
                } else {
                    taskInfo = null;
                }
                if (taskInfo != null) {
                    defpackage.c.f16958a.b().putBoolean("kv_task_is_finished", false);
                } else {
                    defpackage.c.f16958a.b().putBoolean("kv_task_is_finished", false);
                }
                palmPayTaskResult2 = (PalmPayTaskResult) baseDto.getData();
                if (palmPayTaskResult2 != null) {
                    popup = palmPayTaskResult2.getPopup();
                } else {
                    popup = null;
                }
                if (popup != null) {
                    homePopupEntity = new HomePopupEntity(popup, new HomePopupInfo(0L, "", 0, "", 0, "", ""), 0, 0L);
                    activityB = com.blankj.utilcode.util.a.b();
                    if (activityB != null) {
                        activityB.runOnUiThread(new Runnable() { // from class: com.transsion.fission.n
                            @Override // java.lang.Runnable
                            public final void run() {
                                FissionProvider$finishPalmPayTask$1.g(homePopupEntity);
                            }
                        });
                    }
                }
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.m(lg.a.f68839a, "finishPalmPayTask() ---> getOrElse() --> it = " + thM457exceptionOrNullimpl, false, 2, null);
        }
        return Unit.f67061a;
    }
}
