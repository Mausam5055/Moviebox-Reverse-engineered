package com.transsion.commercialization.task;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.bean.lottery.LotteryUserInfoEntity;
import com.transsion.commercialization.task.treasure.CheckLotteryLoadingDialog;
import com.transsion.commercialization.task.treasure.TreasureStyleADialog;
import com.transsion.commercializationapi.ITaskCenterApi;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.OpType;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class TaskCenterProvider implements ITaskCenterApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f43883a = LazyKt.b(new Function0() { // from class: com.transsion.commercialization.task.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TaskCenterProvider.l();
        }
    });

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements zm.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ok.b f43885b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ MemberSceneType f43886c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f43887d;

        a(ok.b bVar, MemberSceneType memberSceneType, String str) {
            this.f43885b = bVar;
            this.f43886c = memberSceneType;
            this.f43887d = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit h(TaskCenterProvider taskCenterProvider, MemberSceneType memberSceneType, Object obj) {
            ok.c.f71034a.a(taskCenterProvider.j() + " --> checkMemberRights() --> sceneType = " + memberSceneType + " --> success");
            return Unit.f67061a;
        }

        @Override // zm.a
        public void a(MemberCheckResult memberCheckResult) {
            TaskCenterProvider.this.m(this.f43885b, memberCheckResult);
        }

        @Override // zm.a
        public void b(MemberCheckResult memberCheckResult) {
            new DownloadInterceptAdHelper(this.f43885b, memberCheckResult, this.f43887d, false, 8, null).h();
        }

        @Override // zm.a
        public void c(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.g(this, memberCheckResult);
            new TreasureStyleADialog().z0(memberCheckResult).x0(this.f43887d).A0(this.f43886c).y0(this.f43885b).k0(com.blankj.utilcode.util.a.b(), "TreasureStyleADialog");
        }

        @Override // zm.a
        public void d(MemberCheckResult memberCheckResult) {
            new DownloadInterceptAdHelper(this.f43885b, memberCheckResult, this.f43887d, false, 8, null).h();
        }

        @Override // zm.a
        public void e() {
            this.f43885b.onSuccess();
            ok.c.f71034a.a(TaskCenterProvider.this.j() + " --> checkMemberRights() --> passed() --> 会员权益通过验证 --> 继续下载任务");
            IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            if (iMemberApi != null) {
                OpType opType = OpType.OP_DOWNLOAD;
                final TaskCenterProvider taskCenterProvider = TaskCenterProvider.this;
                final MemberSceneType memberSceneType = this.f43886c;
                iMemberApi.n(opType, new Function1() { // from class: com.transsion.commercialization.task.p
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return TaskCenterProvider.a.h(taskCenterProvider, memberSceneType, obj);
                    }
                });
            }
        }

        @Override // zm.a
        public void f(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.a(this, memberCheckResult);
            ok.c.f71034a.b(TaskCenterProvider.this.j() + " --> triggerDownload() --> showCheckMemberRights() --> notImplement() --> 当前类型没有实现");
        }

        @Override // zm.a
        public void onFail(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            zm.a.C0979a.b(this, errorMsg);
            ok.c.f71034a.b(TaskCenterProvider.this.j() + " --> checkMemberRights() --> showCheckMemberRightsDialog() --> " + errorMsg);
            this.f43885b.onFail();
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b implements zm.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ok.b f43889b;

        b(ok.b bVar) {
            this.f43889b = bVar;
        }

        @Override // zm.b
        public void a() {
            ok.c.f71034a.a(TaskCenterProvider.this.j() + " --> showMemberPage() --> checkMember() --> onFailed() --> 开通会员失败");
            ok.b bVar = this.f43889b;
            if (bVar != null) {
                bVar.onFail();
            }
        }

        @Override // zm.b
        public void onSuccess() {
            ok.c.f71034a.a(TaskCenterProvider.this.j() + " --> showMemberPage() --> checkMember() --> onSuccess() --> 开通会员成功，直接下载不需要做任务了");
            ok.b bVar = this.f43889b;
            if (bVar != null) {
                bVar.onSuccess();
            }
        }
    }

    private final void i(ok.b bVar, Integer num, String str, MemberSceneType memberSceneType) {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.z(memberSceneType, num, new a(bVar, memberSceneType, str));
        }
    }

    private final com.transsion.commercialization.task.treasure.b k() {
        return (com.transsion.commercialization.task.treasure.b) this.f43883a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.commercialization.task.treasure.b l() {
        return (com.transsion.commercialization.task.treasure.b) zg.c.f79414e.a().h(com.transsion.commercialization.task.treasure.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(ok.b bVar, MemberCheckResult memberCheckResult) {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.w(com.blankj.utilcode.util.a.b(), MemberSource.SOURCE_OTHER_DOWNLOAD_DIALOG, memberCheckResult, new b(bVar));
        }
    }

    @Override // com.transsion.commercializationapi.ITaskCenterApi
    public Object a(String str, String str2, boolean z10, Continuation continuation) {
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB != null) {
            new CheckLotteryLoadingDialog().x0(str, str2, z10).k0(activityB, "CheckLotteryLoadingDialog");
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.commercializationapi.ITaskCenterApi
    public void b(FragmentActivity fragmentActivity, Function1 function1) {
        new MemberPageVideoTaskDialog().t0(function1).k0(fragmentActivity, "MemberPageVideoTaskDialog");
    }

    @Override // com.transsion.commercializationapi.ITaskCenterApi
    public void c(ok.b bVar) {
        new DownloadInterceptAdHelper(bVar, null, null, true, 6, null).h();
    }

    @Override // com.transsion.commercializationapi.ITaskCenterApi
    public void d(String genre, MemberCheckResult memberCheckResult, ok.b bVar) {
        Intrinsics.h(genre, "genre");
        new TreasureStyleADialog().z0(memberCheckResult).x0(genre).A0(MemberSceneType.SCENE_MULTIDL).y0(bVar).k0(com.blankj.utilcode.util.a.b(), "TreasureStyleADialog");
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override // com.transsion.commercializationapi.ITaskCenterApi
    public Object e(Continuation continuation) throws Throwable {
        TaskCenterProvider$getLotteryUserInfoEntity$1 taskCenterProvider$getLotteryUserInfoEntity$1;
        Object objM454constructorimpl;
        if (continuation instanceof TaskCenterProvider$getLotteryUserInfoEntity$1) {
            taskCenterProvider$getLotteryUserInfoEntity$1 = (TaskCenterProvider$getLotteryUserInfoEntity$1) continuation;
            int i11 = taskCenterProvider$getLotteryUserInfoEntity$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                taskCenterProvider$getLotteryUserInfoEntity$1.label = i11 - Integer.MIN_VALUE;
            } else {
                taskCenterProvider$getLotteryUserInfoEntity$1 = new TaskCenterProvider$getLotteryUserInfoEntity$1(this, continuation);
            }
        } else {
            taskCenterProvider$getLotteryUserInfoEntity$1 = new TaskCenterProvider$getLotteryUserInfoEntity$1(this, continuation);
        }
        TaskCenterProvider$getLotteryUserInfoEntity$1 taskCenterProvider$getLotteryUserInfoEntity$2 = taskCenterProvider$getLotteryUserInfoEntity$1;
        Object objB = taskCenterProvider$getLotteryUserInfoEntity$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = taskCenterProvider$getLotteryUserInfoEntity$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                com.transsion.commercialization.task.treasure.b bVarK = k();
                taskCenterProvider$getLotteryUserInfoEntity$2.label = 1;
                objB = com.transsion.commercialization.task.treasure.b.a.b(bVarK, null, null, taskCenterProvider$getLotteryUserInfoEntity$2, 3, null);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            BaseDto baseDto = (BaseDto) objB;
            objM454constructorimpl = Result.m454constructorimpl(baseDto != null ? (LotteryUserInfoEntity) baseDto.getData() : null);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return objM454constructorimpl;
        }
        ok.c.f71034a.b(j() + " --> getLotteryUserInfoEntity() --> it = " + thM457exceptionOrNullimpl);
        return null;
    }

    @Override // com.transsion.commercializationapi.ITaskCenterApi
    public void f(Integer num, String str, ok.b listener, MemberSceneType sceneType) {
        Intrinsics.h(listener, "listener");
        Intrinsics.h(sceneType, "sceneType");
        ok.c.f71034a.b(j() + " --> interception() --> resolution = " + num + " -- genre = " + str + " -- sceneType = " + sceneType.getValue());
        i(listener, num, str, sceneType);
    }

    public final String j() {
        String simpleName = TaskCenterProvider.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }
}
