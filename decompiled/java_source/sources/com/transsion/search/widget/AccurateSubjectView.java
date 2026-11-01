package com.transsion.search.widget;

import ak.t;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.c0;
import com.blankj.utilcode.util.u;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.CornerTextView;
import com.transsion.baseui.util.j;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.g;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.AccurateSubject;
import com.transsion.search.bean.SearchSubject;
import com.transsion.search.bean.Season;
import com.transsion.search.fragment.values.SearchValuesFragment;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import oh.h;
import rq.m;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0017\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u001d\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\t2\b\u0010\u0016\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010!\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010/\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010,R\u0014\u00101\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010,R\u0014\u00103\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010,R\u0014\u00105\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010,R\u0014\u00107\u001a\u00020\t8\u0002X\u0082D¢\u0006\u0006\n\u0004\b6\u0010,¨\u00068"}, d2 = {"Lcom/transsion/search/widget/AccurateSubjectView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", CampaignEx.JSON_KEY_AD_K, "()V", "Landroid/text/SpannableStringBuilder;", TtmlNode.TAG_SPAN, "i", "(Landroid/text/SpannableStringBuilder;)V", "Landroid/view/ViewGroup;", "root", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "j", "(Landroid/view/ViewGroup;Lcom/transsion/moviedetailapi/bean/Subject;)V", RequestParameters.POSITION, "Lcom/transsion/search/bean/SearchSubject;", "Lcom/transsion/search/bean/Season;", WebConstants.FIELD_ITEM, "l", "(ILcom/transsion/search/bean/SearchSubject;Lcom/transsion/search/bean/Season;)V", "Lcom/transsion/search/bean/AccurateSubject;", "accurateSubject", "setData", "(Lcom/transsion/search/bean/AccurateSubject;)V", "Lcom/transsion/search/adapter/a;", "a", "Lcom/transsion/search/adapter/a;", "seasonsAdapter", "Lrq/m;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lrq/m;", "mViewBinding", "c", "I", "movieDesignW", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "movieDesignH", "e", "size48", "f", "screenW", "g", "size16", "h", "showMaxSeasonsSize", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AccurateSubjectView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.search.adapter.a seasonsAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private m mViewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int movieDesignW;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int movieDesignH;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int size48;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final int screenW;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final int size16;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final int showMaxSeasonsSize;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AccurateSubjectView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AccurateSubjectView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccurateSubjectView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.movieDesignW = a0.a(104.0f);
        this.movieDesignH = a0.a(149.0f);
        this.size48 = a0.a(48.0f);
        h hVar = h.f71021a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        this.screenW = hVar.e(applicationA);
        this.size16 = a0.a(16.0f);
        this.showMaxSeasonsSize = 6;
        k();
    }

    private final void i(SpannableStringBuilder span) {
        if (span.length() > 0) {
            span.append(" / ");
        }
    }

    private final void j(ViewGroup root, Subject subject) {
        String[] strArrA;
        if (root == null || subject == null || (strArrA = u.a(subject.getGenre(), ",")) == null) {
            return;
        }
        for (String str : strArrA) {
            View viewA = s6.a.a(this, R$layout.item_search_subject_tag);
            ((TextView) viewA.findViewById(R$id.tagTV)).setText(str);
            root.addView(viewA);
        }
    }

    private final void k() {
        this.mViewBinding = m.a(View.inflate(getContext(), R$layout.item_search_values_accurate_layout, this));
        setClipChildren(false);
    }

    private final void l(int position, SearchSubject subject, Season item) {
        Integer subjectType;
        Integer se2 = item.getSe();
        Navigator.x(TheRouter.c("/movie/detail").F("subject_type", (subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()).K("id", subject != null ? subject.getSubjectId() : null).F("season", position != this.showMaxSeasonsSize + (-1) ? se2 != null ? se2.intValue() : 0 : 0).K("ops", subject != null ? subject.getOps() : null), getContext(), null, 2, null);
        SearchValuesFragment.Companion companion = SearchValuesFragment.INSTANCE;
        companion.b("", subject != null ? subject.getSubjectId() : null, "", subject != null ? subject.getOps() : null, position, 4, companion.a(), String.valueOf(item.getSe()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(AccurateSubjectView accurateSubjectView, SearchSubject searchSubject, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        com.transsion.search.adapter.a aVar = accurateSubjectView.seasonsAdapter;
        Season season = aVar != null ? (Season) aVar.getItem(i11) : null;
        if (season != null) {
            accurateSubjectView.l(i11, searchSubject, season);
        }
    }

    public final void setData(AccurateSubject accurateSubject) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        DownloadView downloadView;
        m mVar;
        DownloadView downloadView2;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        CornerTextView cornerTextView;
        Intrinsics.h(accurateSubject, "accurateSubject");
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        int i11 = this.size16;
        ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(-i11, 0, -i11, 0);
        final SearchSubject subject = accurateSubject.getSubject();
        m mVar2 = this.mViewBinding;
        ShapeableImageView shapeableImageView = mVar2 != null ? mVar2.f74675b : null;
        Cover cover = subject != null ? subject.getCover() : null;
        if (cover != null) {
            String url = cover.getUrl();
            if (url != null && shapeableImageView != null) {
                f.a aVar = f.f61882a;
                Context context = getContext();
                Intrinsics.g(context, "getContext(...)");
                f.b bVarG = aVar.m(context).g(url);
                String thumbnail = cover.getThumbnail();
                if (thumbnail == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).d(shapeableImageView);
            }
            m mVar3 = this.mViewBinding;
            if (mVar3 != null && (cornerTextView = mVar3.f74676c) != null) {
                cornerTextView.setTextWithType(subject.getCorner(), subject.getSubjectType());
            }
            m mVar4 = this.mViewBinding;
            if (mVar4 != null && (appCompatTextView3 = mVar4.f74681h) != null) {
                appCompatTextView3.setText(subject.getTitle());
            }
            m mVar5 = this.mViewBinding;
            if (mVar5 != null && (appCompatTextView2 = mVar5.f74682i) != null) {
                appCompatTextView2.setText(subject.getImdbRate());
            }
            m mVar6 = this.mViewBinding;
            if (mVar6 != null && (appCompatTextView = mVar6.f74683j) != null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append("  ");
                String releaseDate = subject.getReleaseDate();
                if (releaseDate != null && releaseDate.length() != 0) {
                    Date dateL = c0.l(subject.getReleaseDate(), "yyyy-MM-dd");
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(dateL);
                    spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
                }
                String countryName = subject.getCountryName();
                if (countryName != null && countryName.length() != 0) {
                    i(spannableStringBuilder);
                    spannableStringBuilder.append((CharSequence) subject.getCountryName());
                }
                Integer durationSeconds = subject.getDurationSeconds();
                if ((durationSeconds != null ? durationSeconds.intValue() : 0) > 0 && !subject.isEPType()) {
                    i(spannableStringBuilder);
                    spannableStringBuilder.append((CharSequence) j.b(subject.getDurationSeconds()));
                }
                List<Staff> staffList = subject.getStaffList();
                if (staffList != null) {
                    int i12 = 2;
                    for (Staff staff : staffList) {
                        if (i12 != 0) {
                            i12--;
                            i(spannableStringBuilder);
                            spannableStringBuilder.append((CharSequence) staff.getName());
                        }
                    }
                }
                String duration = subject.getDuration();
                if (!(duration == null || duration.length() == 0) && !subject.isSeries()) {
                    i(spannableStringBuilder);
                    spannableStringBuilder.append((CharSequence) subject.getDuration());
                }
                int iA = g.a(subject.getSubjectType());
                spannableStringBuilder.setSpan(Build.VERSION.SDK_INT >= 29 ? new ImageSpan(appCompatTextView.getContext(), iA, 2) : new ImageSpan(appCompatTextView.getContext(), iA, 1), 0, 1, 34);
                appCompatTextView.setText(spannableStringBuilder);
            }
            m mVar7 = this.mViewBinding;
            if (mVar7 != null && (downloadView = mVar7.f74678e) != null) {
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    jg.c.k(downloadView);
                }
                if (Intrinsics.c(subject.getHasResource(), Boolean.TRUE)) {
                    jg.c.k(downloadView);
                    if (t.f652a.b()) {
                        downloadView.setShowPlayType();
                    } else {
                        List<ResourceDetectors> resourceDetectors = subject.getResourceDetectors();
                        if (resourceDetectors != null && !resourceDetectors.isEmpty() && (mVar = this.mViewBinding) != null && (downloadView2 = mVar.f74678e) != null) {
                            String subjectId = subject.getSubjectId();
                            String resourceId = resourceDetectors.get(0).getResourceId();
                            Integer type = resourceDetectors.get(0).getType();
                            DownloadView.setShowType$default(downloadView2, subjectId, resourceId, Boolean.valueOf(type != null && type.intValue() == 1), false, 0, 24, null);
                        }
                    }
                } else {
                    jg.c.h(downloadView);
                }
            }
        }
        List<Season> seasons = accurateSubject.getSeasons();
        int size = seasons != null ? seasons.size() : 0;
        List<Season> seasons2 = accurateSubject.getSeasons();
        List listK0 = seasons2 != null ? CollectionsKt.K0(seasons2, 6) : null;
        m mVar8 = this.mViewBinding;
        j(mVar8 != null ? mVar8.f74680g : null, accurateSubject.getSubject());
        if (!(listK0 != null && (listK0.isEmpty() ^ true)) || listK0.size() <= 1) {
            m mVar9 = this.mViewBinding;
            if (mVar9 != null && (recyclerView = mVar9.f74679f) != null) {
                recyclerView.setVisibility(8);
            }
        } else {
            m mVar10 = this.mViewBinding;
            if (mVar10 != null && (recyclerView3 = mVar10.f74679f) != null) {
                recyclerView3.setVisibility(0);
            }
            m mVar11 = this.mViewBinding;
            if (mVar11 != null && (recyclerView2 = mVar11.f74679f) != null) {
                recyclerView2.setLayoutManager(new GridLayoutManager(recyclerView2.getContext(), 3));
                com.transsion.search.adapter.a aVar2 = new com.transsion.search.adapter.a(0, 1, null);
                aVar2.w1(new p6.d() { // from class: com.transsion.search.widget.a
                    @Override // p6.d
                    public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i13) {
                        AccurateSubjectView.m(this.f52266a, subject, baseQuickAdapter, view, i13);
                    }
                });
                this.seasonsAdapter = aVar2;
                recyclerView2.setAdapter(aVar2);
                com.transsion.search.adapter.a aVar3 = this.seasonsAdapter;
                if (aVar3 != null) {
                    aVar3.n1(listK0);
                }
                com.transsion.search.adapter.a aVar4 = this.seasonsAdapter;
                if (aVar4 != null) {
                    aVar4.C1(size >= 7);
                }
                recyclerView2.addItemDecoration(new ig.b(a0.a(4.0f), a0.a(4.0f), a0.a(8.0f), a0.a(8.0f)));
            }
        }
        SearchValuesFragment.INSTANCE.d("", subject != null ? subject.getSubjectId() : null, "", subject != null ? subject.getOps() : null, 0, 4);
    }
}
