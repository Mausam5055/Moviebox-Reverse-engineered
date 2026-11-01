package bp;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$mipmap;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ninegridview.video.NineGridVideoView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsnet.downloader.widget.DownloadView;
import java.util.Calendar;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class i extends BaseItemProvider {
    private final void D(BaseViewHolder baseViewHolder, PostSubjectItem postSubjectItem) {
        B((NineGridVideoView) baseViewHolder.getView(R$id.nine_grid), postSubjectItem);
        A((AppCompatImageView) baseViewHolder.getView(R$id.ivCenterIcon), postSubjectItem);
        C((AppCompatTextView) baseViewHolder.getView(R$id.tvTime), postSubjectItem);
    }

    private final void z(BaseViewHolder baseViewHolder, PostSubjectItem postSubjectItem) {
        ResourceDetectors resourceDetector;
        String url;
        Cover cover;
        String thumbnail;
        Cover cover2;
        if (TextUtils.isEmpty(postSubjectItem.getTitle())) {
            baseViewHolder.setText(R$id.tvTitle, postSubjectItem.getContent());
        } else {
            baseViewHolder.setText(R$id.tvTitle, postSubjectItem.getTitle());
        }
        if (postSubjectItem.getSubject() != null) {
            Subject subject = postSubjectItem.getSubject();
            Date dateL = com.blankj.utilcode.util.c0.l(subject != null ? subject.getReleaseDate() : null, "yyyy-MM-dd");
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(dateL);
            AppCompatTextView appCompatTextView = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tvSubjectYear);
            if (appCompatTextView != null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
                Subject subject2 = postSubjectItem.getSubject();
                if (!TextUtils.isEmpty(subject2 != null ? subject2.getCountryName() : null)) {
                    SpannableStringBuilder spannableStringBuilderAppend = spannableStringBuilder.append((CharSequence) " • ");
                    Subject subject3 = postSubjectItem.getSubject();
                    spannableStringBuilderAppend.append((CharSequence) (subject3 != null ? subject3.getCountryName() : null));
                }
                appCompatTextView.setText(spannableStringBuilder.toString());
                Subject subject4 = postSubjectItem.getSubject();
                Drawable drawable = androidx.core.content.b.getDrawable(appCompatTextView.getContext(), com.transsion.moviedetailapi.g.a(subject4 != null ? subject4.getSubjectType() : null));
                if (drawable != null) {
                    drawable.setTint(androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.gray_40));
                }
                appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            }
            int i11 = R$id.tvSubject;
            Subject subject5 = postSubjectItem.getSubject();
            baseViewHolder.setText(i11, subject5 != null ? subject5.getTitle() : null);
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolder.getViewOrNull(R$id.ivSubjectCover);
            if (shapeableImageView != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Subject subject6 = postSubjectItem.getSubject();
                String str = "";
                if (subject6 == null || (cover2 = subject6.getCover()) == null || (url = cover2.getUrl()) == null) {
                    url = "";
                }
                ej.f.b bVarC = bVarM.g(url).i(R$mipmap.home_ic_default_res).m(com.blankj.utilcode.util.a0.a(42.0f)).c(com.blankj.utilcode.util.a0.a(56.0f));
                Subject subject7 = postSubjectItem.getSubject();
                if (subject7 != null && (cover = subject7.getCover()) != null && (thumbnail = cover.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarC.l(str).d(shapeableImageView);
            }
        }
        DownloadView downloadView = (DownloadView) baseViewHolder.getViewOrNull(R$id.llDownload);
        if (downloadView != null) {
            Subject subject8 = postSubjectItem.getSubject();
            String subjectId = subject8 != null ? subject8.getSubjectId() : null;
            Subject subject9 = postSubjectItem.getSubject();
            String resourceId = (subject9 == null || (resourceDetector = subject9.getResourceDetector()) == null) ? null : resourceDetector.getResourceId();
            Subject subject10 = postSubjectItem.getSubject();
            DownloadView.setShowType$default(downloadView, subjectId, resourceId, subject10 != null ? Boolean.valueOf(subject10.isSeries()) : null, false, 0, 24, null);
        }
        if (downloadView != null) {
            downloadView.setPageFrom("TODO pageFrom");
            Subject subject11 = postSubjectItem.getSubject();
            if (subject11 != null ? Intrinsics.c(subject11.getHasResource(), Boolean.TRUE) : false) {
                jg.c.k(downloadView);
            } else {
                jg.c.g(downloadView);
            }
        }
    }

    public abstract void A(AppCompatImageView appCompatImageView, PostSubjectItem postSubjectItem);

    public abstract void B(NineGridVideoView nineGridVideoView, PostSubjectItem postSubjectItem);

    public abstract void C(AppCompatTextView appCompatTextView, PostSubjectItem postSubjectItem);

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_provider_recommend_base_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        z(helper, item);
        D(helper, item);
    }
}
