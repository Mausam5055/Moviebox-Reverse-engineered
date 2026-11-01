package com.transsion.edcation.list;

import android.app.Application;
import android.view.View;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.edcation.R$id;
import com.transsion.edcation.R$layout;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import r6.f;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0010\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/edcation/list/CourseListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/edcation/bean/CourseBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "layoutResId", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "E1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/bean/CourseBean;)V", "", "playModule", "H1", "(Lcom/transsion/edcation/bean/CourseBean;Ljava/lang/String;)V", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "F", "Lkotlin/Lazy;", "G1", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "mVideoDetailPlayDao", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CourseListAdapter extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Lazy mVideoDetailPlayDao;

    public CourseListAdapter() {
        this(0, 1, null);
    }

    public CourseListAdapter(int i11) {
        super(i11, null, 2, null);
        this.mVideoDetailPlayDao = LazyKt.b(new Function0() { // from class: com.transsion.edcation.list.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CourseListAdapter.J1();
            }
        });
    }

    public /* synthetic */ CourseListAdapter(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_my_course_list : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F1(CourseListAdapter courseListAdapter, CourseBean courseBean, View view) {
        I1(courseListAdapter, courseBean, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao G1() {
        return (VideoDetailPlayDao) this.mVideoDetailPlayDao.getValue();
    }

    public static /* synthetic */ void I1(CourseListAdapter courseListAdapter, CourseBean courseBean, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        courseListAdapter.H1(courseBean, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao J1() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: E1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final CourseBean item) {
        String url;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.setText(R$id.item_title, item.getTitle());
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.item_image);
        if (shapeableImageView != null) {
            Cover cover = item.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            yp.a.b(shapeableImageView, url, 12.0f);
        }
        jg.c.j(holder.getView(R$id.item_jump), true);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.edcation.list.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CourseListAdapter.F1(this.f44127a, item, view);
            }
        });
        k.d(o0.a(y0.b()), null, null, new CourseListAdapter$convert$2(this, item, holder, null), 3, null);
    }

    public final void H1(CourseBean item, String playModule) {
        if (item == null) {
            return;
        }
        Navigator navigatorC = TheRouter.c("/movie/detail");
        Integer subjectType = item.getSubjectType();
        Navigator.x(navigatorC.F("subject_type", subjectType != null ? subjectType.intValue() : SubjectType.EDUCATION.getValue()).K("id", item.getSubjectId()).K("module_name", playModule).z("autoPlay", true), getContext(), null, 2, null);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
