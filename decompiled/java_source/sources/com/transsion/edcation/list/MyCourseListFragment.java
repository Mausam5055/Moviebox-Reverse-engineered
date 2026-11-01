package com.transsion.edcation.list;

import android.content.Context;
import android.view.View;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.RepeatOnLifecycleKt;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.edcation.CourseManager;
import com.transsion.edcation.R$string;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.flow.y0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\nJ\u000f\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/edcation/list/MyCourseListFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/edcation/bean/CourseBean;", "<init>", "()V", "", "isShowPageStateLayoutTitle", "()Z", "", "s0", "()Ljava/lang/String;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "initViewData", "G0", "loadMore", "lazyLoadData", "initViewModel", "x0", "getPageStateLayoutTitle", "retryLoadData", "Landroid/view/View;", "q0", "()Landroid/view/View;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "mPageNum", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MyCourseListFragment extends BaseListFragment<CourseBean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String mPageNum;

    /* JADX INFO: renamed from: com.transsion.edcation.list.MyCourseListFragment$initViewModel$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$1", f = "MyCourseListFragment.kt", l = {62}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.transsion.edcation.list.MyCourseListFragment$initViewModel$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$1$1", f = "MyCourseListFragment.kt", l = {63}, m = "invokeSuspend")
        static final class C06211 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ MyCourseListFragment this$0;

            /* JADX INFO: renamed from: com.transsion.edcation.list.MyCourseListFragment$initViewModel$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", "", "Lcom/transsion/edcation/bean/CourseBean;"}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
            @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$1$1$1", f = "MyCourseListFragment.kt", l = {}, m = "invokeSuspend")
            static final class C06221 extends SuspendLambda implements Function2<List<CourseBean>, Continuation<? super Unit>, Object> {
                final /* synthetic */ n0 $$this$repeatOnLifecycle;
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ MyCourseListFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C06221(n0 n0Var, MyCourseListFragment myCourseListFragment, Continuation<? super C06221> continuation) {
                    super(2, continuation);
                    this.$$this$repeatOnLifecycle = n0Var;
                    this.this$0 = myCourseListFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C06221 c06221 = new C06221(this.$$this$repeatOnLifecycle, this.this$0, continuation);
                    c06221.L$0 = obj;
                    return c06221;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(List<CourseBean> list, Continuation<? super Unit> continuation) {
                    return ((C06221) create(list, continuation)).invokeSuspend(Unit.f67061a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    List list = (List) this.L$0;
                    String.valueOf(this.$$this$repeatOnLifecycle);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("list: ");
                    sb2.append(list);
                    BaseQuickAdapter mBaseAdapter = this.this$0.getMBaseAdapter();
                    if (mBaseAdapter != null) {
                        mBaseAdapter.n1(list);
                    }
                    this.this$0.showContentView();
                    return Unit.f67061a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06211(MyCourseListFragment myCourseListFragment, Continuation<? super C06211> continuation) {
                super(2, continuation);
                this.this$0 = myCourseListFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C06211 c06211 = new C06211(this.this$0, continuation);
                c06211.L$0 = obj;
                return c06211;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C06211) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    n0 n0Var = (n0) this.L$0;
                    y0 y0VarI = CourseManager.f44085a.i();
                    C06221 c06221 = new C06221(n0Var, this.this$0, null);
                    this.label = 1;
                    if (kotlinx.coroutines.flow.d.i(y0VarI, c06221, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MyCourseListFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                Lifecycle lifecycle = MyCourseListFragment.this.getLifecycle();
                Intrinsics.g(lifecycle, "<get-lifecycle>(...)");
                Lifecycle.State state = Lifecycle.State.RESUMED;
                C06211 c06211 = new C06211(MyCourseListFragment.this, null);
                this.label = 1;
                if (RepeatOnLifecycleKt.a(lifecycle, state, c06211, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.edcation.list.MyCourseListFragment$initViewModel$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$2", f = "MyCourseListFragment.kt", l = {71}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.transsion.edcation.list.MyCourseListFragment$initViewModel$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$2$1", f = "MyCourseListFragment.kt", l = {73}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ MyCourseListFragment this$0;

            /* JADX INFO: renamed from: com.transsion.edcation.list.MyCourseListFragment$initViewModel$2$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/transsion/moviedetailapi/bean/Pager;"}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
            @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$2$1$1", f = "MyCourseListFragment.kt", l = {}, m = "invokeSuspend")
            static final class C06231 extends SuspendLambda implements Function2<Pager, Continuation<? super Unit>, Object> {
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ MyCourseListFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C06231(MyCourseListFragment myCourseListFragment, Continuation<? super C06231> continuation) {
                    super(2, continuation);
                    this.this$0 = myCourseListFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C06231 c06231 = new C06231(this.this$0, continuation);
                    c06231.L$0 = obj;
                    return c06231;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Pager pager, Continuation<? super Unit> continuation) {
                    return ((C06231) create(pager, continuation)).invokeSuspend(Unit.f67061a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    Pager pager = (Pager) this.L$0;
                    if (pager != null) {
                        MyCourseListFragment myCourseListFragment = this.this$0;
                        if (Intrinsics.c(pager.getHasMore(), Boxing.a(true))) {
                            String nextPage = pager.getNextPage();
                            if (nextPage == null) {
                                nextPage = "1";
                            }
                            myCourseListFragment.mPageNum = nextPage;
                            myCourseListFragment.B0();
                        } else {
                            BaseListFragment.D0(myCourseListFragment, false, 1, null);
                        }
                    }
                    if (this.this$0.A0()) {
                        this.this$0.I0(false);
                    }
                    return Unit.f67061a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(MyCourseListFragment myCourseListFragment, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = myCourseListFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    x0 x0VarJ = CourseManager.f44085a.j();
                    C06231 c06231 = new C06231(this.this$0, null);
                    this.label = 1;
                    if (kotlinx.coroutines.flow.d.i(x0VarJ, c06231, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
        }

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MyCourseListFragment.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                Lifecycle lifecycle = MyCourseListFragment.this.getLifecycle();
                Intrinsics.g(lifecycle, "<get-lifecycle>(...)");
                Lifecycle.State state = Lifecycle.State.RESUMED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(MyCourseListFragment.this, null);
                this.label = 1;
                if (RepeatOnLifecycleKt.a(lifecycle, state, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q0(MyCourseListFragment myCourseListFragment) {
        Navigator.x(TheRouter.c("/main/tab").K("bottomTab", BottomTabType.TAB_CODE_HOME).K("topTab", "Education"), myCourseListFragment.requireContext(), null, 2, null);
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void G0() {
        I0(true);
        this.mPageNum = "1";
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        showLoadingView();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        k.d(v.a(this), null, null, new AnonymousClass1(null), 3, null);
        k.d(v.a(this), null, null, new AnonymousClass2(null), 3, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        CourseManager courseManager = CourseManager.f44085a;
        String str = this.mPageNum;
        if (str == null) {
            str = "1";
        }
        CourseManager.s(courseManager, str, null, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void loadMore() {
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public BaseQuickAdapter m0() {
        return new CourseListAdapter(0, 1, null);
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public View q0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        String string = getString(R$string.course_list_empy);
        Intrinsics.g(string, "getString(...)");
        stateView.showData(4, 1, false, "", string);
        String string2 = getString(R$string.course_explore_now);
        Intrinsics.g(string2, "getString(...)");
        stateView.setReTryTxt(string2);
        stateView.retry(new Function0() { // from class: com.transsion.edcation.list.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MyCourseListFragment.Q0(this.f44131a);
            }
        });
        return stateView;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        CourseManager.s(CourseManager.f44085a, null, null, 3, null);
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public String s0() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void x0() {
        super.x0();
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar != null) {
            bVar.f16580d.setPadding(0, 0, 0, a0.a(12.0f));
            u0();
            BaseListFragment.K0(this, null, 1, null);
        }
    }
}
