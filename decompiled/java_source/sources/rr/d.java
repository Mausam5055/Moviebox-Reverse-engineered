package rr;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv._channel.ui.widget.ShortTvDownloadView;
import com.transsion.shorttv.base.widget.CornerTextView;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.ResourceDetectors;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.SubjectType;
import ej.f;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import tr.e;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74710e;

    private final void A(BaseViewHolder baseViewHolder, int i11) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) baseViewHolder.getViewOrNull(R$id.iv_tag);
        if (appCompatImageView != null) {
            if (!this.f74710e) {
                AppCompatTextView appCompatTextView = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView != null) {
                    yr.b.b(appCompatTextView);
                }
                yr.b.b(appCompatImageView);
                return;
            }
            yr.b.e(appCompatImageView);
            if (i11 == 1) {
                appCompatImageView.setImageResource(R$mipmap.short_tv_ic_rank_01);
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView2 != null) {
                    yr.b.b(appCompatTextView2);
                    return;
                }
                return;
            }
            if (i11 == 2) {
                appCompatImageView.setImageResource(R$mipmap.short_tv_ic_rank_02);
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView3 != null) {
                    yr.b.b(appCompatTextView3);
                    return;
                }
                return;
            }
            if (i11 == 3) {
                appCompatImageView.setImageResource(R$mipmap.short_tv_ic_rank_03);
                AppCompatTextView appCompatTextView4 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView4 != null) {
                    yr.b.b(appCompatTextView4);
                    return;
                }
                return;
            }
            appCompatImageView.setImageResource(R$mipmap.short_tv_ic_rank_defalut);
            appCompatImageView.setRotationY(TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? 180.0f : 0.0f);
            AppCompatTextView appCompatTextView5 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
            if (appCompatTextView5 != null) {
                yr.b.e(appCompatTextView5);
                yr.b.e(appCompatTextView5);
                StringBuilder sb2 = new StringBuilder();
                if (i11 < 10) {
                    sb2.append("0");
                    sb2.append(i11);
                } else {
                    sb2.append(i11);
                }
                appCompatTextView5.setText(sb2);
            }
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.short_tv_adapter_play_list;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, Subject item) {
        List<Object> data;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        int i11 = 0;
        int iG0 = baseProviderMultiAdapterG != null ? baseProviderMultiAdapterG.g0(item) : 0;
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tv_title);
        if (appCompatTextView != null) {
            appCompatTextView.setText(item.getTitle());
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            f.a aVar = f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            f.b bVarM = aVar.m(context);
            Cover cover = item.getCover();
            String str = "";
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            f.b bVarC = bVarM.g(url).m(y.e()).c(shapeableImageView.getHeight());
            Cover cover2 = item.getCover();
            if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarC.l(str).d(shapeableImageView);
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_desc);
        if (appCompatTextView2 != null) {
            appCompatTextView2.setText(item.getDescription());
        }
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_score);
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(item.getImdbRate());
        }
        ShortTvDownloadView shortTvDownloadView = (ShortTvDownloadView) helper.getViewOrNull(R$id.ll_download);
        if (shortTvDownloadView != null) {
            Integer subjectType = item.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                yr.b.e(shortTvDownloadView);
            } else if (e.f76350a.b()) {
                yr.b.e(shortTvDownloadView);
                shortTvDownloadView.setShowPlayType();
            } else if (Intrinsics.c(item.getHasResource(), Boolean.TRUE)) {
                yr.b.e(shortTvDownloadView);
                ResourceDetectors resourceDetector = item.getResourceDetector();
                if (resourceDetector != null) {
                    String subjectId = item.getSubjectId();
                    String resourceId = resourceDetector.getResourceId();
                    Integer type = resourceDetector.getType();
                    ShortTvDownloadView.setShowType$default(shortTvDownloadView, subjectId, resourceId, Boolean.valueOf(type != null && type.intValue() == 1), false, 0, 24, null);
                }
            } else {
                helper.setGone(R$id.ll_download, true);
            }
        }
        if (iG0 == 0) {
            View viewOrNull = helper.getViewOrNull(R$id.divider);
            if (viewOrNull != null) {
                yr.b.e(viewOrNull);
            }
            View viewOrNull2 = helper.getViewOrNull(R$id.bg_gradient);
            if (viewOrNull2 != null) {
                yr.b.e(viewOrNull2);
            }
            View viewOrNull3 = helper.getViewOrNull(R$id.item_root);
            if (viewOrNull3 != null) {
                viewOrNull3.setBackgroundResource(R$drawable.short_tv_bg_category_first_item);
            }
        } else {
            View viewOrNull4 = helper.getViewOrNull(R$id.divider);
            if (viewOrNull4 != null) {
                yr.b.b(viewOrNull4);
            }
            View viewOrNull5 = helper.getViewOrNull(R$id.bg_gradient);
            if (viewOrNull5 != null) {
                yr.b.b(viewOrNull5);
            }
            View viewOrNull6 = helper.getViewOrNull(R$id.item_root);
            if (viewOrNull6 != null) {
                viewOrNull6.setBackgroundColor(androidx.core.content.b.getColor(k(), R$color.short_tv_bg));
            }
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG2 = g();
        if (baseProviderMultiAdapterG2 != null && (data = baseProviderMultiAdapterG2.getData()) != null) {
            int i12 = 0;
            for (Object obj : data) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                Subject subject = (Subject) obj;
                if (i12 < iG0 && subject.getNonAdDelegate() != null) {
                    i11++;
                }
                i12 = i13;
            }
        }
        A(helper, (iG0 + 1) - i11);
        ((CornerTextView) helper.getView(R$id.iv_playlist_page_corner)).setTextWithType(item.getCorner(), item.getSubjectType());
    }

    public final void z(boolean z10) {
        this.f74710e = z10;
    }
}
