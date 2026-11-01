package com.transsion.edcation;

import androidx.fragment.app.FragmentManager;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.edcation.bean.CourseListResp;
import com.transsion.edcation.dialog.InterestSelectDialog;
import com.transsion.moviedetailapi.bean.Subject;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.d1;
import kotlinx.coroutines.flow.j1;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.flow.y0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import lz.h;
import sg.d;

/* JADX INFO: loaded from: classes5.dex */
public final class CourseManager implements n0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static t1 f44093i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CourseManager f44085a = new CourseManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f44086b = LazyKt.b(new Function0() { // from class: com.transsion.edcation.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CourseManager.p();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f44087c = LazyKt.b(new Function0() { // from class: com.transsion.edcation.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(CourseManager.o());
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f44088d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final x0 f44089e = d1.b(0, 0, null, 7, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final y0 f44090f = j1.a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final y0 f44091g = j1.a(new ArrayList());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final x0 f44092h = d1.b(0, 0, null, 7, null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final CoroutineContext f44094j = kotlinx.coroutines.y0.b().plus(l2.b(null, 1, null));

    static final class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f44095a = new a();

        a() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m apply(Throwable it) {
            Intrinsics.h(it, "it");
            return j.l(it);
        }
    }

    private CourseManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final c l() {
        return (c) f44086b.getValue();
    }

    private final boolean n() {
        return ((Boolean) f44087c.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o() {
        return com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("edu_interest_dialog", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c p() {
        return (c) zg.c.f79414e.a().h(c.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(CourseBean courseBean) {
        t1 t1Var = f44093i;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        f44093i = k.d(this, null, null, new CourseManager$notifyCourse$1(courseBean, null), 3, null);
    }

    public static /* synthetic */ void s(CourseManager courseManager, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "1";
        }
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        courseManager.r(str, str2);
    }

    public static /* synthetic */ void v(CourseManager courseManager, Subject subject, Boolean bool, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bool = null;
        }
        courseManager.u(subject, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object x(CourseBean courseBean, Continuation continuation) throws Throwable {
        CourseManager$updateCourse$1 courseManager$updateCourse$1;
        CourseBean courseBean2;
        List list;
        Object next;
        if (continuation instanceof CourseManager$updateCourse$1) {
            courseManager$updateCourse$1 = (CourseManager$updateCourse$1) continuation;
            int i11 = courseManager$updateCourse$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                courseManager$updateCourse$1.label = i11 - Integer.MIN_VALUE;
            } else {
                courseManager$updateCourse$1 = new CourseManager$updateCourse$1(this, continuation);
            }
        } else {
            courseManager$updateCourse$1 = new CourseManager$updateCourse$1(this, continuation);
        }
        Object obj = courseManager$updateCourse$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = courseManager$updateCourse$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                list = (List) courseManager$updateCourse$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        List list2 = (List) f44091g.getValue();
        if (list2 != null) {
            Iterator it = list2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((CourseBean) next).getSubjectId(), courseBean.getSubjectId()));
            courseBean2 = (CourseBean) next;
        } else {
            courseBean2 = null;
        }
        if (courseBean2 != null) {
            Boxing.a(list2.remove(courseBean2));
        }
        if (courseBean.getSeenStatus() == 1 && list2 != null) {
            list2.add(0, courseBean);
        }
        y0 y0Var = f44091g;
        courseManager$updateCourse$1.L$0 = list2;
        courseManager$updateCourse$1.label = 1;
        if (y0Var.emit(list2, courseManager$updateCourse$1) == objF) {
            return objF;
        }
        list = list2;
        y0 y0Var2 = f44090f;
        CourseBean courseBean3 = list != null ? (CourseBean) CollectionsKt.k0(list) : null;
        courseManager$updateCourse$1.L$0 = null;
        courseManager$updateCourse$1.label = 2;
        if (y0Var2.emit(courseBean3, courseManager$updateCourse$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(List list, String str) {
        k.d(this, null, null, new CourseManager$updateCourseList$1(str, list, null), 3, null);
    }

    @Override // kotlinx.coroutines.n0
    public CoroutineContext getCoroutineContext() {
        return f44094j;
    }

    public final void h(FragmentManager fragmentManager) {
        Intrinsics.h(fragmentManager, "fragmentManager");
        if (n() && f44088d) {
            new InterestSelectDialog().show(fragmentManager, "InterestSelectDialog");
        }
    }

    public final y0 i() {
        return f44091g;
    }

    public final x0 j() {
        return f44092h;
    }

    public final x0 k() {
        return f44089e;
    }

    public final y0 m() {
        return f44090f;
    }

    public final void r(final String page, final String str) {
        Intrinsics.h(page, "page");
        c.a.b(l(), null, page, 0, 5, null).v(qz.a.c()).x(a.f44095a).f(d.f75349a.c()).subscribe(new sg.a() { // from class: com.transsion.edcation.CourseManager$refreshCourseList$2
            @Override // sg.a
            public void a(String str2, String str3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("error: ");
                sb2.append(str2);
                sb2.append(", msg:");
                sb2.append(str3);
            }

            @Override // sg.a
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public void c(CourseListResp courseListResp) {
                List<CourseBean> items;
                List<CourseBean> items2;
                super.c(courseListResp);
                List listU0 = null;
                Integer numValueOf = (courseListResp == null || (items2 = courseListResp.getItems()) == null) ? null : Integer.valueOf(items2.size());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("list is empty: ");
                sb2.append(numValueOf);
                CourseManager courseManager = CourseManager.f44085a;
                k.d(courseManager, null, null, new CourseManager$refreshCourseList$2$onSuccess$1(courseListResp, str, null), 3, null);
                if (courseListResp != null && (items = courseListResp.getItems()) != null) {
                    listU0 = CollectionsKt.U0(items);
                }
                courseManager.y(listU0, page);
            }
        });
    }

    public final void t(boolean z10) {
        f44088d = z10;
    }

    public final void u(Subject subject, Boolean bool) {
        if (subject == null) {
            return;
        }
        k.d(this, null, null, new CourseManager$subscribeCourse$1(subject, bool, null), 3, null);
    }

    public final void w(String str, Integer num) {
        if (str == null) {
            return;
        }
        k.d(this, null, null, new CourseManager$subscribeCourseById$1(num, str, null), 3, null);
    }
}
