package com.transsion.member;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.member.dialog.ClaimMemberDialog;
import com.transsion.memberapi.GlobalTaskInfo;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberAdTaskInfo;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberRemindData;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.OpType;
import com.transsion.memberapi.TaskRewards;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.j1;

/* JADX INFO: loaded from: classes.dex */
public final class MemberProvider implements IMemberApi {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile MemberDetail f46341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile MemberTaskInfo f46342c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ClaimMemberDialog f46346g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f46340a = LazyKt.b(new Function0() { // from class: com.transsion.member.o0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MemberProvider.Y();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.coroutines.flow.y0 f46343d = j1.a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlinx.coroutines.flow.y0 f46344e = j1.a(Boolean.FALSE);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f46345f = "";

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function2 f46347d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Function1 f46348e;

        a(Function2 function2, Function1 function1) {
            this.f46347d = function2;
            this.f46348e = function1;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("claimTaskReward error:" + str2);
            Function2 function2 = this.f46347d;
            if (function2 != null) {
                function2.invoke(str, str2);
            }
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(TaskRewards taskRewards) {
            com.transsion.member.a.f46406a.a("claimTaskReward success");
            Function1 function1 = this.f46348e;
            if (function1 != null) {
                function1.invoke(taskRewards);
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("fetchGlobalTasks failed, code: " + str + ", message: " + str2);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(GlobalTaskInfo globalTaskInfo) {
            super.c(globalTaskInfo);
            if (globalTaskInfo == null) {
                com.transsion.member.a.f46406a.b("fetchGlobalTasks data error");
                return;
            }
            com.transsion.member.a.f46406a.a("fetchGlobalTasks succeed " + globalTaskInfo.getTaskInfo());
            MemberProvider.this.f46343d.setValue(globalTaskInfo.getTaskInfo());
            MemberProvider.this.f46344e.setValue(Boolean.valueOf(globalTaskInfo.getTaskInfo() != null));
            xm.k.f78381a.T(globalTaskInfo.getGlobalTaskConf());
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    static final class c implements lz.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f46350a = new c();

        c() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class d extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ zm.c f46351d;

        d(zm.c cVar) {
            this.f46351d = cVar;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("fetchMemberAdTaskInfo onFailure:" + str + ", " + str2);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberAdTaskInfo memberAdTaskInfo) {
            super.c(memberAdTaskInfo);
            com.transsion.member.a.f46406a.b("fetchMemberAdTaskInfo onSuccess:" + memberAdTaskInfo);
            zm.c cVar = this.f46351d;
            if (cVar != null) {
                cVar.a(memberAdTaskInfo, false);
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class e extends sg.a {
        e() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("Fetch member detail failed " + str + ", " + str2);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberDetail memberDetail) {
            super.c(memberDetail);
            if (memberDetail == null) {
                com.transsion.member.a.f46406a.b("Fetch member detail failed");
                return;
            }
            com.transsion.member.a.f46406a.a("Fetch member detail succeed " + memberDetail);
            MemberProvider.this.f46341b = memberDetail;
            c0.f46429a.b().putString("MEMBER_JSON", com.blankj.utilcode.util.o.j(MemberProvider.this.f46341b));
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class f extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function1 f46353d;

        f(Function1 function1) {
            this.f46353d = function1;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("Fetch member remind failed " + str + ", " + str2);
            this.f46353d.invoke(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(List list) {
            super.c(list);
            List list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                this.f46353d.invoke(list.get(0));
            } else {
                this.f46353d.invoke(null);
                com.transsion.member.a.f46406a.b("Fetch member remind failed");
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    static final class g implements lz.f {
        g() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            MemberTaskInfo memberTaskInfo = (MemberTaskInfo) it.getData();
            if (memberTaskInfo != null) {
                MemberProvider memberProvider = MemberProvider.this;
                c0.f46429a.b().putString("MEMBER_TASK_JSON", com.blankj.utilcode.util.o.j(memberTaskInfo));
                memberProvider.f46342c = memberTaskInfo;
                memberProvider.f46345f = memberProvider.W();
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class h extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ zm.c f46356e;

        h(zm.c cVar) {
            this.f46356e = cVar;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("MemberProvider --> fetchMemberTaskInfo onFailure:" + str + ", " + str2);
            xm.k.f78381a.S(MemberProvider.this.f46342c);
            zm.c cVar = this.f46356e;
            if (cVar != null) {
                cVar.b(MemberProvider.this.f46342c, true);
            }
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberTaskInfo memberTaskInfo) {
            super.c(memberTaskInfo);
            com.transsion.member.a.f46406a.b("MemberProvider --> fetchMemberTaskInfo onSuccess:" + memberTaskInfo);
            xm.k.f78381a.S(memberTaskInfo);
            zm.c cVar = this.f46356e;
            if (cVar != null) {
                cVar.b(memberTaskInfo, false);
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class i extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function1 f46357d;

        i(Function1 function1) {
            this.f46357d = function1;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("Upload operation stat failed " + str + ", " + str2);
            Function1 function1 = this.f46357d;
            if (function1 != null) {
                function1.invoke(null);
            }
        }

        @Override // sg.a
        public void c(Object obj) {
            super.c(obj);
            com.transsion.member.a.f46406a.b("Upload operation stat succeed " + obj);
            Function1 function1 = this.f46357d;
            if (function1 != null) {
                function1.invoke("ok");
            }
        }
    }

    public MemberProvider() {
        Object objM454constructorimpl;
        String string = c0.f46429a.b().getString("MEMBER_JSON", null);
        if (string == null || string.length() == 0) {
            this.f46341b = null;
        } else {
            try {
                this.f46341b = (MemberDetail) com.blankj.utilcode.util.o.d(string, MemberDetail.class);
            } catch (Exception unused) {
                this.f46341b = null;
            }
        }
        String string2 = c0.f46429a.b().getString("MEMBER_TASK_JSON", null);
        if (string2 != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl((MemberTaskInfo) com.blankj.utilcode.util.o.d(string2, MemberTaskInfo.class));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            this.f46342c = (MemberTaskInfo) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
        }
        if (B()) {
            ObserveLoginAction.f46400c.a().j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final native Unit T(Function2 function2, String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native Unit U(MemberProvider memberProvider, Function0 function0, TaskRewards taskRewards);

    /* JADX INFO: Access modifiers changed from: private */
    public final native String V();

    /* JADX INFO: Access modifiers changed from: private */
    public final native String W();

    private final native vm.a X();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native vm.a Y();

    @Override // com.transsion.memberapi.IMemberApi
    public native void A(Function2 function2, Function0 function0);

    @Override // com.transsion.memberapi.IMemberApi
    public native boolean B();

    @Override // com.transsion.memberapi.IMemberApi
    public native void C(Function0 function0);

    @Override // com.transsion.memberapi.IMemberApi
    public native int D();

    @Override // com.transsion.memberapi.IMemberApi
    public native void E(zm.e eVar);

    @Override // com.transsion.memberapi.IMemberApi
    public native boolean F(MemberRemindData memberRemindData);

    @Override // com.transsion.memberapi.IMemberApi
    public native void G();

    @Override // com.transsion.memberapi.IMemberApi
    public native void a(Activity activity, MemberSource memberSource, zm.b bVar, boolean z10, String str);

    @Override // com.transsion.memberapi.IMemberApi
    public native MemberDetail b();

    @Override // com.transsion.memberapi.IMemberApi
    public native boolean c();

    @Override // com.transsion.memberapi.IMemberApi
    public native i1 d();

    @Override // com.transsion.memberapi.IMemberApi
    public native Object e(MemberSceneType memberSceneType, Integer num, Function1 function1, Continuation continuation);

    @Override // com.transsion.memberapi.IMemberApi
    public native boolean f();

    @Override // com.transsion.memberapi.IMemberApi
    public native boolean g();

    @Override // com.transsion.memberapi.IMemberApi
    public native void h();

    @Override // com.transsion.memberapi.IMemberApi
    public native void i();

    @Override // com.transsion.memberapi.IMemberApi
    public native boolean j(Fragment fragment);

    @Override // com.transsion.memberapi.IMemberApi
    public native void k(MemberDetail memberDetail);

    @Override // com.transsion.memberapi.IMemberApi
    public native void l(MemberTaskItem memberTaskItem, Function2 function2, Function1 function1);

    @Override // com.transsion.memberapi.IMemberApi
    public native void m(Function1 function1);

    @Override // com.transsion.memberapi.IMemberApi
    public native void n(OpType opType, Function1 function1);

    @Override // com.transsion.memberapi.IMemberApi
    public native void o(Integer num, zm.a aVar);

    @Override // com.transsion.memberapi.IMemberApi
    public native void p();

    @Override // com.transsion.memberapi.IMemberApi
    public native void q();

    @Override // com.transsion.memberapi.IMemberApi
    public native Fragment r();

    @Override // com.transsion.memberapi.IMemberApi
    public native void s(zm.c cVar);

    @Override // com.transsion.memberapi.IMemberApi
    public native void t(zm.e eVar);

    @Override // com.transsion.memberapi.IMemberApi
    public native void u(zm.c cVar);

    @Override // com.transsion.memberapi.IMemberApi
    public native void v();

    @Override // com.transsion.memberapi.IMemberApi
    public native void w(Activity activity, MemberSource memberSource, MemberCheckResult memberCheckResult, zm.b bVar);

    @Override // com.transsion.memberapi.IMemberApi
    public native void x(float f11);

    @Override // com.transsion.memberapi.IMemberApi
    public native void y(Activity activity, String str, String str2, zm.k kVar);

    @Override // com.transsion.memberapi.IMemberApi
    public native void z(MemberSceneType memberSceneType, Integer num, zm.a aVar);
}
