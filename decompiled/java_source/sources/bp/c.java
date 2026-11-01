package bp;

import android.content.Context;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f16666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final dx.e f16667f;

    public c(String pageName, dx.e dotHelper) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(dotHelper, "dotHelper");
        this.f16666e = pageName;
        this.f16667f = dotHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:38:0x011b  */
    public static final void A(Subject subject, DownloadView downloadView, c cVar, Subject subject2, Integer num, View view) {
        String str;
        String resourceLink;
        String resourceId;
        String str2;
        if (!subject.isShortTV()) {
            if (ak.t.f652a.b()) {
                Intrinsics.e(view);
                cVar.B(view, subject2);
            } else {
                List<ResourceDetectors> resourceDetectors = subject2.getResourceDetectors();
                if (resourceDetectors != null) {
                    if (resourceDetectors.isEmpty() || (resourceId = resourceDetectors.get(0).getResourceId()) == null) {
                        resourceId = "";
                    }
                    str = resourceId;
                } else {
                    str = "";
                }
                DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
                if (DownloadManagerApi.x0(aVar.a(), subject2.getSubjectId(), str, subject2.isSeries(), false, 8, null)) {
                    String subjectId = subject2.getSubjectId();
                    if (subjectId != null) {
                        DownloadManagerApi downloadManagerApiA = aVar.a();
                        Context context = downloadView.getContext();
                        Intrinsics.g(context, "getContext(...)");
                        DownloadManagerApi.z0(downloadManagerApiA, subjectId, context, cVar.f16666e, null, 8, null);
                    }
                } else {
                    DownloadManagerApi downloadManagerApiA2 = aVar.a();
                    Context context2 = downloadView.getContext();
                    Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                    FragmentActivity fragmentActivity = (FragmentActivity) context2;
                    String str3 = cVar.f16666e;
                    String ops = subject.getOps();
                    ResourceDetectors resourceDetector = subject2.getResourceDetector();
                    downloadManagerApiA2.K(fragmentActivity, subject2, str3, (960 & 8) != 0 ? "" : "", ops, (resourceDetector == null || (resourceLink = resourceDetector.getResourceLink()) == null) ? "" : resourceLink, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? null : null, (960 & 512) != 0 ? false : false);
                    String subjectId2 = subject2.getSubjectId();
                    ResourceDetectors resourceDetector2 = subject2.getResourceDetector();
                    DownloadRefreshEvent downloadRefreshEvent = new DownloadRefreshEvent(subjectId2, resourceDetector2 != null ? resourceDetector2.getResourceId() : null, true, subject2.isSeries());
                    FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                    String name = DownloadRefreshEvent.class.getName();
                    Intrinsics.g(name, "getName(...)");
                    flowEventBus.postEvent(name, downloadRefreshEvent, 0L);
                }
            }
            str2 = "play_subject";
            dx.e eVar = cVar.f16667f;
            String str4 = cVar.f16666e;
            String subjectId3 = subject.getSubjectId();
            Boolean hasResource = subject.getHasResource();
            eVar.a(str4, str2, subjectId3, num, hasResource != null ? hasResource.booleanValue() : false);
        }
        DownloadManagerApi downloadManagerApiA3 = DownloadManagerApi.f58398j.a();
        Context context3 = downloadView.getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        downloadManagerApiA3.d0((FragmentActivity) context3, cVar.f16666e, (384 & 4) != 0 ? "" : "", null, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : subject2, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
        str2 = "download_subject";
        dx.e eVar2 = cVar.f16667f;
        String str5 = cVar.f16666e;
        String subjectId4 = subject.getSubjectId();
        Boolean hasResource2 = subject.getHasResource();
        eVar2.a(str5, str2, subjectId4, num, hasResource2 != null ? hasResource2.booleanValue() : false);
    }

    private final void B(View view, Subject subject) {
        if (subject == null) {
            return;
        }
        Navigator navigatorC = TheRouter.c("/playvideo/detail");
        Integer subjectType = subject.getSubjectType();
        Navigator.x(navigatorC.F("subject_type", subjectType != null ? subjectType.intValue() : SubjectType.MOVIE.getValue()).K("id", subject.getSubjectId()).F("season", subject.getSeason()).K("ops", subject.getOps()), view.getContext(), null, 2, null);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_foryou;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder holder, final Subject item) {
        String url;
        String thumbnail;
        boolean z10 = false;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        final Integer numValueOf = baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null;
        AppCompatTextView appCompatTextView = (AppCompatTextView) holder.getViewOrNull(R$id.tv_title);
        if (appCompatTextView != null) {
            appCompatTextView.setText(item.getTitle());
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_cover);
        String str = "";
        if (shapeableImageView != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            Cover cover = item.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            Cover cover2 = item.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).d(shapeableImageView);
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) holder.getViewOrNull(R$id.tv_desc);
        if (appCompatTextView2 != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            String countryName = item.getCountryName();
            if (countryName != null && countryName.length() != 0) {
                spannableStringBuilder.append((CharSequence) item.getCountryName());
            }
            String genre = item.getGenre();
            if (genre != null && genre.length() != 0) {
                spannableStringBuilder.append((CharSequence) " / ").append((CharSequence) item.getGenre());
            }
            String releaseDate = item.getReleaseDate();
            if (releaseDate != null && releaseDate.length() != 0) {
                spannableStringBuilder.append((CharSequence) " / ").append((CharSequence) item.getReleaseDate());
            }
            Integer durationSeconds = item.getDurationSeconds();
            if (durationSeconds != null) {
                spannableStringBuilder.append((CharSequence) " / ").append((CharSequence) TimeUtilKt.f(durationSeconds.intValue()));
            }
            CharSequence charSequenceO1 = StringsKt.o1(StringsKt.n1(spannableStringBuilder), '/');
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "  ").append(charSequenceO1);
            int iA = com.transsion.moviedetailapi.g.a(item.getSubjectType());
            spannableStringBuilder2.setSpan(Build.VERSION.SDK_INT >= 29 ? new ImageSpan(appCompatTextView2.getContext(), iA, 2) : new ImageSpan(appCompatTextView2.getContext(), iA, 1), 0, 1, 34);
            appCompatTextView2.setText(spannableStringBuilder2);
        }
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) holder.getViewOrNull(R$id.tv_score);
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(item.getImdbRate());
        }
        final DownloadView downloadView = (DownloadView) holder.getViewOrNull(R$id.ll_download);
        if (downloadView != null) {
            downloadView.setPageFrom(this.f16666e);
            if (!Intrinsics.c(item.getHasResource(), Boolean.TRUE)) {
                jg.c.g(downloadView);
                return;
            }
            downloadView.setOnClickListener(new View.OnClickListener() { // from class: bp.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.A(item, downloadView, this, item, numValueOf, view);
                }
            });
            jg.c.k(downloadView);
            if (item.isShortTV()) {
                return;
            }
            if (ak.t.f652a.b()) {
                downloadView.setShowPlayType();
                return;
            }
            List<ResourceDetectors> resourceDetectors = item.getResourceDetectors();
            if (resourceDetectors != null) {
                if (!resourceDetectors.isEmpty()) {
                    String resourceId = resourceDetectors.get(0).getResourceId();
                    str = resourceId != null ? resourceId : "";
                    Integer type = resourceDetectors.get(0).getType();
                    if (type != null && type.intValue() == 1) {
                        z10 = true;
                    }
                }
                DownloadView.setShowType$default(downloadView, item.getSubjectId(), str, Boolean.valueOf(z10), false, 0, 24, null);
            }
        }
    }
}
