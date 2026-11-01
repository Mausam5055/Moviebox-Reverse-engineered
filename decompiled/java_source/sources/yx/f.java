package yx;

import com.therouter.TheRouter;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberAdTaskInfo;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.TaskRewards;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f79091a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f79092b = LazyKt.b(new Function0() { // from class: yx.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.o();
        }
    });

    public static final class a implements zm.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1 f79093a;

        a(Function1 function1) {
            this.f79093a = function1;
        }

        @Override // zm.c
        public void a(MemberAdTaskInfo memberAdTaskInfo, boolean z10) {
            MemberTaskItem memberTaskItem;
            List<MemberTaskItem> list;
            Object next;
            if (memberAdTaskInfo == null || (list = memberAdTaskInfo.getList()) == null) {
                memberTaskItem = null;
            } else {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
                    if (taskSubType != null && taskSubType.intValue() == 19) {
                        break;
                    }
                }
                memberTaskItem = (MemberTaskItem) next;
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            f fVar = f.f79091a;
            lg.a.C0828a.g(c0828a, fVar.l() + " --> fetchAdTaskInfo() --> 获取任务列表 -- taskId = " + (memberTaskItem != null ? memberTaskItem.getTaskId() : null), false, 2, null);
            if (memberTaskItem != null) {
                String taskId = memberTaskItem.getTaskId();
                if (taskId == null) {
                    taskId = "";
                }
                fVar.h(taskId, this.f79093a);
                return;
            }
            Function1 function1 = this.f79093a;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
        }

        @Override // zm.c
        public void b(MemberTaskInfo memberTaskInfo, boolean z10) {
            zm.c.a.b(this, memberTaskInfo, z10);
        }
    }

    private f() {
    }

    private final void g(Function1 function1) {
        IMemberApi iMemberApiM = m();
        if (iMemberApiM != null) {
            iMemberApiM.u(new a(function1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str, final Function1 function1) {
        MemberTaskItem memberTaskItem = new MemberTaskItem(str, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16777214, null);
        lg.a.C0828a.g(lg.a.f68839a, l() + " --> fetchAdTaskReward() --> 领取激活广告任务奖励 -- taskId = " + str, false, 2, null);
        IMemberApi iMemberApiM = m();
        if (iMemberApiM != null) {
            iMemberApiM.l(memberTaskItem, new Function2() { // from class: yx.c
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return f.i(function1, (String) obj, (String) obj2);
                }
            }, new Function1() { // from class: yx.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return f.k(function1, (TaskRewards) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(final Function1 function1, String str, String str2) {
        new Function0() { // from class: yx.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.j(function1);
            }
        };
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(Function1 function1) {
        if (function1 == null) {
            return null;
        }
        function1.invoke(Boolean.FALSE);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(Function1 function1, TaskRewards taskRewards) {
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String l() {
        String simpleName = f.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final IMemberApi m() {
        return (IMemberApi) f79092b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMemberApi o() {
        return (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
    }

    public final void n(Function1 function1) {
        g(function1);
    }
}
