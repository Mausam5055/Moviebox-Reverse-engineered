package com.transsion.home.adapter.suboperate.provider;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubMyCourseProvider extends BaseItemProvider implements androidx.p009lifecycle.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t1 f44539f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private BaseViewHolder f44540g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CourseBean f44541h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f44542i = LazyKt.b(new Function0() { // from class: com.transsion.home.adapter.suboperate.provider.e0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubMyCourseProvider.P();
        }
    });

    public SubMyCourseProvider(int i11) {
        this.f44538e = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(BaseViewHolder baseViewHolder, View view) {
        Navigator.x(TheRouter.c("/edu/courseList"), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(SubMyCourseProvider subMyCourseProvider, BaseViewHolder baseViewHolder, OperateItem operateItem, View view) {
        Navigator.x(TheRouter.c("/home/filter").F("tabId", subMyCourseProvider.f44538e), baseViewHolder.itemView.getContext(), null, 2, null);
        subMyCourseProvider.T("click_my_course_explore", operateItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(SubMyCourseProvider subMyCourseProvider, OperateItem operateItem, View view) {
        CourseBean courseBean = subMyCourseProvider.f44541h;
        if ((courseBean != null ? courseBean.getSubjectId() : null) != null) {
            CourseBean courseBean2 = subMyCourseProvider.f44541h;
            String subjectId = courseBean2 != null ? courseBean2.getSubjectId() : null;
            CourseBean courseBean3 = subMyCourseProvider.f44541h;
            rl.h.f(new Subject(subjectId, courseBean3 != null ? courseBean3.getSubjectType() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -4, 134217727, null), "operation_course");
        }
        subMyCourseProvider.T("click_my_course_learn", operateItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao O() {
        return (VideoDetailPlayDao) this.f44542i.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao P() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(SubMyCourseProvider subMyCourseProvider) {
        subMyCourseProvider.W();
    }

    private final void R() {
        this.f44539f = kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubMyCourseProvider$registerCourse$1(this, null), 3, null);
    }

    private final void S(OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "browse_my_course");
        map.put(CampaignEx.JSON_KEY_TITLE, String.valueOf(operateItem.getTitle()));
        map.put("tabId", String.valueOf(this.f44538e));
        com.transsion.baselib.helper.a.f43262a.a(SubTabFragment.INSTANCE.a(this.f44538e), map);
    }

    private final void T(String str, OperateItem operateItem) {
        String subjectId;
        HashMap map = new HashMap();
        map.put("event_type", str);
        map.put(CampaignEx.JSON_KEY_TITLE, String.valueOf(operateItem.getTitle()));
        map.put("tabId", String.valueOf(this.f44538e));
        CourseBean courseBean = this.f44541h;
        if (courseBean == null || (subjectId = courseBean.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subjectId", subjectId);
        com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44538e), map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(final BaseViewHolder baseViewHolder, final float f11) {
        TextView textView;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format("%.0f", Arrays.copyOf(new Object[]{Float.valueOf(f11)}, 1));
        Intrinsics.g(str, "format(...)");
        String str2 = str + "%";
        if (baseViewHolder != null && (textView = (TextView) baseViewHolder.getView(R$id.sub_operation_course_item_percent_text)) != null) {
            textView.setText(str2);
        }
        final View view = baseViewHolder != null ? baseViewHolder.getView(R$id.sub_operation_course_item_percent_bg) : null;
        if (view != null) {
            view.post(new Runnable() { // from class: com.transsion.home.adapter.suboperate.provider.i0
                @Override // java.lang.Runnable
                public final void run() {
                    SubMyCourseProvider.V(baseViewHolder, view, f11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(BaseViewHolder baseViewHolder, View view, float f11) {
        View view2 = baseViewHolder.getView(R$id.sub_operation_course_item_percent_view);
        view2.getLayoutParams().width = (int) ((view.getWidth() * f11) / 100);
        view2.setLayoutParams(view2.getLayoutParams());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W() {
        TextView textView;
        String title;
        ImageView imageView;
        String url;
        String thumbnail;
        Cover cover;
        Cover cover2;
        View view;
        View view2;
        View view3;
        View view4;
        if (this.f44541h == null) {
            BaseViewHolder baseViewHolder = this.f44540g;
            if (baseViewHolder != null && (view4 = baseViewHolder.getView(R$id.sub_operation_course_start_liner)) != null) {
                jg.c.k(view4);
            }
            BaseViewHolder baseViewHolder2 = this.f44540g;
            if (baseViewHolder2 == null || (view3 = baseViewHolder2.getView(R$id.sub_operation_course_item_liner)) == null) {
                return;
            }
            jg.c.h(view3);
            return;
        }
        BaseViewHolder baseViewHolder3 = this.f44540g;
        if (baseViewHolder3 != null && (view2 = baseViewHolder3.getView(R$id.sub_operation_course_start_liner)) != null) {
            jg.c.h(view2);
        }
        BaseViewHolder baseViewHolder4 = this.f44540g;
        if (baseViewHolder4 != null && (view = baseViewHolder4.getView(R$id.sub_operation_course_item_liner)) != null) {
            jg.c.k(view);
        }
        BaseViewHolder baseViewHolder5 = this.f44540g;
        String str = "";
        if (baseViewHolder5 != null && (imageView = (ImageView) baseViewHolder5.getView(R$id.sub_operation_course_item_image)) != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            CourseBean courseBean = this.f44541h;
            if (courseBean == null || (cover2 = courseBean.getCover()) == null || (url = cover2.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            CourseBean courseBean2 = this.f44541h;
            if (courseBean2 == null || (cover = courseBean2.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).m(imageView.getWidth()).d(imageView);
        }
        CourseBean courseBean3 = this.f44541h;
        if (courseBean3 != null && (title = courseBean3.getTitle()) != null) {
            str = title;
        }
        BaseViewHolder baseViewHolder6 = this.f44540g;
        if (baseViewHolder6 != null && (textView = (TextView) baseViewHolder6.getView(R$id.sub_operation_course_item_title_text)) != null) {
            textView.setText(str);
        }
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubMyCourseProvider$updateCurrentCourse$2(this, null), 3, null);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        helper.getView(R$id.sub_operation_course_title).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubMyCourseProvider.L(helper, view);
            }
        });
        helper.getView(R$id.sub_operation_course_explore).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubMyCourseProvider.M(this.f44580a, helper, item, view);
            }
        });
        helper.getView(R$id.sub_operation_course_learn).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubMyCourseProvider.N(this.f44585a, item, view);
            }
        });
        S(item);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.MY_COURSE.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_my_course;
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onDestroy(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onPause(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onResume(androidx.p009lifecycle.u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.d(this, owner);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.transsion.home.adapter.suboperate.provider.d0
            @Override // java.lang.Runnable
            public final void run() {
                SubMyCourseProvider.Q(this.f44575a);
            }
        }, 1000L);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onStart(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.e(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onStop(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.f(this, uVar);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        this.f44540g = holder;
        if (this.f44539f == null) {
            R();
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        this.f44540g = null;
        t1 t1Var = this.f44539f;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f44539f = null;
    }
}
