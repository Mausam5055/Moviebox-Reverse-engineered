package com.transsion.subtitle.fragment;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle.R$drawable;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle.helper.SubtitleSearchHelper;
import com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 w2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001xB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J/\u0010\u000f\u001a\u00020\u000e2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0006J\u000f\u0010\u0018\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0018\u0010\u0006J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u001c\u0010\u0013J\u0017\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010\"\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\"\u0010#J\u001f\u0010$\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b$\u0010#J\u001f\u0010%\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b%\u0010#J#\u0010'\u001a\u00020\u000e2\b\u0010!\u001a\u0004\u0018\u00010\b2\b\u0010&\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b'\u0010(J\u0019\u0010)\u001a\u00020\u000e2\b\u0010&\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b)\u0010\u0013J-\u0010,\u001a\u00020\u000e2\b\u0010*\u001a\u0004\u0018\u00010\b2\b\u0010+\u001a\u0004\u0018\u00010\b2\b\u0010&\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b,\u0010-J\u001f\u0010/\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\bH\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\nH\u0002¢\u0006\u0004\b1\u00102J\u0017\u00104\u001a\u00020\u000e2\u0006\u00103\u001a\u00020\nH\u0003¢\u0006\u0004\b4\u0010\u0016J\u0017\u00105\u001a\u00020\u001d2\u0006\u00103\u001a\u00020\nH\u0002¢\u0006\u0004\b5\u00106J!\u00109\u001a\u00020\u000e2\u0006\u00103\u001a\u00020\n2\b\u00108\u001a\u0004\u0018\u000107H\u0002¢\u0006\u0004\b9\u0010:J!\u0010=\u001a\u00020\u000e2\u0006\u00103\u001a\u00020\n2\b\u0010<\u001a\u0004\u0018\u00010;H\u0002¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u000eH\u0016¢\u0006\u0004\b?\u0010\u0006J\u000f\u0010@\u001a\u00020\u000eH\u0016¢\u0006\u0004\b@\u0010\u0006J\u0017\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bC\u0010DJ!\u0010I\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020E2\b\u0010H\u001a\u0004\u0018\u00010GH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u000eH\u0016¢\u0006\u0004\bK\u0010\u0006J!\u0010L\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020E2\b\u0010H\u001a\u0004\u0018\u00010GH\u0016¢\u0006\u0004\bL\u0010JJ\u000f\u0010M\u001a\u00020\u000eH\u0016¢\u0006\u0004\bM\u0010\u0006J\u0017\u0010O\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020\nH\u0016¢\u0006\u0004\bO\u0010\u0016J\u0017\u0010P\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\bP\u0010\u0013J\u001f\u0010T\u001a\u00020\u000e2\u0006\u0010Q\u001a\u00020\u001d2\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bT\u0010UJ\u0017\u0010V\u001a\u00020\u000e2\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bV\u0010WJ#\u0010\\\u001a\u00020\u000e2\n\u0010Z\u001a\u00060Xj\u0002`Y2\u0006\u0010[\u001a\u00020RH\u0016¢\u0006\u0004\b\\\u0010]J\u0017\u0010`\u001a\u00020\u000e2\b\u0010_\u001a\u0004\u0018\u00010^¢\u0006\u0004\b`\u0010aR\u0018\u0010c\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010bR\u0018\u0010f\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u001c\u0010j\u001a\b\u0012\u0004\u0012\u00020\b0g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0016\u0010s\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0016\u00103\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010rR\u0016\u0010v\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010r¨\u0006y"}, d2 = {"Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;", "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;", "Lfu/g;", "Lcom/transsion/subtitle_download/a;", "Lhu/c;", "<init>", "()V", "", "Leu/a;", "list", "", "isLand", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "", "K0", "(Ljava/util/List;ZLcom/transsion/baselib/db/download/DownloadBean;)V", "bean", "P0", "(Leu/a;)V", "isChecked", "A0", "(Z)V", "O0", "o0", "q0", "()Leu/a;", "have1StBean", "n0", "", RequestParameters.POSITION, "G0", "(I)V", "videoSubtitleBean", "M0", "(Leu/a;I)V", "F0", "C0", "selected", "E0", "(Leu/a;Leu/a;)V", "B0", IntegrationConstants.TAB_BAR_POSITION_TOP, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "H0", "(Leu/a;Leu/a;Leu/a;)V", WebConstants.FIELD_ITEM, "p0", "(ILeu/a;)V", "t0", "()Z", "isOpenSubtitle", "I0", "r0", "(Z)I", "Landroidx/appcompat/widget/AppCompatTextView;", "textView", "N0", "(ZLandroidx/appcompat/widget/AppCompatTextView;)V", "Landroidx/appcompat/widget/AppCompatImageView;", "imageView", "L0", "(ZLandroidx/appcompat/widget/AppCompatImageView;)V", "onResume", "onPause", "Landroid/view/LayoutInflater;", "inflater", "s0", "(Landroid/view/LayoutInflater;)Lfu/g;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initView", "initListener", "hidden", "onHiddenChanged", "g", NotificationCompat.CATEGORY_PROGRESS, "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;", "stDownloadTable", "onDownloading", "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "onComplete", "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "dbBean", "onFail", "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "Lhu/b;", "callback", "J0", "(Lhu/b;)V", "Landroid/view/View;", "footerView", "h", "Lhu/b;", "mCallback", "", "i", "Ljava/util/List;", "dataList", "j", "Lcom/transsion/baselib/db/download/DownloadBean;", "Lcom/transsion/subtitle/adapter/b;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/subtitle/adapter/b;", "listAdapter", "l", "Z", "hasSubDownloading", "m", "n", "isOpenBilingual", "o", "a", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubtitleSelectListFragment extends SubtitleBaseFragment<fu.g> implements com.transsion.subtitle_download.a, hu.c {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private View footerView;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private hu.b mCallback;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private DownloadBean downloadBean;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private com.transsion.subtitle.adapter.b listAdapter;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean hasSubDownloading;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isOpenBilingual;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private List dataList = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isOpenSubtitle = true;

    /* JADX INFO: renamed from: com.transsion.subtitle.fragment.SubtitleSelectListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubtitleSelectListFragment a(List subtitleList, boolean z10, DownloadBean downloadBean, String str) {
            Intrinsics.h(subtitleList, "subtitleList");
            SubtitleSelectListFragment subtitleSelectListFragment = new SubtitleSelectListFragment();
            subtitleSelectListFragment.K0(subtitleList, z10, downloadBean);
            subtitleSelectListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("KEY_PAGE_NAME", str)));
            return subtitleSelectListFragment;
        }
    }

    /* JADX INFO: renamed from: com.transsion.subtitle.fragment.SubtitleSelectListFragment$onComplete$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.subtitle.fragment.SubtitleSelectListFragment$onComplete$1", f = "SubtitleSelectListFragment.kt", l = {234}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = SubtitleSelectListFragment.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            n0 n0Var;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                n0 n0Var2 = (n0) this.L$0;
                this.L$0 = n0Var2;
                this.label = 1;
                if (u0.a(500L, this) == objF) {
                    return objF;
                }
                n0Var = n0Var2;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n0Var = (n0) this.L$0;
                ResultKt.b(obj);
            }
            com.transsion.subtitle.a.f54738a.a(n0Var.getClass().getSimpleName() + " --> onComplete() --> 刷新列表 --> 刷新状态");
            SubtitleSelectListFragment.this.onHiddenChanged(false);
            return Unit.f67061a;
        }
    }

    private final void A0(boolean isChecked) {
        if (isChecked) {
            O0();
        } else {
            o0();
        }
    }

    private final void B0(eu.a selected) {
        eu.a aVar;
        List<Object> data;
        com.transsion.subtitle.adapter.b bVar = this.listAdapter;
        eu.a aVar2 = null;
        if (bVar == null || (data = bVar.getData()) == null) {
            aVar = null;
        } else {
            Iterator<T> it = data.iterator();
            aVar = null;
            while (it.hasNext()) {
                eu.a aVar3 = (eu.a) it.next();
                if (aVar3.f() && TextUtils.equals("1st", aVar3.a())) {
                    aVar2 = aVar3;
                } else if (aVar3.f() && TextUtils.equals("2nd", aVar3.a())) {
                    aVar = aVar3;
                }
            }
        }
        H0(aVar2, aVar, selected);
    }

    private final void C0(eu.a videoSubtitleBean, int position) {
        int i11;
        List<Object> data;
        com.transsion.subtitle.adapter.b bVar;
        List<Object> data2;
        List<Object> data3;
        List<Object> data4;
        int i12 = 0;
        if (videoSubtitleBean.f()) {
            videoSubtitleBean.l(false);
            videoSubtitleBean.g("");
            com.transsion.subtitle.adapter.b bVar2 = this.listAdapter;
            if (bVar2 != null) {
                bVar2.notifyItemChanged(position, videoSubtitleBean);
            }
            com.transsion.subtitle.adapter.b bVar3 = this.listAdapter;
            if (bVar3 != null && (data4 = bVar3.getData()) != null) {
                for (Object obj : data4) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        CollectionsKt.u();
                    }
                    eu.a aVar = (eu.a) obj;
                    if (TextUtils.equals(aVar.a(), "2nd")) {
                        aVar.g("1st");
                        com.transsion.subtitle.adapter.b bVar4 = this.listAdapter;
                        if (bVar4 != null) {
                            bVar4.notifyItemChanged(i12, aVar);
                        }
                    }
                    i12 = i13;
                }
            }
            B0(null);
            return;
        }
        com.transsion.subtitle.adapter.b bVar5 = this.listAdapter;
        if (bVar5 == null || (data3 = bVar5.getData()) == null) {
            i11 = 0;
        } else {
            Iterator<T> it = data3.iterator();
            i11 = 0;
            while (it.hasNext()) {
                if (!TextUtils.isEmpty(((eu.a) it.next()).a())) {
                    i11++;
                }
            }
        }
        if (i11 >= 2 && (bVar = this.listAdapter) != null && (data2 = bVar.getData()) != null) {
            int i14 = 0;
            for (Object obj2 : data2) {
                int i15 = i14 + 1;
                if (i14 < 0) {
                    CollectionsKt.u();
                }
                eu.a aVar2 = (eu.a) obj2;
                if (TextUtils.equals(aVar2.a(), "2nd")) {
                    aVar2.l(false);
                    aVar2.g("");
                    com.transsion.subtitle.adapter.b bVar6 = this.listAdapter;
                    if (bVar6 != null) {
                        bVar6.notifyItemChanged(i14, aVar2);
                    }
                }
                i14 = i15;
            }
        }
        videoSubtitleBean.l(true);
        com.transsion.subtitle.adapter.b bVar7 = this.listAdapter;
        if (bVar7 != null && (data = bVar7.getData()) != null) {
            Iterator<T> it2 = data.iterator();
            while (it2.hasNext()) {
                if (TextUtils.equals(((eu.a) it2.next()).a(), "1st")) {
                    i12 = 1;
                }
            }
        }
        if (i12 != 0) {
            videoSubtitleBean.g("2nd");
        } else {
            videoSubtitleBean.g("1st");
        }
        com.transsion.subtitle.adapter.b bVar8 = this.listAdapter;
        if (bVar8 != null) {
            bVar8.notifyItemChanged(position, videoSubtitleBean);
        }
        B0(videoSubtitleBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(SubtitleSelectListFragment subtitleSelectListFragment, SubtitleDownloadTable subtitleDownloadTable) {
        List<Object> data;
        Object next;
        com.transsion.subtitle.adapter.b bVar = subtitleSelectListFragment.listAdapter;
        if (bVar == null || (data = bVar.getData()) == null) {
            return;
        }
        Iterator<T> it = data.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((eu.a) next).b().getId(), subtitleDownloadTable.getId()));
        eu.a aVar = (eu.a) next;
        if (aVar != null) {
            aVar.h(subtitleDownloadTable);
            com.transsion.subtitle.a aVar2 = com.transsion.subtitle.a.f54738a;
            String simpleName = SubtitleSelectListFragment.class.getSimpleName();
            DownloadBean downloadBean = subtitleSelectListFragment.downloadBean;
            String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
            DownloadBean downloadBean2 = subtitleSelectListFragment.downloadBean;
            String resourceId = downloadBean2 != null ? downloadBean2.getResourceId() : null;
            aVar2.a(simpleName + " --> onFail() --> 内置字幕点击下载失败TnT，name = " + totalTitleName + ", videoResourceId = " + resourceId + ",\" + \" download subtitleName = " + aVar.b().getName() + ", lan = " + aVar.b().getLan() + "， status:" + subtitleDownloadTable.getStatus() + "~");
            subtitleSelectListFragment.P0(aVar);
        }
    }

    private final void E0(eu.a videoSubtitleBean, eu.a selected) {
        List<Object> data;
        SubtitleDownloadTable subtitleDownloadTableB;
        com.transsion.subtitle.adapter.b bVar = this.listAdapter;
        if (bVar != null && (data = bVar.getData()) != null) {
            int i11 = 0;
            for (Object obj : data) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                eu.a aVar = (eu.a) obj;
                if (Intrinsics.c(aVar.b().getId(), (videoSubtitleBean == null || (subtitleDownloadTableB = videoSubtitleBean.b()) == null) ? null : subtitleDownloadTableB.getId())) {
                    aVar.l(true);
                    com.transsion.subtitle.adapter.b bVar2 = this.listAdapter;
                    if (bVar2 != null) {
                        bVar2.notifyItemChanged(i11, aVar);
                    }
                } else {
                    aVar.l(false);
                    com.transsion.subtitle.adapter.b bVar3 = this.listAdapter;
                    if (bVar3 != null) {
                        bVar3.notifyItemChanged(i11, aVar);
                    }
                }
                i11 = i12;
            }
        }
        H0(videoSubtitleBean, null, selected);
    }

    private final void F0(eu.a videoSubtitleBean, int position) {
        if (!videoSubtitleBean.f()) {
            E0(videoSubtitleBean, videoSubtitleBean);
            return;
        }
        com.transsion.subtitle.a.f54738a.a(SubtitleSelectListFragment.class.getSimpleName() + " --> setSubtitle() --> 单字幕 --> 已经选中的就不在重复设置了");
    }

    private final void G0(int position) {
        if (this.isOpenSubtitle) {
            eu.a aVar = (eu.a) this.dataList.get(position);
            if (aVar.d()) {
                M0(aVar, position);
            } else {
                aVar.b().setSetImmediately(true);
                p0(position, aVar);
            }
        }
    }

    private final void H0(eu.a top, eu.a bottom, eu.a selected) {
        hu.b bVar;
        String string;
        if ((top != null || bottom != null) && (bVar = this.mCallback) != null) {
            Context context = getContext();
            if (context == null || (string = context.getString(R$string.subtitle_switch_toast)) == null) {
                string = "";
            }
            bVar.c(string);
        }
        hu.b bVar2 = this.mCallback;
        if (bVar2 != null) {
            bVar2.k(top, bottom, this.isOpenBilingual, selected);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void I0(boolean isOpenSubtitle) {
        ImageView imageView;
        TextView textView;
        ImageView imageView2;
        TextView textView2;
        SwitchButton switchButton;
        SwitchButton switchButton2;
        fu.g gVar = (fu.g) getMViewBinding();
        N0(isOpenSubtitle, gVar != null ? gVar.f62513k : null);
        fu.g gVar2 = (fu.g) getMViewBinding();
        N0(isOpenSubtitle, gVar2 != null ? gVar2.f62512j : null);
        fu.g gVar3 = (fu.g) getMViewBinding();
        N0(isOpenSubtitle, gVar3 != null ? gVar3.f62511i : null);
        fu.g gVar4 = (fu.g) getMViewBinding();
        L0(isOpenSubtitle, gVar4 != null ? gVar4.f62504b : null);
        fu.g gVar5 = (fu.g) getMViewBinding();
        L0(isOpenSubtitle, gVar5 != null ? gVar5.f62505c : null);
        int color = androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_start);
        int color2 = androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_end);
        int color3 = androidx.core.content.b.getColor(Utils.a(), R$color.common_white);
        if (!isOpenSubtitle) {
            fu.g gVar6 = (fu.g) getMViewBinding();
            if (gVar6 == null || (switchButton2 = gVar6.f62509g) == null || !switchButton2.isChecked()) {
                color = androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_start);
                color2 = androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_end);
                color3 = androidx.core.content.b.getColor(Utils.a(), R$color.white_50);
            } else {
                color = androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_start_50);
                color2 = androidx.core.content.b.getColor(Utils.a(), R$color.brand_new_gradient_end_50);
                color3 = androidx.core.content.b.getColor(Utils.a(), R$color.white_50);
            }
        }
        fu.g gVar7 = (fu.g) getMViewBinding();
        if (gVar7 != null && (switchButton = gVar7.f62509g) != null) {
            switchButton.setGradientColors(color, color2, Integer.valueOf(color3));
            switchButton.setEnable(isOpenSubtitle);
        }
        com.transsion.subtitle.adapter.b bVar = this.listAdapter;
        if (bVar != null) {
            bVar.G1(isOpenSubtitle);
        }
        if (isOpenSubtitle) {
            View view = this.footerView;
            if (view != null && (textView2 = (TextView) view.findViewById(R$id.tvText)) != null) {
                textView2.setTextColor(androidx.core.content.b.getColor(Utils.a(), R$color.white));
            }
            View view2 = this.footerView;
            if (view2 == null || (imageView2 = (ImageView) view2.findViewById(R$id.ivImage)) == null) {
                return;
            }
            imageView2.setImageResource(R$drawable.subtitle_arrow_left_white);
            return;
        }
        View view3 = this.footerView;
        if (view3 != null && (textView = (TextView) view3.findViewById(R$id.tvText)) != null) {
            textView.setTextColor(androidx.core.content.b.getColor(Utils.a(), R$color.white_40));
        }
        View view4 = this.footerView;
        if (view4 == null || (imageView = (ImageView) view4.findViewById(R$id.ivImage)) == null) {
            return;
        }
        imageView.setImageResource(R$drawable.subtitle_arrow_left_white_2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0(List list, boolean isLand, DownloadBean downloadBean) {
        this.downloadBean = downloadBean;
        this.dataList.clear();
        this.dataList.addAll(list);
        int size = this.dataList.size();
        String str = "";
        for (int i11 = 0; i11 < size; i11++) {
            eu.a aVar = (eu.a) this.dataList.get(i11);
            if (aVar.f()) {
                str = "获取选中的那个 -- index = " + i11 + " -- name = " + aVar.b().getName();
            }
        }
        com.transsion.subtitle.a.f54738a.a(SubtitleSelectListFragment.class.getSimpleName() + " --> setData() --> isLand = " + isLand + " --> list = " + list.size() + " --> tag = " + str);
    }

    private final void L0(boolean isOpenSubtitle, AppCompatImageView imageView) {
        Drawable drawable;
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return;
        }
        a1.a.n(drawable, r0(isOpenSubtitle));
        imageView.setImageDrawable(drawable);
    }

    private final void M0(eu.a videoSubtitleBean, int position) {
        if (this.isOpenBilingual) {
            C0(videoSubtitleBean, position);
        } else {
            F0(videoSubtitleBean, position);
        }
    }

    private final void N0(boolean isOpenSubtitle, AppCompatTextView textView) {
        if (textView != null) {
            textView.setTextColor(r0(isOpenSubtitle));
        }
    }

    private final void O0() {
        boolean z10;
        eu.a aVar;
        com.transsion.subtitle.adapter.b bVar;
        List<Object> data;
        List<Object> data2;
        com.transsion.subtitle.adapter.b bVar2 = this.listAdapter;
        int i11 = 0;
        if (bVar2 == null || (data2 = bVar2.getData()) == null) {
            z10 = false;
            aVar = null;
        } else {
            z10 = false;
            int i12 = 0;
            aVar = null;
            for (Object obj : data2) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                eu.a aVar2 = (eu.a) obj;
                if (aVar2.f()) {
                    aVar2.g("1st");
                    z10 = true;
                    aVar = aVar2;
                }
                i12 = i13;
            }
        }
        if (!z10 && (bVar = this.listAdapter) != null && (data = bVar.getData()) != null) {
            for (Object obj2 : data) {
                int i14 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                eu.a aVar3 = (eu.a) obj2;
                if (aVar3.d() && !z10) {
                    aVar3.l(true);
                    aVar3.g("1st");
                    z10 = true;
                    aVar = aVar3;
                }
                i11 = i14;
            }
        }
        n0(aVar);
        B0(null);
    }

    private final void P0(eu.a bean) {
        int iIndexOf;
        com.transsion.subtitle.adapter.b bVar = this.listAdapter;
        if (bVar == null || (iIndexOf = bVar.getData().indexOf(bean)) < 0 || !isAdded()) {
            return;
        }
        com.transsion.subtitle.a.f54738a.a(SubtitleSelectListFragment.class.getSimpleName() + " --> updateDownloadStatus() --> updateDownloadStatus index:" + iIndexOf + ", status:" + bean.b().getStatus() + ",name:" + bean.b().getName() + ",isSelect:" + bean.f());
        com.transsion.subtitle.adapter.b bVar2 = this.listAdapter;
        if (bVar2 != null) {
            bVar2.notifyItemChanged(iIndexOf, bean);
        }
    }

    private final void n0(eu.a have1StBean) {
        List<Object> data;
        SubtitleDownloadTable subtitleDownloadTableB;
        List<Object> data2;
        SubtitleDownloadTable subtitleDownloadTableB2;
        SubtitleDownloadTable subtitleDownloadTableB3;
        eu.a aVarQ0 = q0();
        boolean zEquals = TextUtils.equals((have1StBean == null || (subtitleDownloadTableB3 = have1StBean.b()) == null) ? null : subtitleDownloadTableB3.getId(), (aVarQ0 == null || (subtitleDownloadTableB2 = aVarQ0.b()) == null) ? null : subtitleDownloadTableB2.getId());
        int i11 = 0;
        if (zEquals || aVarQ0 == null) {
            com.transsion.subtitle.adapter.b bVar = this.listAdapter;
            if (bVar == null || (data = bVar.getData()) == null) {
                return;
            }
            for (Object obj : data) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                eu.a aVar = (eu.a) obj;
                if (!TextUtils.equals(aVar.b().getId(), (aVarQ0 == null || (subtitleDownloadTableB = aVarQ0.b()) == null) ? null : subtitleDownloadTableB.getId()) && !aVar.f()) {
                    p0(i11, aVar);
                    com.transsion.subtitle.a.f54738a.a(SubtitleSelectListFragment.class.getSimpleName() + " --> autoShowNdSubtitle() --> 如果按照规则获取到的2nd和1st是同一个，那就默认下载一个作为2nd");
                    return;
                }
                i11 = i12;
            }
            return;
        }
        if (aVarQ0.d()) {
            if (aVarQ0.f()) {
                return;
            }
            aVarQ0.g("2nd");
            aVarQ0.l(true);
            com.transsion.subtitle.a.f54738a.a(SubtitleSelectListFragment.class.getSimpleName() + " --> autoShowNdSubtitle() --> 2nd 已下载，自动设置 --> name = " + aVarQ0.b().getName());
            return;
        }
        com.transsion.subtitle.adapter.b bVar2 = this.listAdapter;
        if (bVar2 == null || (data2 = bVar2.getData()) == null) {
            return;
        }
        for (Object obj2 : data2) {
            int i13 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(aVarQ0, (eu.a) obj2)) {
                com.transsion.subtitle.a.f54738a.a(SubtitleSelectListFragment.class.getSimpleName() + " --> autoShowNdSubtitle() --> 没有下载，自动下载 --> index = " + i11 + " --> name = " + aVarQ0.b().getName());
                p0(i11, aVarQ0);
                return;
            }
            i11 = i13;
        }
    }

    private final void o0() {
        eu.a aVar;
        List<Object> data;
        com.transsion.subtitle.adapter.b bVar = this.listAdapter;
        if (bVar == null || (data = bVar.getData()) == null) {
            aVar = null;
        } else {
            Iterator<T> it = data.iterator();
            aVar = null;
            while (it.hasNext()) {
                eu.a aVar2 = (eu.a) it.next();
                if (aVar2.f()) {
                    if (TextUtils.equals("2nd", aVar2.a())) {
                        aVar2.l(false);
                        aVar2.g("");
                        if (aVar == null) {
                            aVar = aVar2;
                        }
                    } else if (TextUtils.equals("1st", aVar2.a())) {
                        aVar2.l(true);
                        aVar2.g("");
                        aVar = aVar2;
                    }
                }
            }
        }
        E0(aVar, null);
    }

    private final void p0(int position, eu.a item) {
        if (this.hasSubDownloading) {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.subtitle_is_downloading);
            return;
        }
        if (!nh.m.f70474a.e()) {
            com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.baseui.R$string.base_network_fail);
            return;
        }
        item.b().setStatus(2);
        this.hasSubDownloading = true;
        com.transsion.subtitle.adapter.b bVar = this.listAdapter;
        if (bVar != null) {
            bVar.notifyItemChanged(position, item);
        }
        com.transsion.subtitle.a aVar = com.transsion.subtitle.a.f54738a;
        String simpleName = SubtitleSelectListFragment.class.getSimpleName();
        DownloadBean downloadBean = this.downloadBean;
        String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
        aVar.a(simpleName + " --> downloadSubtitle() --> 内置字幕列表，下载字幕，name = " + totalTitleName + ", subtype = " + item.b().getType() + ",\" + \" download subtitleName = " + item.b().getSubtitleName() + ", subResourceId = " + item.b().getResourceId() + "~");
        com.transsion.subtitle.h.f54887a.b().h(item);
    }

    private final eu.a q0() {
        eu.a aVar;
        eu.a aVar2;
        eu.a aVar3;
        eu.a aVar4;
        List<Object> data;
        com.transsion.subtitle.adapter.b bVar = this.listAdapter;
        if (bVar == null || (data = bVar.getData()) == null) {
            aVar = null;
            aVar2 = null;
            aVar3 = null;
            aVar4 = null;
        } else {
            aVar = null;
            aVar2 = null;
            aVar3 = null;
            aVar4 = null;
            int i11 = 0;
            for (Object obj : data) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                eu.a aVar5 = (eu.a) obj;
                if (!aVar5.f()) {
                    if (TextUtils.equals(aVar5.b().getLan(), "en")) {
                        aVar = aVar5;
                    }
                    if (TextUtils.equals(com.transsion.baselib.report.launch.b.f43370a.b().getString("k_language_short_name", null), aVar5.b().getLan())) {
                        aVar2 = aVar5;
                    }
                    if (TextUtils.equals((Build.VERSION.SDK_INT >= 24 ? Utils.a().getResources().getConfiguration().getLocales().get(0) : Utils.a().getResources().getConfiguration().locale).getLanguage(), aVar5.b().getLan())) {
                        aVar3 = aVar5;
                    }
                    if (i11 == 0) {
                        aVar4 = aVar5;
                    }
                }
                i11 = i12;
            }
        }
        if (aVar != null) {
            return aVar;
        }
        if (aVar2 != null) {
            return aVar2;
        }
        if (aVar3 != null) {
            return aVar3;
        }
        if (aVar4 != null) {
            return aVar4;
        }
        return null;
    }

    private final int r0(boolean isOpenSubtitle) {
        return isOpenSubtitle ? androidx.core.content.b.getColor(Utils.a(), R$color.white) : androidx.core.content.b.getColor(Utils.a(), R$color.white_40);
    }

    private final boolean t0() {
        hu.b bVar;
        String string;
        List<Object> data;
        com.transsion.subtitle.adapter.b bVar2 = this.listAdapter;
        boolean z10 = false;
        if (bVar2 != null && (data = bVar2.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (it.hasNext()) {
                if (((eu.a) it.next()).f()) {
                    z10 = true;
                }
            }
        }
        if (!z10 && (bVar = this.mCallback) != null) {
            Context context = getContext();
            if (context == null || (string = context.getString(R$string.subtitle_please_select_subtitles)) == null) {
                string = "";
            }
            bVar.c(string);
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(SubtitleSelectListFragment subtitleSelectListFragment, SwitchButton switchButton, boolean z10) {
        subtitleSelectListFragment.isOpenBilingual = z10;
        hu.b bVar = subtitleSelectListFragment.mCallback;
        if (bVar != null) {
            bVar.f(z10);
        }
        subtitleSelectListFragment.A0(z10);
        com.transsion.subtitle.adapter.b bVar2 = subtitleSelectListFragment.listAdapter;
        if (bVar2 != null) {
            bVar2.F1(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(SubtitleSelectListFragment subtitleSelectListFragment, View view) {
        SubtitleDownloadViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarH;
        if (subtitleSelectListFragment.isOpenSubtitle && subtitleSelectListFragment.t0() && (viewModel = subtitleSelectListFragment.getViewModel()) != null && (b0VarH = viewModel.h()) != null) {
            b0VarH.q("SUBTITLE_OPTIONS");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(SubtitleSelectListFragment subtitleSelectListFragment, View view) {
        SubtitleDownloadViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarH;
        if (subtitleSelectListFragment.isOpenSubtitle && subtitleSelectListFragment.t0() && (viewModel = subtitleSelectListFragment.getViewModel()) != null && (b0VarH = viewModel.h()) != null) {
            b0VarH.q("SUBTITLE_SYNC_ADJUST");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(SubtitleSelectListFragment subtitleSelectListFragment, SwitchButton switchButton, boolean z10) {
        subtitleSelectListFragment.isOpenSubtitle = z10;
        hu.b bVar = subtitleSelectListFragment.mCallback;
        if (bVar != null) {
            bVar.b(z10);
        }
        subtitleSelectListFragment.I0(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(SubtitleSelectListFragment subtitleSelectListFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        subtitleSelectListFragment.G0(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(SubtitleSelectListFragment subtitleSelectListFragment, View view) {
        androidx.p009lifecycle.b0 b0VarH;
        androidx.p009lifecycle.b0 b0VarN;
        if (subtitleSelectListFragment.isOpenSubtitle) {
            SubtitleDownloadViewModel viewModel = subtitleSelectListFragment.getViewModel();
            if (viewModel != null && (b0VarN = viewModel.n()) != null) {
                b0VarN.q(SubtitleSearchHelper.f54890c.a().e(subtitleSelectListFragment.downloadBean));
            }
            SubtitleDownloadViewModel viewModel2 = subtitleSelectListFragment.getViewModel();
            if (viewModel2 == null || (b0VarH = viewModel2.h()) == null) {
                return;
            }
            b0VarH.q("DOWNLOAD_SUBTITLE");
        }
    }

    @Override // hu.c
    public void J(boolean z10, DownloadBean downloadBean) {
        hu.c.a.a(this, z10, downloadBean);
    }

    public final void J0(hu.b callback) {
        this.mCallback = callback;
        this.isOpenSubtitle = callback != null ? callback.l() : true;
        this.isOpenBilingual = callback != null ? callback.g() : false;
    }

    @Override // hu.c
    public void g(eu.a bean) {
        Intrinsics.h(bean, "bean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initListener() {
        SwitchButton switchButton;
        SwitchButton switchButton2;
        LinearLayoutCompat linearLayoutCompat;
        LinearLayoutCompat linearLayoutCompat2;
        super.initListener();
        fu.g gVar = (fu.g) getMViewBinding();
        if (gVar != null && (linearLayoutCompat2 = gVar.f62506d) != null) {
            linearLayoutCompat2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.fragment.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubtitleSelectListFragment.v0(this.f54879a, view);
                }
            });
        }
        fu.g gVar2 = (fu.g) getMViewBinding();
        if (gVar2 != null && (linearLayoutCompat = gVar2.f62507e) != null) {
            linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.fragment.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubtitleSelectListFragment.w0(this.f54880a, view);
                }
            });
        }
        fu.g gVar3 = (fu.g) getMViewBinding();
        if (gVar3 != null && (switchButton2 = gVar3.f62510h) != null) {
            switchButton2.setChecked(this.isOpenSubtitle);
            I0(this.isOpenSubtitle);
            switchButton2.setOnCheckedChangeListener(new SwitchButton.d() { // from class: com.transsion.subtitle.fragment.v
                @Override // com.tn.lib.view.SwitchButton.d
                public final void a(SwitchButton switchButton3, boolean z10) {
                    SubtitleSelectListFragment.x0(this.f54881a, switchButton3, z10);
                }
            });
        }
        fu.g gVar4 = (fu.g) getMViewBinding();
        if (gVar4 == null || (switchButton = gVar4.f62509g) == null) {
            return;
        }
        switchButton.setChecked(this.isOpenBilingual);
        switchButton.setOnCheckedChangeListener(new SwitchButton.d() { // from class: com.transsion.subtitle.fragment.w
            @Override // com.tn.lib.view.SwitchButton.d
            public final void a(SwitchButton switchButton3, boolean z10) {
                SubtitleSelectListFragment.u0(this.f54882a, switchButton3, z10);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        com.transsion.subtitle.adapter.b bVar;
        Intrinsics.h(view, "view");
        com.transsion.subtitle.adapter.b bVar2 = new com.transsion.subtitle.adapter.b(this.dataList);
        bVar2.w1(new p6.d() { // from class: com.transsion.subtitle.fragment.x
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                SubtitleSelectListFragment.y0(this.f54883a, baseQuickAdapter, view2, i11);
            }
        });
        bVar2.G1(this.isOpenSubtitle);
        bVar2.F1(this.isOpenBilingual);
        this.listAdapter = bVar2;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.footer_download_other_subtitle_layout, (ViewGroup) null);
        this.footerView = viewInflate;
        if (viewInflate != null) {
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.fragment.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubtitleSelectListFragment.z0(this.f54884a, view2);
                }
            });
        }
        View view2 = this.footerView;
        if (view2 != null && (bVar = this.listAdapter) != null) {
            BaseQuickAdapter.u(bVar, view2, 0, 0, 6, null);
        }
        fu.g gVar = (fu.g) getMViewBinding();
        if (gVar == null || (recyclerView = gVar.f62508f) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.listAdapter);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.subtitle_download.a
    public void onComplete(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        this.hasSubDownloading = false;
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // com.transsion.subtitle_download.a
    public void onDownloading(int progress, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override // com.transsion.subtitle_download.a
    public void onFail(Exception e11, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e11, "e");
        Intrinsics.h(dbBean, "dbBean");
        this.hasSubDownloading = false;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.transsion.subtitle.fragment.z
                @Override // java.lang.Runnable
                public final void run() {
                    SubtitleSelectListFragment.D0(this.f54885a, dbBean);
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        hu.b bVar;
        List listJ;
        List<Object> data;
        super.onHiddenChanged(hidden);
        if (hidden || (bVar = this.mCallback) == null || (listJ = bVar.j()) == null) {
            return;
        }
        com.transsion.subtitle.a aVar = com.transsion.subtitle.a.f54738a;
        String simpleName = SubtitleSelectListFragment.class.getSimpleName();
        int size = listJ.size();
        com.transsion.subtitle.adapter.b bVar2 = this.listAdapter;
        aVar.a(simpleName + " --> onHiddenChanged(hidden = false) --> 刷新界面 --> newSize = " + size + " --> oldSize = " + ((bVar2 == null || (data = bVar2.getData()) == null) ? null : Integer.valueOf(data.size())));
        this.dataList.clear();
        this.dataList.addAll(listJ);
        com.transsion.subtitle.adapter.b bVar3 = this.listAdapter;
        if (bVar3 != null) {
            bVar3.n1(this.dataList);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.transsion.subtitle.h.a aVar = com.transsion.subtitle.h.f54887a;
        aVar.b().c(this);
        aVar.b().f(this);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.transsion.subtitle.h.a aVar = com.transsion.subtitle.h.f54887a;
        aVar.b().b(this);
        aVar.b().d(this);
    }

    @Override // com.transsion.subtitle_download.a
    public void onSaveDownload(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.a(this, subtitleDownloadTable);
    }

    @Override // com.transsion.subtitle_download.a
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.b(this, subtitleDownloadTable);
    }

    @Override // com.transsion.subtitle.fragment.SubtitleBaseFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        e0("dialog_subtitle_select");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public fu.g getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fu.g gVarC = fu.g.c(inflater);
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }
}
