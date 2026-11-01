package com.transsion.ugcvideodetail.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.R$string;
import com.transsion.play.detail.fragment.BaseBottomDialogFragment;
import com.transsion.ugcvideodetail.R$drawable;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.wrapperad.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0004R\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;", "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;", "Lqv/j;", "<init>", "()V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "", "F0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "G0", "D0", "", "isSubscribed", "I0", "(Z)V", "E0", "Landroid/view/LayoutInflater;", "inflater", "w0", "(Landroid/view/LayoutInflater;)Lqv/j;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "v0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "mViewModel", "c", "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDialogInfoDialogFragment extends BaseBottomDialogFragment<qv.j> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDialogInfoDialogFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDialogInfoDialogFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.fragment.UGCVideoDialogInfoDialogFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCVideoDialogInfoDialogFragment a() {
            return new UGCVideoDialogInfoDialogFragment();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f56170a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56170a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f56170a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f56170a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(UGCVideoDialogInfoDialogFragment uGCVideoDialogInfoDialogFragment, View view) {
        uGCVideoDialogInfoDialogFragment.E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B0(UGCVideoDialogInfoDialogFragment uGCVideoDialogInfoDialogFragment, UGCVideo uGCVideo) {
        if (uGCVideo == null) {
            return Unit.f67061a;
        }
        uGCVideoDialogInfoDialogFragment.F0(uGCVideo);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(UGCVideoDialogInfoDialogFragment uGCVideoDialogInfoDialogFragment, Pair pair) {
        UGCVideoCreator creator;
        Boolean hasSubscribe;
        if (pair != null) {
            uGCVideoDialogInfoDialogFragment.I0(((Boolean) pair.getSecond()).booleanValue());
        } else {
            UGCVideo uGCVideo = (UGCVideo) uGCVideoDialogInfoDialogFragment.v0().G().f();
            if (uGCVideo != null && (creator = uGCVideo.getCreator()) != null && (hasSubscribe = creator.getHasSubscribe()) != null) {
                uGCVideoDialogInfoDialogFragment.I0(hasSubscribe.booleanValue());
            }
        }
        return Unit.f67061a;
    }

    private final void D0() {
        UGCVideoCreator creator;
        String uid;
        UGCVideo uGCVideo = (UGCVideo) v0().G().f();
        if (uGCVideo == null || (creator = uGCVideo.getCreator()) == null || (uid = creator.getUid()) == null) {
            return;
        }
        boolean z10 = !Intrinsics.c(creator.getHasSubscribe(), Boolean.TRUE);
        I0(z10);
        v0().n0(uid, z10);
    }

    private final void E0() {
        UGCVideoCreator creator;
        String uid;
        Context context = getContext();
        FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        UGCVideo uGCVideo = (UGCVideo) v0().G().f();
        if (uGCVideo == null || fragmentActivity == null || fragmentActivity.isFinishing() || fragmentActivity.isDestroyed() || (creator = uGCVideo.getCreator()) == null || (uid = creator.getUid()) == null) {
            return;
        }
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", uid), requireContext(), null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void F0(UGCVideo video) {
        AppCompatTextView appCompatTextView;
        RecyclerView recyclerView;
        BLTextView bLTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        ShapeableImageView shapeableImageView;
        AppCompatTextView appCompatTextView5;
        qv.j jVar = (qv.j) getMViewBinding();
        if (jVar != null && (appCompatTextView5 = jVar.f73786i) != null) {
            appCompatTextView5.setText(video.getTitle());
        }
        UGCVideoCreator creator = video.getCreator();
        if (creator != null) {
            qv.j jVar2 = (qv.j) getMViewBinding();
            if (jVar2 != null && (shapeableImageView = jVar2.f73780c) != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarI = aVar.m(context).i(R$color.white_20);
                String avatar = creator.getAvatar();
                if (avatar == null) {
                    avatar = "";
                }
                bVarI.g(avatar).d(shapeableImageView);
            }
            qv.j jVar3 = (qv.j) getMViewBinding();
            if (jVar3 != null && (appCompatTextView4 = jVar3.f73787j) != null) {
                appCompatTextView4.setText(creator.getNickname());
            }
            I0(Intrinsics.c(creator.getHasSubscribe(), Boolean.TRUE));
        }
        String description = video.getDescription();
        if (description == null || description.length() == 0) {
            qv.j jVar4 = (qv.j) getMViewBinding();
            if (jVar4 != null && (appCompatTextView = jVar4.f73782e) != null) {
                appCompatTextView.setVisibility(8);
            }
        } else {
            qv.j jVar5 = (qv.j) getMViewBinding();
            if (jVar5 != null && (appCompatTextView3 = jVar5.f73782e) != null) {
                appCompatTextView3.setText(video.getDescription());
            }
            qv.j jVar6 = (qv.j) getMViewBinding();
            if (jVar6 != null && (appCompatTextView2 = jVar6.f73782e) != null) {
                appCompatTextView2.setVisibility(0);
            }
        }
        G0(video);
        if (ak.o.f646a.i()) {
            qv.j jVar7 = (qv.j) getMViewBinding();
            if (jVar7 != null && (bLTextView = jVar7.f73784g) != null) {
                bLTextView.setVisibility(8);
            }
            qv.j jVar8 = (qv.j) getMViewBinding();
            if (jVar8 == null || (recyclerView = jVar8.f73781d) == null) {
                return;
            }
            recyclerView.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void G0(final UGCVideo video) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        List<UGCVideoHashTag> filteredHashTags = video.getFilteredHashTags();
        if (filteredHashTags == null || filteredHashTags.isEmpty()) {
            qv.j jVar = (qv.j) getMViewBinding();
            if (jVar == null || (recyclerView = jVar.f73781d) == null) {
                return;
            }
            recyclerView.setVisibility(8);
            return;
        }
        qv.j jVar2 = (qv.j) getMViewBinding();
        if (jVar2 != null && (recyclerView3 = jVar2.f73781d) != null) {
            recyclerView3.setVisibility(0);
        }
        List<UGCVideoHashTag> filteredHashTags2 = video.getFilteredHashTags();
        Intrinsics.e(filteredHashTags2);
        com.transsion.ugcvideodetail.adapter.i iVar = new com.transsion.ugcvideodetail.adapter.i(filteredHashTags2, false, 2, null);
        qv.j jVar3 = (qv.j) getMViewBinding();
        if (jVar3 != null && (recyclerView2 = jVar3.f73781d) != null) {
            recyclerView2.setAdapter(iVar);
        }
        iVar.w1(new p6.d() { // from class: com.transsion.ugcvideodetail.fragment.f1
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCVideoDialogInfoDialogFragment.H0(video, this, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(UGCVideo uGCVideo, UGCVideoDialogInfoDialogFragment uGCVideoDialogInfoDialogFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<UGCVideoHashTag> filteredHashTags = uGCVideo.getFilteredHashTags();
        UGCVideoHashTag uGCVideoHashTag = filteredHashTags != null ? (UGCVideoHashTag) CollectionsKt.l0(filteredHashTags, i11) : null;
        Fragment parentFragment = uGCVideoDialogInfoDialogFragment.getParentFragment();
        UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment = parentFragment instanceof UGCVideoDetailBaseFragment ? (UGCVideoDetailBaseFragment) parentFragment : null;
        com.transsion.ugcvideodetail.hepler.h.f56367a.a("/ugc_video/detail", "hash_tag", uGCVideo, (384 & 8) != 0 ? null : uGCVideoHashTag != null ? uGCVideoHashTag.getTag() : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        List<UGCVideoHashTag> filteredHashTags2 = uGCVideo.getFilteredHashTags();
        if (filteredHashTags2 != null) {
            new ArrayList(filteredHashTags2);
        } else {
            new ArrayList();
        }
        Navigator.x(TheRouter.c("/home/hashtag").I("titleHashTag", uGCVideoHashTag).K("UGCVideoId", uGCVideo.getUgcVideoId()), uGCVideoDialogInfoDialogFragment.requireContext(), null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void I0(boolean isSubscribed) {
        BLTextView bLTextView;
        qv.j jVar = (qv.j) getMViewBinding();
        if (jVar == null || (bLTextView = jVar.f73784g) == null) {
            return;
        }
        if (isSubscribed) {
            bLTextView.setBackground(new DrawableCreator.Builder().setSolidColor(androidx.core.content.b.getColor(bLTextView.getContext(), com.tn.lib.widget.R$color.white_10)).setCornersRadius(com.blankj.utilcode.util.a0.a(4.0f)).build());
            bLTextView.setTextColor(androidx.core.content.b.getColor(bLTextView.getContext(), com.tn.lib.widget.R$color.white));
            bLTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ugc_video_detail_ic_subscribed_hook, 0, 0, 0);
            bLTextView.setText(bLTextView.getContext().getString(R$string.str_Subscribed));
            return;
        }
        bLTextView.setBackground(new DrawableCreator.Builder().setSolidColor(androidx.core.content.b.getColor(bLTextView.getContext(), com.tn.lib.widget.R$color.white)).setCornersRadius(com.blankj.utilcode.util.a0.a(4.0f)).build());
        bLTextView.setTextColor(androidx.core.content.b.getColor(bLTextView.getContext(), com.tn.lib.widget.R$color.gray_dark_00));
        bLTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ugc_video_detail_ic_subscribe_add, 0, 0, 0);
        bLTextView.setText(bLTextView.getContext().getString(R$string.str_Subscribe));
    }

    private final UGCVideoDetailViewModel v0() {
        return (UGCVideoDetailViewModel) this.mViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(UGCVideoDialogInfoDialogFragment uGCVideoDialogInfoDialogFragment, View view) {
        BaseBottomDialogFragment.m0(uGCVideoDialogInfoDialogFragment, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(UGCVideoDialogInfoDialogFragment uGCVideoDialogInfoDialogFragment, View view) {
        uGCVideoDialogInfoDialogFragment.D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(UGCVideoDialogInfoDialogFragment uGCVideoDialogInfoDialogFragment, View view) {
        uGCVideoDialogInfoDialogFragment.E0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        AppCompatTextView appCompatTextView;
        ShapeableImageView shapeableImageView;
        BLTextView bLTextView;
        AppCompatImageView appCompatImageView;
        qv.j jVar = (qv.j) getMViewBinding();
        if (jVar != null && (appCompatImageView = jVar.f73779b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.b1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCVideoDialogInfoDialogFragment.x0(this.f56202a, view);
                }
            });
        }
        qv.j jVar2 = (qv.j) getMViewBinding();
        if (jVar2 != null && (bLTextView = jVar2.f73784g) != null) {
            bLTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.c1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCVideoDialogInfoDialogFragment.y0(this.f56205a, view);
                }
            });
        }
        qv.j jVar3 = (qv.j) getMViewBinding();
        if (jVar3 != null && (shapeableImageView = jVar3.f73780c) != null) {
            shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.d1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCVideoDialogInfoDialogFragment.z0(this.f56208a, view);
                }
            });
        }
        qv.j jVar4 = (qv.j) getMViewBinding();
        if (jVar4 == null || (appCompatTextView = jVar4.f73787j) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCVideoDialogInfoDialogFragment.A0(this.f56212a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        qv.j jVar = (qv.j) getMViewBinding();
        if (jVar == null || (recyclerView = jVar.f73781d) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new ig.c(dk.a.b(12), dk.a.b(8)));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        v0().G().j(this, new b(new Function1() { // from class: com.transsion.ugcvideodetail.fragment.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDialogInfoDialogFragment.B0(this.f56286a, (UGCVideo) obj);
            }
        }));
        v0().R().j(this, new b(new Function1() { // from class: com.transsion.ugcvideodetail.fragment.a1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDialogInfoDialogFragment.C0(this.f56199a, (Pair) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public qv.j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qv.j jVarC = qv.j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }
}
