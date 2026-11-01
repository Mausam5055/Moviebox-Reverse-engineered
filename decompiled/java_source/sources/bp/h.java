package bp;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.Audio;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsnet.downloader.widget.DownloadView;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends BaseItemProvider {
    private final void A(BaseViewHolder baseViewHolder, PostSubjectItem postSubjectItem) {
        List<Audio> audio;
        Cover cover;
        Subject subject = postSubjectItem.getSubject();
        String url = (subject == null || (cover = subject.getCover()) == null) ? null : cover.getUrl();
        ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolder.getView(R$id.iv_audio_cover_small);
        if (TextUtils.isEmpty(url)) {
            jg.c.g(shapeableImageView);
        } else {
            jg.c.k(shapeableImageView);
            if (url != null) {
                int iA = com.blankj.utilcode.util.a0.a(24.0f);
                Glide.with(k()).load2(url + "?x-oss-process=image/resize,w_" + iA + ",h_" + iA + ",m_lfit").into(shapeableImageView);
            }
        }
        final ShapeableImageView shapeableImageView2 = (ShapeableImageView) baseViewHolder.getView(R$id.iv_cover);
        String coverUrl = postSubjectItem.getCoverUrl(true);
        if (TextUtils.isEmpty(coverUrl)) {
            shapeableImageView2.setImageResource(R$mipmap.ic_audio_default_bg_light);
            return;
        }
        com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f42991a, coverUrl, 0, 0, new Function1() { // from class: bp.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.B(shapeableImageView2, (BitmapDrawable) obj);
            }
        }, 6, null);
        baseViewHolder.setText(R$id.tvAudioTitle, postSubjectItem.getTitle());
        AppCompatTextView appCompatTextView = (AppCompatTextView) baseViewHolder.getView(R$id.tvTime);
        Media media = postSubjectItem.getMedia();
        if (media == null || (audio = media.getAudio()) == null) {
            appCompatTextView.setVisibility(8);
        } else {
            if (audio.isEmpty()) {
                return;
            }
            Long duration = audio.get(0).getDuration();
            appCompatTextView.setText(TimeUtilKt.o(duration != null ? duration.longValue() : 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(ShapeableImageView shapeableImageView, BitmapDrawable drawable) {
        Intrinsics.h(drawable, "drawable");
        shapeableImageView.setImageDrawable(drawable);
        return Unit.f67061a;
    }

    private final void C(BaseViewHolder baseViewHolder, PostSubjectItem postSubjectItem) {
        ResourceDetectors resourceDetector;
        String url;
        Cover cover;
        String thumbnail;
        Cover cover2;
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
            downloadView.setPageFrom("post_detail_recommend");
            Subject subject11 = postSubjectItem.getSubject();
            if (subject11 != null ? Intrinsics.c(subject11.getHasResource(), Boolean.TRUE) : false) {
                jg.c.k(downloadView);
            } else {
                jg.c.g(downloadView);
            }
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return MediaType.AUDIO.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_provider_recommend_audio_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        A(helper, item);
        C(helper, item);
    }
}
