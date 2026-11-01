package com.transsion.moviedetail.fragment;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.preview.ImagePreviewActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0004¨\u0006\u0016"}, d2 = {"Lcom/transsion/moviedetail/fragment/StillsFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lcn/o;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Cover;", "cover", "", "d0", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "Landroid/view/LayoutInflater;", "inflater", "c0", "(Landroid/view/LayoutInflater;)Lcn/o;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class StillsFragment extends BaseFragment<cn.o> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.StillsFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StillsFragment a(Cover cover) {
            Intrinsics.h(cover, "cover");
            StillsFragment stillsFragment = new StillsFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("cover", cover);
            stillsFragment.setArguments(bundle);
            return stillsFragment;
        }
    }

    private final void d0(final Cover cover) {
        final cn.o mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            int iF = com.transsion.core.utils.e.f();
            ej.f.a aVar = ej.f.f61882a;
            String url = cover.getUrl();
            if (url == null) {
                url = "";
            }
            String strE = ej.f.a.e(aVar, url, iF, false, false, 12, null);
            String thumbnail = cover.getThumbnail();
            com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f42991a, thumbnail == null ? "" : thumbnail, 0, 0, new Function1() { // from class: com.transsion.moviedetail.fragment.n1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return StillsFragment.e0(mViewBinding, (BitmapDrawable) obj);
                }
            }, 6, null);
            Glide.with(requireContext()).load2(strE).into(mViewBinding.f17429c);
            mViewBinding.f17429c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.o1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StillsFragment.f0(cover, this, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e0(cn.o oVar, BitmapDrawable it) {
        Intrinsics.h(it, "it");
        oVar.f17428b.setImageDrawable(it);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(Cover cover, StillsFragment stillsFragment, View view) {
        ImageInfo imageInfo = new ImageInfo();
        imageInfo.bigImageUrl = cover.getUrl();
        imageInfo.thumbnailUrl = cover.getThumbnail();
        Integer height = cover.getHeight();
        imageInfo.imageViewHeight = height != null ? height.intValue() : 0.0f;
        Integer width = cover.getWidth();
        imageInfo.imageViewWidth = width != null ? width.intValue() : 0.0f;
        List listQ = CollectionsKt.q(imageInfo);
        ImagePreviewActivity.Companion companion = ImagePreviewActivity.INSTANCE;
        Context contextRequireContext = stillsFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        companion.a(contextRequireContext, 0, listQ);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public cn.o getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.o oVarC = cn.o.c(inflater);
        Intrinsics.g(oVarC, "inflate(...)");
        return oVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        Bundle arguments = getArguments();
        Cover cover = (Cover) (arguments != null ? arguments.getSerializable("cover") : null);
        if (cover != null) {
            d0(cover);
        }
    }
}
