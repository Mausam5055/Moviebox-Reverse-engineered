package com.transsion.edcation.history;

import ak.t;
import android.app.Application;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.edcation.R$id;
import com.transsion.edcation.R$layout;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/edcation/history/EducationHistoryAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "data", "<init>", "(Ljava/util/List;)V", WebConstants.FIELD_ITEM, "Landroid/widget/TextView;", "textView", "", "E1", "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;)V", "videoDetailPlayBean", "Landroid/content/Context;", "context", "", "I1", "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/content/Context;)Ljava/lang/String;", "holder", "F1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "F", "Lkotlin/Lazy;", "H1", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "mVideoDetailPlayDao", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class EducationHistoryAdapter extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Lazy mVideoDetailPlayDao;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EducationHistoryAdapter(List<VideoDetailPlayBean> data) {
        super(R$layout.item_education_history, data);
        Intrinsics.h(data, "data");
        this.mVideoDetailPlayDao = LazyKt.b(new Function0() { // from class: com.transsion.edcation.history.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return EducationHistoryAdapter.J1();
            }
        });
    }

    private final void E1(VideoDetailPlayBean item, TextView textView) {
        k.d(o0.a(y0.b()), null, null, new EducationHistoryAdapter$calculateProgress$1(this, item, textView, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G1(EducationHistoryAdapter educationHistoryAdapter, VideoDetailPlayBean videoDetailPlayBean, View view) {
        educationHistoryAdapter.I1(videoDetailPlayBean, educationHistoryAdapter.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao H1() {
        return (VideoDetailPlayDao) this.mVideoDetailPlayDao.getValue();
    }

    private final String I1(VideoDetailPlayBean videoDetailPlayBean, Context context) {
        if (!t.f652a.b()) {
            DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
            if (DownloadManagerApi.x0(aVar.a(), videoDetailPlayBean != null ? videoDetailPlayBean.getSubjectId() : null, videoDetailPlayBean != null ? videoDetailPlayBean.getId() : null, false, false, 8, null) && (context instanceof FragmentActivity)) {
                if (videoDetailPlayBean != null && videoDetailPlayBean.getId() != null) {
                    aVar.a().t0((FragmentActivity) context, videoDetailPlayBean.getId(), "Education History");
                }
                return "play_subject";
            }
        }
        Navigator.x(TheRouter.c("/movie/detail").F("subject_type", SubjectType.EDUCATION.getValue()).K("id", videoDetailPlayBean != null ? videoDetailPlayBean.getSubjectId() : null).K("module_name", "Education History"), context, null, 2, null);
        return "play_subject";
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
    /* JADX INFO: renamed from: F1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final VideoDetailPlayBean item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.education_history_cover);
        f.b bVarM = f.f61882a.m(getContext());
        String coverUrl = item.getCoverUrl();
        if (coverUrl == null) {
            coverUrl = "";
        }
        bVarM.g(coverUrl).d(shapeableImageView);
        holder.setText(R$id.education_history_title, item.getTitle());
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.edcation.history.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EducationHistoryAdapter.G1(this.f44122a, item, view);
            }
        });
        E1(item, (TextView) holder.getView(R$id.education_history_tag));
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
