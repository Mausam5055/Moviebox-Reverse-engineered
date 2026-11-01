package tn;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.i;
import com.therouter.TheRouter;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubjectPostCount;
import com.transsion.play.detail.viewmodel.PlayDetailViewModel;
import com.transsion.play.detail.widget.PlayDetailResTabTitleView;
import com.transsion.videodetail.api.IStreamDetailService;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.PublishEvent;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f76292q = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f76293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Subject f76294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MagicIndicator f76295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ViewPager2 f76296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f76297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f76298f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f76299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Function1 f76300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ORCommonNavigator f76301i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b f76302j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private FragmentStateAdapter f76303k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f76304l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f76305m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f76306n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Lazy f76307o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Lazy f76308p;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final class b extends ik.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ViewPager2 f76309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f76310c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f76311d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f76312e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ e f76313f;

        public b(e eVar, ViewPager2 viewPager2, List tabList, boolean z10, boolean z11) {
            Intrinsics.h(tabList, "tabList");
            this.f76313f = eVar;
            this.f76309b = viewPager2;
            this.f76310c = tabList;
            this.f76311d = z10;
            this.f76312e = z11;
        }

        private final LinearLayout.LayoutParams j() {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            layoutParams.setMarginStart(dk.a.b(6));
            layoutParams.setMarginEnd(dk.a.b(2));
            return layoutParams;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void k(int i11, e eVar, PlayDetailResTabTitleView playDetailResTabTitleView, b bVar, View view) {
            if (i11 == 1 && eVar.f76306n) {
                eVar.f76306n = false;
                playDetailResTabTitleView.setDotVisibility(false);
                com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("key_subj_comment_dot", false);
            }
            ViewPager2 viewPager2 = bVar.f76309b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i11, true);
            }
        }

        @Override // j00.a
        public int a() {
            return (this.f76311d && this.f76312e) ? this.f76310c.size() - 1 : this.f76310c.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(1);
            linePagerIndicator.setLineHeight(i.e(3.0f));
            linePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            linePagerIndicator.setColors(-1, -1, -1);
            return linePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, final int i11) {
            Intrinsics.h(context, "context");
            final PlayDetailResTabTitleView playDetailResTabTitleView = new PlayDetailResTabTitleView(context);
            final e eVar = this.f76313f;
            if (i11 == 1) {
                playDetailResTabTitleView.setDotVisibility(eVar.f76306n);
            }
            Object obj = this.f76310c.get(i11);
            Intrinsics.g(obj, "get(...)");
            playDetailResTabTitleView.setTitle((String) obj);
            playDetailResTabTitleView.setOnClickListener(new View.OnClickListener() { // from class: tn.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.b.k(i11, eVar, playDetailResTabTitleView, this, view);
                }
            });
            return playDetailResTabTitleView;
        }

        @Override // ik.a
        public LinearLayout.LayoutParams h(Context context, int i11) {
            Intrinsics.h(context, "context");
            return j();
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            super.onPageScrollStateChanged(i11);
            MagicIndicator magicIndicator = e.this.f76295c;
            if (magicIndicator != null) {
                magicIndicator.onPageScrollStateChanged(i11);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            super.onPageScrolled(i11, f11, i12);
            MagicIndicator magicIndicator = e.this.f76295c;
            if (magicIndicator != null) {
                magicIndicator.onPageScrolled(i11, f11, i12);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            Function1 function1 = e.this.f76300h;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(i11));
            }
            MagicIndicator magicIndicator = e.this.f76295c;
            if (magicIndicator != null) {
                magicIndicator.onPageSelected(i11);
            }
            e.this.f76304l = i11;
        }
    }

    public static final class d extends FragmentStateAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IStreamDetailService f76316b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(IStreamDetailService iStreamDetailService, Fragment fragment) {
            super(fragment);
            this.f76316b = iStreamDetailService;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            if (i11 == 0) {
                IStreamDetailService iStreamDetailService = this.f76316b;
                Subject subject = e.this.f76294b;
                Subject subject2 = e.this.f76294b;
                return iStreamDetailService.d(subject, subject2 != null ? subject2.getOps() : null, e.this.f76297e, e.this.f76298f, e.this.f76299g);
            }
            IStreamDetailService iStreamDetailService2 = this.f76316b;
            Subject subject3 = e.this.f76294b;
            String subjectId = subject3 != null ? subject3.getSubjectId() : null;
            Subject subject4 = e.this.f76294b;
            return iStreamDetailService2.a(subjectId, subject4 != null ? subject4.getOps() : null, e.this.f76297e);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return (e.this.f76298f && e.this.f76299g) ? e.this.q().size() - 1 : e.this.q().size();
        }
    }

    /* JADX INFO: renamed from: tn.e$e, reason: collision with other inner class name */
    static final class C0926e implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f76317a;

        C0926e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f76317a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f76317a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f76317a.invoke(obj);
        }
    }

    public e(Fragment fragment, Subject subject, MagicIndicator magicIndicator, ViewPager2 viewPager2, String str, boolean z10, boolean z11, Function1 function1) {
        Intrinsics.h(fragment, "fragment");
        this.f76293a = fragment;
        this.f76294b = subject;
        this.f76295c = magicIndicator;
        this.f76296d = viewPager2;
        this.f76297e = str;
        this.f76298f = z10;
        this.f76299g = z11;
        this.f76300h = function1;
        this.f76307o = LazyKt.b(new Function0() { // from class: tn.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.y(this.f76288a);
            }
        });
        this.f76308p = LazyKt.b(new Function0() { // from class: tn.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.z(this.f76289a);
            }
        });
        r();
        u();
        t();
        s();
    }

    public /* synthetic */ e(Fragment fragment, Subject subject, MagicIndicator magicIndicator, ViewPager2 viewPager2, String str, boolean z10, boolean z11, Function1 function1, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, subject, magicIndicator, viewPager2, str, (i11 & 32) != 0 ? false : z10, (i11 & 64) != 0 ? false : z11, (i11 & 128) != 0 ? null : function1);
    }

    private final void o() {
        ViewPager2 viewPager2 = this.f76296d;
        if (viewPager2 != null) {
            viewPager2.registerOnPageChangeCallback(new c());
        }
        ViewPager2 viewPager3 = this.f76296d;
        if (viewPager3 != null) {
            viewPager3.setCurrentItem(this.f76304l, false);
        }
    }

    private final PlayDetailViewModel p() {
        return (PlayDetailViewModel) this.f76307o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List q() {
        return (List) this.f76308p.getValue();
    }

    private final void r() {
        this.f76306n = com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("key_subj_comment_dot", true);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void s() {
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(this.f76293a.requireContext());
        oRCommonNavigator.setFollowTouch(true);
        b bVar = new b(this, this.f76296d, q(), this.f76298f, this.f76299g);
        this.f76302j = bVar;
        oRCommonNavigator.setAdapter(bVar);
        this.f76301i = oRCommonNavigator;
        MagicIndicator magicIndicator = this.f76295c;
        if (magicIndicator != null) {
            magicIndicator.setNavigator(oRCommonNavigator);
        }
    }

    private final void t() {
        IStreamDetailService iStreamDetailService = (IStreamDetailService) TheRouter.d(IStreamDetailService.class, new Object[0]);
        if (iStreamDetailService == null) {
            return;
        }
        d dVar = new d(iStreamDetailService, this.f76293a);
        this.f76303k = dVar;
        ViewPager2 viewPager2 = this.f76296d;
        if (viewPager2 != null) {
            viewPager2.setAdapter(dVar);
        }
        o();
    }

    private final void u() {
        String subjectId;
        Fragment fragment = this.f76293a;
        Function1 function1 = new Function1() { // from class: tn.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.v(this.f76290a, (PublishEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PublishEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(fragment, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
        p().g().j(this.f76293a, new C0926e(new Function1() { // from class: tn.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.w(this.f76291a, (SubjectPostCount) obj);
            }
        }));
        Subject subject = this.f76294b;
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        p().f(subjectId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v(e eVar, PublishEvent it) {
        String str;
        Intrinsics.h(it, "it");
        long j11 = eVar.f76305m + 1;
        eVar.f76305m = j11;
        String strValueOf = j11 > 99 ? "99+" : String.valueOf(j11);
        Object obj = eVar.q().get(1);
        if (strValueOf.length() == 0) {
            str = "";
        } else {
            str = "(" + strValueOf + ")";
        }
        String str2 = obj + str;
        ORCommonNavigator oRCommonNavigator = eVar.f76301i;
        j00.d pagerTitleView = oRCommonNavigator != null ? oRCommonNavigator.getPagerTitleView(1) : null;
        PlayDetailResTabTitleView playDetailResTabTitleView = pagerTitleView instanceof PlayDetailResTabTitleView ? (PlayDetailResTabTitleView) pagerTitleView : null;
        if (playDetailResTabTitleView != null) {
            playDetailResTabTitleView.setTitle(str2);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0043  */
    public static final Unit w(e eVar, SubjectPostCount subjectPostCount) {
        String count;
        String count2 = subjectPostCount != null ? subjectPostCount.getCount() : null;
        if (count2 == null || count2.length() == 0) {
            return Unit.f67061a;
        }
        String count3 = subjectPostCount != null ? subjectPostCount.getCount() : null;
        Intrinsics.e(count3);
        Long lX = StringsKt.x(count3);
        String str = "";
        if (lX != null) {
            long jLongValue = lX.longValue();
            eVar.f76305m = jLongValue;
            if (jLongValue > 99) {
                count = "99+";
            } else {
                count = jLongValue <= 0 ? "" : String.valueOf(jLongValue);
            }
            if (count == null) {
                count = subjectPostCount.getCount();
            }
        } else {
            count = subjectPostCount.getCount();
        }
        Object obj = eVar.q().get(1);
        if (count != null && count.length() != 0) {
            str = "(" + count + ")";
        }
        String str2 = obj + str;
        if (!eVar.f76298f || !eVar.f76299g) {
            ORCommonNavigator oRCommonNavigator = eVar.f76301i;
            j00.d pagerTitleView = oRCommonNavigator != null ? oRCommonNavigator.getPagerTitleView(1) : null;
            PlayDetailResTabTitleView playDetailResTabTitleView = pagerTitleView instanceof PlayDetailResTabTitleView ? (PlayDetailResTabTitleView) pagerTitleView : null;
            if (playDetailResTabTitleView != null) {
                playDetailResTabTitleView.setTitle(str2);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlayDetailViewModel y(e eVar) {
        return (PlayDetailViewModel) new v0(eVar.f76293a).a(PlayDetailViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List z(e eVar) {
        return CollectionsKt.o(eVar.f76293a.requireContext().getString(R$string.for_you), eVar.f76293a.requireContext().getString(R$string.name_comments));
    }

    public final void x(boolean z10) {
        if (com.transsion.baseui.util.c.f43504a.a(90991, 500L) || !this.f76293a.isAdded() || this.f76293a.isDetached() || this.f76293a.isRemoving()) {
            return;
        }
        List<androidx.p010savedstate.e> listY0 = this.f76293a.getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        for (androidx.p010savedstate.e eVar : listY0) {
            if (eVar instanceof ix.a) {
                ((ix.a) eVar).onScreenChange(z10);
            }
        }
    }
}
