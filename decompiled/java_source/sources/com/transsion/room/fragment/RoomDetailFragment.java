package com.transsion.room.fragment;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.CheckInAnimationView;
import com.tn.lib.view.ToolBarCheckInAnimationView;
import com.tn.lib.view.expand.ExpandView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.publish.view.PublishStateView;
import com.transsion.room.R$drawable;
import com.transsion.room.R$string;
import com.transsion.room.activity.CreateRoomActivity;
import com.transsion.room.viewmodel.RoomDetailViewModel;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 o2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002>pB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0013\u0010\n\u001a\u00020\u0005*\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0014\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0018\u0010\u0004J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\u00052\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J)\u0010-\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u001d2\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\"H\u0016¢\u0006\u0004\b/\u0010$J\u0017\u00102\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0019H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0004J\u000f\u00107\u001a\u00020\u0005H\u0016¢\u0006\u0004\b7\u0010\u0004J\u000f\u00108\u001a\u00020\u0005H\u0016¢\u0006\u0004\b8\u0010\u0004J\u000f\u00109\u001a\u00020\u0005H\u0016¢\u0006\u0004\b9\u0010\u0004J\u000f\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0004R\u0016\u0010@\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010C\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u001e\u0010G\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u001e\u0010I\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010FR\u0018\u0010L\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010BR\u001b\u0010[\u001a\u00020V8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\u0016\u0010_\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u001d\u0010d\u001a\u0004\u0018\u00010`8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u0010X\u001a\u0004\bb\u0010cR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0014\u0010j\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010?R\u0016\u0010l\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010BR\u0016\u0010n\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010B¨\u0006q"}, d2 = {"Lcom/transsion/room/fragment/RoomDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lbq/n;", "<init>", "()V", "", "D0", "N0", "H0", "Lcom/tn/lib/view/CheckInAnimationView;", "B0", "(Lcom/tn/lib/view/CheckInAnimationView;)V", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "roomItem", "c1", "(Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "Landroid/view/View;", "tvCheckIn", "Landroid/widget/TextView;", "tvEdit", "X0", "(Landroid/view/View;Landroid/widget/TextView;)V", "C0", "V0", "b1", "", "coverUrl", "Z0", "(Ljava/lang/String;)V", "", RequestParameters.POSITION, "F0", "(I)Ljava/lang/String;", "U0", "", "checkLogin", "()Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "isAudioShowNoNetworkLayout", "Landroid/view/LayoutInflater;", "inflater", "G0", "(Landroid/view/LayoutInflater;)Lbq/n;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "loadDefaultData", "a", "I", "mTabSelectIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isNeedShowLoginActivity", "Landroidx/activity/result/b;", "c", "Landroidx/activity/result/b;", "loginLaunch", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "updateInfoLaunch", "e", "Ljava/lang/String;", "mGroupId", "f", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "mRoomDetailItem", "Lcom/transsion/share/share/ShareDialogFragment;", "g", "Lcom/transsion/share/share/ShareDialogFragment;", "mShareDialog", "h", "netResultSuccess", "Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "i", "Lkotlin/Lazy;", "E0", "()Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "roomDetailViewModel", "Lab/n;", "j", "Lab/n;", "shapeModel", "Lcom/transsnet/loginapi/ILoginApi;", CampaignEx.JSON_KEY_AD_K, "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;", "l", "Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;", "state", "m", "sz", "n", "dealWith80", "o", "dealWithElse", TtmlNode.TAG_P, "CollapsingToolbarLayoutState", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public final class RoomDetailFragment extends PageStatusFragment<bq.n> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int mTabSelectIndex;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean isNeedShowLoginActivity;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b loginLaunch;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b updateInfoLaunch;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mGroupId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private RoomItem mRoomDetailItem;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private ShareDialogFragment mShareDialog;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean netResultSuccess;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy roomDetailViewModel;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ab.n shapeModel;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy loginApi;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private CollapsingToolbarLayoutState state;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final int sz;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean dealWith80;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean dealWithElse;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;", "", "<init>", "(Ljava/lang/String;I)V", "EXPANDED", "COLLAPSED", "INTERNEDIATE", "TOOLBAR", "APPBAR", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private enum CollapsingToolbarLayoutState {
        EXPANDED,
        COLLAPSED,
        INTERNEDIATE,
        TOOLBAR,
        APPBAR;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<CollapsingToolbarLayoutState> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            TextView textView = (TextView) (tab != null ? tab.getCustomView() : null);
            if (textView != null) {
                textView.setTypeface(Typeface.defaultFromStyle(1));
            }
            if (RoomDetailFragment.this.isVisible()) {
                HashMap map = new HashMap();
                String str = RoomDetailFragment.this.mGroupId;
                if (str == null) {
                    str = "";
                }
                map.put("group_id", str);
                map.put("page_tab_name", RoomDetailFragment.this.F0(tab != null ? tab.getPosition() : 0));
                com.transsion.baselib.helper.a.f43262a.l("groupdetail", map);
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            TextView textView = (TextView) (tab != null ? tab.getCustomView() : null);
            if (textView != null) {
                textView.setTypeface(Typeface.defaultFromStyle(0));
            }
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            RoomDetailFragment.this.mTabSelectIndex = i11;
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f51420a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51420a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f51420a;
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
            this.f51420a.invoke(obj);
        }
    }

    public static final class e implements com.transsion.share.share.a {
        e() {
        }

        @Override // com.transsion.share.share.a
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void b(String str) {
            com.transsion.share.share.a.C0656a.b(this, str);
        }

        @Override // com.transsion.share.share.a
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
        }

        @Override // com.transsion.share.share.a
        public void d(String id2) {
            String str;
            Intrinsics.h(id2, "id");
            if (com.transsion.baseui.util.c.f43504a.a(2, 2000L) || (str = RoomDetailFragment.this.mGroupId) == null) {
                return;
            }
            RoomDetailFragment.this.E0().x(str);
        }

        @Override // com.transsion.share.share.a
        public void e(String str) {
            com.transsion.share.share.a.C0656a.c(this, str);
        }
    }

    public RoomDetailFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.room.fragment.RoomDetailFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.roomDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(RoomDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.room.fragment.RoomDetailFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.room.fragment.RoomDetailFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        ab.n nVarM = ab.n.a().q(0, 20.0f).p(ab.n.f526m).m();
        Intrinsics.g(nVarM, "build(...)");
        this.shapeModel = nVarM;
        this.loginApi = LazyKt.b(new Function0() { // from class: com.transsion.room.fragment.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomDetailFragment.T0();
            }
        });
        this.sz = com.blankj.utilcode.util.a0.a(20.0f);
    }

    private final void B0(CheckInAnimationView checkInAnimationView) {
        String str;
        int currentState = checkInAnimationView.getCurrentState();
        if (currentState == 2 || currentState == 4) {
            return;
        }
        if (currentState == 1) {
            checkInAnimationView.upDateState(2);
            C0();
        } else {
            if (currentState != 3) {
                return;
            }
            checkInAnimationView.upDateState(4);
            if (com.transsion.baseui.util.c.f43504a.a(2, 2000L) || (str = this.mGroupId) == null) {
                return;
            }
            E0().x(str);
        }
    }

    private final void C0() {
        RoomItem roomItem;
        String groupId;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        CheckInAnimationView checkInAnimationView;
        if (!checkLogin() || com.transsion.baseui.util.c.f43504a.a(1, 2000L) || (roomItem = this.mRoomDetailItem) == null || (groupId = roomItem.getGroupId()) == null) {
            return;
        }
        E0().w(groupId);
        bq.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (checkInAnimationView = mViewBinding.f16814t) != null) {
            checkInAnimationView.upDateState(2);
        }
        bq.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (toolBarCheckInAnimationView = mViewBinding2.f16812r) != null) {
            toolBarCheckInAnimationView.upDateState(2);
        }
        D0();
        com.transsion.baselib.helper.a.f43262a.h("groupdetail", "checkin", (60 & 4) != 0 ? "" : this.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void D0() {
        String str = this.mGroupId;
        if (str != null) {
            E0().p(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RoomDetailViewModel E0() {
        return (RoomDetailViewModel) this.roomDetailViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String F0(int position) {
        String string = getString(position == 0 ? R$string.hot : R$string.s_new);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    private final void H0() {
        AppBarLayout appBarLayout;
        PublishStateView publishStateView;
        AppCompatImageView appCompatImageView;
        bq.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f16800f) != null) {
            appCompatImageView.setImageResource(R$mipmap.icon_white_back);
        }
        bq.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (publishStateView = mViewBinding2.f16802h) != null) {
            publishStateView.setImageResource(R$mipmap.libui_ic_base_whit_publish);
        }
        bq.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (appBarLayout = mViewBinding3.f16796b) == null) {
            return;
        }
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.g() { // from class: com.transsion.room.fragment.i
            @Override // com.google.android.material.appbar.AppBarLayout.b
            public final void onOffsetChanged(AppBarLayout appBarLayout2, int i11) {
                RoomDetailFragment.I0(this.f51556a, appBarLayout2, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void I0(RoomDetailFragment roomDetailFragment, AppBarLayout appBarLayout, int i11) {
        AppCompatTextView appCompatTextView;
        TextView textView;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        ShapeableImageView shapeableImageView;
        PublishStateView publishStateView;
        PublishStateView publishStateView2;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        Toolbar toolbar;
        Toolbar toolbar2;
        Toolbar toolbar3;
        Toolbar toolbar4;
        ViewGroup.LayoutParams layoutParams;
        PublishStateView publishStateView3;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        PublishStateView publishStateView4;
        AppCompatTextView appCompatTextView2;
        ShapeableImageView shapeableImageView2;
        PublishStateView publishStateView5;
        AppCompatImageView appCompatImageView5;
        AppCompatImageView appCompatImageView6;
        Toolbar toolbar5;
        Toolbar toolbar6;
        Toolbar toolbar7;
        Toolbar toolbar8;
        ViewGroup.LayoutParams layoutParams2;
        if (i11 == 0) {
            roomDetailFragment.state = CollapsingToolbarLayoutState.EXPANDED;
            return;
        }
        if (Math.abs(i11) >= appBarLayout.getTotalScrollRange()) {
            roomDetailFragment.state = CollapsingToolbarLayoutState.COLLAPSED;
            return;
        }
        roomDetailFragment.state = CollapsingToolbarLayoutState.INTERNEDIATE;
        if (Math.abs(i11) <= com.blankj.utilcode.util.a0.a(80.0f)) {
            if (roomDetailFragment.dealWithElse) {
                return;
            }
            roomDetailFragment.dealWithElse = true;
            roomDetailFragment.dealWith80 = false;
            roomDetailFragment.state = CollapsingToolbarLayoutState.APPBAR;
            bq.n mViewBinding = roomDetailFragment.getMViewBinding();
            if (mViewBinding != null && (toolbar4 = mViewBinding.f16809o) != null && (layoutParams = toolbar4.getLayoutParams()) != null) {
                layoutParams.height = com.blankj.utilcode.util.a0.a(44.0f);
            }
            bq.n mViewBinding2 = roomDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (toolbar3 = mViewBinding2.f16809o) != null) {
                toolbar3.setPadding(0, 0, 0, 0);
            }
            bq.n mViewBinding3 = roomDetailFragment.getMViewBinding();
            ViewGroup.LayoutParams layoutParams3 = (mViewBinding3 == null || (toolbar2 = mViewBinding3.f16809o) == null) ? null : toolbar2.getLayoutParams();
            if (layoutParams3 instanceof CollapsingToolbarLayout.c) {
                ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams3)).topMargin = com.blankj.utilcode.util.d.c();
            }
            bq.n mViewBinding4 = roomDetailFragment.getMViewBinding();
            if (mViewBinding4 != null && (toolbar = mViewBinding4.f16809o) != null) {
                toolbar.setBackgroundResource(R$color.transparent);
            }
            bq.n mViewBinding5 = roomDetailFragment.getMViewBinding();
            if (mViewBinding5 != null && (appCompatImageView2 = mViewBinding5.f16800f) != null) {
                appCompatImageView2.setImageResource(R$mipmap.icon_white_back);
            }
            bq.n mViewBinding6 = roomDetailFragment.getMViewBinding();
            if (mViewBinding6 != null && (appCompatImageView = mViewBinding6.f16805k) != null) {
                appCompatImageView.setImageResource(R$mipmap.libui_ic_base_whit_share);
            }
            bq.n mViewBinding7 = roomDetailFragment.getMViewBinding();
            if (mViewBinding7 != null && (publishStateView2 = mViewBinding7.f16802h) != null) {
                publishStateView2.setImageResource(R$mipmap.libui_ic_base_whit_publish);
            }
            bq.n mViewBinding8 = roomDetailFragment.getMViewBinding();
            if (mViewBinding8 != null && (publishStateView = mViewBinding8.f16802h) != null) {
                publishStateView.setProgressColor(Color.parseColor("#FF5ABF"));
            }
            bq.n mViewBinding9 = roomDetailFragment.getMViewBinding();
            CheckInAnimationView checkInAnimationView = mViewBinding9 != null ? mViewBinding9.f16814t : null;
            bq.n mViewBinding10 = roomDetailFragment.getMViewBinding();
            roomDetailFragment.X0(checkInAnimationView, mViewBinding10 != null ? mViewBinding10.f16815u : null);
            bq.n mViewBinding11 = roomDetailFragment.getMViewBinding();
            if (mViewBinding11 != null && (shapeableImageView = mViewBinding11.f16801g) != null) {
                jg.c.g(shapeableImageView);
            }
            bq.n mViewBinding12 = roomDetailFragment.getMViewBinding();
            if (mViewBinding12 != null && (toolBarCheckInAnimationView = mViewBinding12.f16812r) != null) {
                jg.c.g(toolBarCheckInAnimationView);
            }
            bq.n mViewBinding13 = roomDetailFragment.getMViewBinding();
            if (mViewBinding13 != null && (textView = mViewBinding13.f16813s) != null) {
                jg.c.g(textView);
            }
            bq.n mViewBinding14 = roomDetailFragment.getMViewBinding();
            if (mViewBinding14 == null || (appCompatTextView = mViewBinding14.f16819y) == null) {
                return;
            }
            jg.c.g(appCompatTextView);
            return;
        }
        if (roomDetailFragment.dealWith80) {
            return;
        }
        roomDetailFragment.dealWith80 = true;
        roomDetailFragment.dealWithElse = false;
        roomDetailFragment.state = CollapsingToolbarLayoutState.TOOLBAR;
        bq.n mViewBinding15 = roomDetailFragment.getMViewBinding();
        if (mViewBinding15 != null && (toolbar8 = mViewBinding15.f16809o) != null && (layoutParams2 = toolbar8.getLayoutParams()) != null) {
            layoutParams2.height = com.blankj.utilcode.util.a0.a(44.0f) + com.blankj.utilcode.util.d.c();
        }
        bq.n mViewBinding16 = roomDetailFragment.getMViewBinding();
        if (mViewBinding16 != null && (toolbar7 = mViewBinding16.f16809o) != null) {
            toolbar7.setPadding(0, com.blankj.utilcode.util.d.c(), 0, 0);
        }
        bq.n mViewBinding17 = roomDetailFragment.getMViewBinding();
        ViewGroup.LayoutParams layoutParams4 = (mViewBinding17 == null || (toolbar6 = mViewBinding17.f16809o) == null) ? null : toolbar6.getLayoutParams();
        if (layoutParams4 instanceof CollapsingToolbarLayout.c) {
            ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams4)).topMargin = 0;
        }
        bq.n mViewBinding18 = roomDetailFragment.getMViewBinding();
        if (mViewBinding18 != null && (toolbar5 = mViewBinding18.f16809o) != null) {
            toolbar5.setBackgroundResource(R$color.bg_01);
        }
        if (ak.x.f658a.a()) {
            bq.n mViewBinding19 = roomDetailFragment.getMViewBinding();
            if (mViewBinding19 != null && (appCompatImageView6 = mViewBinding19.f16800f) != null) {
                appCompatImageView6.setImageResource(R$mipmap.icon_white_back);
            }
            bq.n mViewBinding20 = roomDetailFragment.getMViewBinding();
            if (mViewBinding20 != null && (appCompatImageView5 = mViewBinding20.f16805k) != null) {
                appCompatImageView5.setImageResource(R$mipmap.libui_ic_base_whit_share);
            }
            bq.n mViewBinding21 = roomDetailFragment.getMViewBinding();
            if (mViewBinding21 != null && (publishStateView5 = mViewBinding21.f16802h) != null) {
                publishStateView5.setImageResource(R$mipmap.libui_ic_base_whit_publish);
            }
        } else {
            bq.n mViewBinding22 = roomDetailFragment.getMViewBinding();
            if (mViewBinding22 != null && (appCompatImageView4 = mViewBinding22.f16800f) != null) {
                appCompatImageView4.setImageResource(R$mipmap.libui_ic_base_black_left);
            }
            bq.n mViewBinding23 = roomDetailFragment.getMViewBinding();
            if (mViewBinding23 != null && (appCompatImageView3 = mViewBinding23.f16805k) != null) {
                appCompatImageView3.setImageResource(R$mipmap.libui_ic_base_black_share);
            }
            bq.n mViewBinding24 = roomDetailFragment.getMViewBinding();
            if (mViewBinding24 != null && (publishStateView3 = mViewBinding24.f16802h) != null) {
                publishStateView3.setImageResource(R$mipmap.libui_ic_base_black_publish);
            }
        }
        bq.n mViewBinding25 = roomDetailFragment.getMViewBinding();
        if (mViewBinding25 != null && (shapeableImageView2 = mViewBinding25.f16801g) != null) {
            jg.c.k(shapeableImageView2);
        }
        bq.n mViewBinding26 = roomDetailFragment.getMViewBinding();
        ToolBarCheckInAnimationView toolBarCheckInAnimationView2 = mViewBinding26 != null ? mViewBinding26.f16812r : null;
        bq.n mViewBinding27 = roomDetailFragment.getMViewBinding();
        roomDetailFragment.X0(toolBarCheckInAnimationView2, mViewBinding27 != null ? mViewBinding27.f16813s : null);
        bq.n mViewBinding28 = roomDetailFragment.getMViewBinding();
        if (mViewBinding28 != null && (appCompatTextView2 = mViewBinding28.f16819y) != null) {
            RoomItem roomItem = roomDetailFragment.mRoomDetailItem;
            appCompatTextView2.setText(roomItem != null ? roomItem.getName() : null);
            jg.c.k(appCompatTextView2);
        }
        bq.n mViewBinding29 = roomDetailFragment.getMViewBinding();
        if (mViewBinding29 == null || (publishStateView4 = mViewBinding29.f16802h) == null) {
            return;
        }
        publishStateView4.setProgressColor(Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(RoomDetailFragment roomDetailFragment, CheckInAnimationView checkInAnimationView, View view) {
        roomDetailFragment.B0(checkInAnimationView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(RoomDetailFragment roomDetailFragment, ToolBarCheckInAnimationView toolBarCheckInAnimationView, View view) {
        roomDetailFragment.B0(toolBarCheckInAnimationView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(RoomDetailFragment roomDetailFragment, ActivityResult it) {
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        CheckInAnimationView checkInAnimationView;
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            roomDetailFragment.C0();
            return;
        }
        bq.n mViewBinding = roomDetailFragment.getMViewBinding();
        if (mViewBinding != null && (checkInAnimationView = mViewBinding.f16814t) != null) {
            checkInAnimationView.upDateState(1);
        }
        bq.n mViewBinding2 = roomDetailFragment.getMViewBinding();
        if (mViewBinding2 == null || (toolBarCheckInAnimationView = mViewBinding2.f16812r) == null) {
            return;
        }
        toolBarCheckInAnimationView.upDateState(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(RoomDetailFragment roomDetailFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            roomDetailFragment.D0();
        }
    }

    private final void N0() {
        bq.n mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            TabLayoutMediator tabLayoutMediator = new TabLayoutMediator(mViewBinding.f16806l.f16742d, mViewBinding.f16820z, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.transsion.room.fragment.s
                @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
                public final void onConfigureTab(TabLayout.Tab tab, int i11) {
                    RoomDetailFragment.O0(this.f51588a, tab, i11);
                }
            });
            mViewBinding.f16806l.f16742d.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
            if (mViewBinding.f16820z.getAdapter() != null) {
                tabLayoutMediator.attach();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(RoomDetailFragment roomDetailFragment, TabLayout.Tab tab, int i11) {
        Intrinsics.h(tab, "tab");
        TextView textView = new TextView(roomDetailFragment.requireContext());
        String[] strArr = {roomDetailFragment.getString(R$string.hot), roomDetailFragment.getString(R$string.s_new)};
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[0]}, new int[]{androidx.core.content.b.getColor(roomDetailFragment.requireContext(), R$color.text_01), androidx.core.content.b.getColor(roomDetailFragment.requireContext(), R$color.text_02)});
        textView.setText(strArr[i11]);
        textView.setGravity(17);
        textView.setTextSize(14.0f);
        textView.setTextColor(colorStateList);
        tab.setCustomView(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(RoomDetailFragment roomDetailFragment, View view) {
        FragmentActivity activity = roomDetailFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q0(RoomDetailFragment roomDetailFragment, RoomItem roomItem) {
        roomDetailFragment.showContentView();
        if (roomItem == null) {
            PageStatusFragment.showEmptyView$default(roomDetailFragment, false, 1, null);
        } else {
            roomDetailFragment.c1(roomItem);
            roomDetailFragment.netResultSuccess = true;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(RoomDetailFragment roomDetailFragment, RoomNet roomNet) {
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        CheckInAnimationView checkInAnimationView;
        CheckInAnimationView checkInAnimationView2;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView2;
        CheckInAnimationView checkInAnimationView3;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView3;
        if (roomNet == null) {
            if (roomDetailFragment.state == CollapsingToolbarLayoutState.INTERNEDIATE) {
                bq.n mViewBinding = roomDetailFragment.getMViewBinding();
                if (mViewBinding != null && (toolBarCheckInAnimationView3 = mViewBinding.f16812r) != null) {
                    toolBarCheckInAnimationView3.setVisibility(0);
                }
            } else {
                bq.n mViewBinding2 = roomDetailFragment.getMViewBinding();
                if (mViewBinding2 != null && (checkInAnimationView2 = mViewBinding2.f16814t) != null) {
                    checkInAnimationView2.setVisibility(0);
                }
            }
            bq.n mViewBinding3 = roomDetailFragment.getMViewBinding();
            if (mViewBinding3 != null && (checkInAnimationView3 = mViewBinding3.f16814t) != null) {
                checkInAnimationView3.upDateState(1);
            }
            bq.n mViewBinding4 = roomDetailFragment.getMViewBinding();
            if (mViewBinding4 != null && (toolBarCheckInAnimationView2 = mViewBinding4.f16812r) != null) {
                toolBarCheckInAnimationView2.upDateState(1);
            }
        } else {
            RoomItem roomItem = roomDetailFragment.mRoomDetailItem;
            if (roomItem != null) {
                roomItem.setHasJoin(Boolean.TRUE);
            }
            bq.n mViewBinding5 = roomDetailFragment.getMViewBinding();
            if (mViewBinding5 != null && (checkInAnimationView = mViewBinding5.f16814t) != null) {
                checkInAnimationView.upDateState(3);
            }
            bq.n mViewBinding6 = roomDetailFragment.getMViewBinding();
            if (mViewBinding6 != null && (toolBarCheckInAnimationView = mViewBinding6.f16812r) != null) {
                toolBarCheckInAnimationView.upDateState(3);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(RoomDetailFragment roomDetailFragment, RoomNet roomNet) {
        if (roomNet != null) {
            roomDetailFragment.D0();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi T0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final void U0() {
        bq.n mViewBinding;
        PublishStateView publishStateView;
        RoomItem roomItem = this.mRoomDetailItem;
        if (roomItem == null || (mViewBinding = getMViewBinding()) == null || (publishStateView = mViewBinding.f16802h) == null) {
            return;
        }
        String str = this.mGroupId;
        String str2 = str == null ? "" : str;
        String avatar = roomItem.getAvatar();
        String str3 = avatar == null ? "" : avatar;
        String name = roomItem.getName();
        publishStateView.publishSource(4, (30 & 2) != 0 ? "" : null, (30 & 4) != 0 ? "" : null, (30 & 8) != 0 ? "" : null, (30 & 16) != 0 ? "" : null, (30 & 32) != 0 ? "" : str2, (30 & 64) != 0 ? "" : name == null ? "" : name, (30 & 128) == 0 ? str3 : "", (30 & 256) != 0 ? false : false);
    }

    private final void V0() {
        AppCompatImageView appCompatImageView;
        bq.n mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f16805k) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RoomDetailFragment.W0(this.f51551a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(RoomDetailFragment roomDetailFragment, View view) {
        ShareDialogFragment shareDialogFragment;
        ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
        PostType postType = PostType.GROUP_TYPE;
        String str = roomDetailFragment.mGroupId;
        RoomItem roomItem = roomDetailFragment.mRoomDetailItem;
        String creatorId = roomItem != null ? roomItem.getCreatorId() : null;
        String value = ReportType.GROUP.getValue();
        RoomItem roomItem2 = roomDetailFragment.mRoomDetailItem;
        ShareDialogFragment shareDialogFragmentA = companion.a(postType, str, creatorId, value, (3328 & 16) != 0 ? "" : roomItem2 != null ? roomItem2.getName() : null, (3328 & 32) != 0 ? "" : "", (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, "groupdetail", (3328 & 1024) != 0 ? "" : null, (3328 & 2048) != 0 ? "" : null);
        roomDetailFragment.mShareDialog = shareDialogFragmentA;
        if (shareDialogFragmentA != null) {
            shareDialogFragmentA.G0(roomDetailFragment.new e());
        }
        FragmentManager childFragmentManager = roomDetailFragment.getChildFragmentManager();
        childFragmentManager.g0();
        ShareDialogFragment shareDialogFragment2 = roomDetailFragment.mShareDialog;
        if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && childFragmentManager.k0("share") == null && (shareDialogFragment = roomDetailFragment.mShareDialog) != null) {
            shareDialogFragment.show(childFragmentManager, "share");
        }
        com.transsion.baselib.helper.a.f43262a.h("groupdetail", "share", (60 & 4) != 0 ? "" : roomDetailFragment.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void X0(View tvCheckIn, TextView tvEdit) {
        ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        CheckInAnimationView checkInAnimationView;
        ToolBarCheckInAnimationView toolBarCheckInAnimationView2;
        CheckInAnimationView checkInAnimationView2;
        UserInfo userInfoI;
        RoomItem roomItem = this.mRoomDetailItem;
        if (!TextUtils.isEmpty(roomItem != null ? roomItem.getCreatorId() : null)) {
            ILoginApi loginApi = getLoginApi();
            String userId = (loginApi == null || (userInfoI = loginApi.i()) == null) ? null : userInfoI.getUserId();
            RoomItem roomItem2 = this.mRoomDetailItem;
            if (TextUtils.equals(userId, roomItem2 != null ? roomItem2.getCreatorId() : null)) {
                if (tvCheckIn != null) {
                    jg.c.g(tvCheckIn);
                }
                if (tvEdit != null) {
                    jg.c.k(tvEdit);
                }
                if (tvEdit != null) {
                    tvEdit.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.h
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            RoomDetailFragment.Y0(this.f51554a, view);
                        }
                    });
                    return;
                }
                return;
            }
        }
        if (tvCheckIn != null) {
            jg.c.k(tvCheckIn);
        }
        if (tvEdit != null) {
            jg.c.g(tvEdit);
        }
        RoomItem roomItem3 = this.mRoomDetailItem;
        if (roomItem3 != null ? Intrinsics.c(roomItem3.getHasJoin(), Boolean.TRUE) : false) {
            bq.n mViewBinding = getMViewBinding();
            if (mViewBinding != null && (checkInAnimationView2 = mViewBinding.f16814t) != null) {
                checkInAnimationView2.upDateState(3);
            }
            bq.n mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (toolBarCheckInAnimationView2 = mViewBinding2.f16812r) == null) {
                return;
            }
            toolBarCheckInAnimationView2.upDateState(3);
            return;
        }
        bq.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (checkInAnimationView = mViewBinding3.f16814t) != null) {
            checkInAnimationView.upDateState(1);
        }
        bq.n mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (toolBarCheckInAnimationView = mViewBinding4.f16812r) == null) {
            return;
        }
        toolBarCheckInAnimationView.upDateState(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(RoomDetailFragment roomDetailFragment, View view) {
        Intent intent = new Intent(roomDetailFragment.requireActivity(), (Class<?>) CreateRoomActivity.class);
        intent.putExtra("field_key", roomDetailFragment.mRoomDetailItem);
        intent.putExtra("field_type", "type_edit");
        androidx.activity.result.b bVar = roomDetailFragment.updateInfoLaunch;
        if (bVar != null) {
            bVar.a(intent);
        }
        com.transsion.baselib.helper.a.f43262a.h("groupdetail", "edit_room", (60 & 4) != 0 ? "" : roomDetailFragment.mGroupId, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void Z0(String coverUrl) {
        ExpandView expandView;
        ShapeableImageView shapeableImageView;
        ViewGroup.LayoutParams layoutParams;
        bq.n mViewBinding = getMViewBinding();
        Integer numValueOf = (mViewBinding == null || (shapeableImageView = mViewBinding.f16804j) == null || (layoutParams = shapeableImageView.getLayoutParams()) == null) ? null : Integer.valueOf(layoutParams.width);
        ej.f.a aVar = ej.f.f61882a;
        String strE = ej.f.a.e(aVar, coverUrl, numValueOf != null ? numValueOf.intValue() : 0, false, false, 12, null);
        bq.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ej.f.b bVarG = aVar.m(contextRequireContext).g(coverUrl);
            ShapeableImageView ivRoomCover = mViewBinding2.f16804j;
            Intrinsics.g(ivRoomCover, "ivRoomCover");
            bVarG.d(ivRoomCover);
            Context contextRequireContext2 = requireContext();
            Intrinsics.g(contextRequireContext2, "requireContext(...)");
            ej.f.b bVarG2 = aVar.m(contextRequireContext2).g(coverUrl);
            ShapeableImageView ivCoverSmall = mViewBinding2.f16801g;
            Intrinsics.g(ivCoverSmall, "ivCoverSmall");
            bVarG2.d(ivCoverSmall);
        }
        Glide.with(requireContext()).asBitmap().load2(strE).into(new CustomTarget() { // from class: com.transsion.room.fragment.RoomDetailFragment$showCover$2
            @Override // com.bumptech.glide.request.target.Target
            public void onLoadCleared(Drawable drawable) {
            }

            @Override // com.bumptech.glide.request.target.Target
            public void onResourceReady(Bitmap resource, Transition transition) {
                Intrinsics.h(resource, "resource");
                lg.a.C0828a.f(lg.a.f68839a, "RoomDetailFragment", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, false, 4, null);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f51422a), kotlinx.coroutines.y0.c(), null, new RoomDetailFragment$showCover$2$onResourceReady$1(resource, this.f51422a, null), 2, null);
            }
        });
        bq.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (expandView = mViewBinding3.f16817w) == null) {
            return;
        }
        expandView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.transsion.room.fragment.j
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                RoomDetailFragment.a1(this.f51559a, view, i11, i12, i13, i14, i15, i16, i17, i18);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(RoomDetailFragment roomDetailFragment, View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        bq.n mViewBinding = roomDetailFragment.getMViewBinding();
        if (mViewBinding != null) {
            ViewGroup.LayoutParams layoutParams = mViewBinding.f16797c.getLayoutParams();
            int i19 = i14 - i12;
            int i20 = i18 - i16;
            if (layoutParams != null) {
                layoutParams.height += i19 - i20;
            }
            mViewBinding.f16797c.setLayoutParams(layoutParams);
        }
    }

    private final void b1() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        Long postCount;
        PileLayout pileLayout;
        List<String> memberAvatars;
        List<String> memberAvatars2;
        PileLayout pileLayout2;
        bq.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (pileLayout2 = mViewBinding.f16807m) != null) {
            pileLayout2.removeAllViews();
        }
        RoomItem roomItem = this.mRoomDetailItem;
        int size = (roomItem == null || (memberAvatars2 = roomItem.getMemberAvatars()) == null) ? 0 : memberAvatars2.size();
        for (int i11 = 0; i11 < size; i11++) {
            RoomItem roomItem2 = this.mRoomDetailItem;
            String str = (roomItem2 == null || (memberAvatars = roomItem2.getMemberAvatars()) == null) ? null : memberAvatars.get(i11);
            ShapeableImageView shapeableImageView = new ShapeableImageView(getContext());
            shapeableImageView.setShapeAppearanceModel(this.shapeModel);
            if (str != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                aVar.m(contextRequireContext).g(str).i(R$drawable.ic_avatar_default).m(this.sz).c(this.sz).d(shapeableImageView);
            }
            bq.n mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (pileLayout = mViewBinding2.f16807m) != null) {
                int i12 = this.sz;
                pileLayout.addView(shapeableImageView, i12, i12);
            }
        }
        RoomItem roomItem3 = this.mRoomDetailItem;
        long jLongValue = (roomItem3 == null || (postCount = roomItem3.getPostCount()) == null) ? 0L : postCount.longValue();
        if (jLongValue > 0) {
            bq.n mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (appCompatTextView2 = mViewBinding3.f16816v) != null) {
                jg.c.k(appCompatTextView2);
            }
            bq.n mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (appCompatTextView = mViewBinding4.f16816v) == null) {
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String string = getString(R$string.member_count_check_in);
            Intrinsics.g(string, "getString(...)");
            String str2 = String.format(string, Arrays.copyOf(new Object[]{Long.valueOf(jLongValue)}, 1));
            Intrinsics.g(str2, "format(...)");
            appCompatTextView.setText(str2);
        }
    }

    private final void c1(RoomItem roomItem) {
        HashMap mapG;
        String avatar;
        ExpandView expandView;
        AppCompatTextView appCompatTextView;
        this.mRoomDetailItem = roomItem;
        if (TextUtils.equals(roomItem.getLevel(), "LIMIT") && com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("adult_restricted", true)) {
            new AdultRestrictedDialogFragment().show(requireActivity().getSupportFragmentManager(), "AdultRestrictedDialogFragment");
        }
        bq.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView = mViewBinding.f16818x) != null) {
            appCompatTextView.setText(roomItem.getName());
        }
        bq.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (expandView = mViewBinding2.f16817w) != null) {
            RoomItem roomItem2 = this.mRoomDetailItem;
            expandView.m(roomItem2 != null ? roomItem2.getDescription() : null);
        }
        CollapsingToolbarLayoutState collapsingToolbarLayoutState = this.state;
        if (collapsingToolbarLayoutState == CollapsingToolbarLayoutState.INTERNEDIATE || collapsingToolbarLayoutState == CollapsingToolbarLayoutState.COLLAPSED) {
            bq.n mViewBinding3 = getMViewBinding();
            ToolBarCheckInAnimationView toolBarCheckInAnimationView = mViewBinding3 != null ? mViewBinding3.f16812r : null;
            bq.n mViewBinding4 = getMViewBinding();
            X0(toolBarCheckInAnimationView, mViewBinding4 != null ? mViewBinding4.f16813s : null);
        } else {
            bq.n mViewBinding5 = getMViewBinding();
            CheckInAnimationView checkInAnimationView = mViewBinding5 != null ? mViewBinding5.f16814t : null;
            bq.n mViewBinding6 = getMViewBinding();
            X0(checkInAnimationView, mViewBinding6 != null ? mViewBinding6.f16815u : null);
        }
        b1();
        RoomItem roomItem3 = this.mRoomDetailItem;
        if (roomItem3 != null && (avatar = roomItem3.getAvatar()) != null) {
            Z0(avatar);
        }
        N0();
        E0().v(roomItem);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            RoomItem roomItem4 = this.mRoomDetailItem;
            mapG.put("group_id", roomItem4 != null ? roomItem4.getGroupId() : null);
        }
        V0();
        U0();
    }

    private final boolean checkLogin() {
        Intent intentO;
        androidx.activity.result.b bVar;
        ILoginApi loginApi = getLoginApi();
        if (loginApi == null || loginApi.a()) {
            return true;
        }
        if (this.loginLaunch == null) {
            this.isNeedShowLoginActivity = true;
        }
        Context context = getContext();
        if (context == null || (intentO = loginApi.o(context)) == null || (bVar = this.loginLaunch) == null) {
            return false;
        }
        bVar.a(intentO);
        return false;
    }

    private final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public bq.n getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bq.n nVarC = bq.n.c(inflater);
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        final ToolBarCheckInAnimationView toolBarCheckInAnimationView;
        final CheckInAnimationView checkInAnimationView;
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.room.fragment.k
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                RoomDetailFragment.L0(this.f51561a, (ActivityResult) obj);
            }
        });
        this.updateInfoLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.room.fragment.l
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                RoomDetailFragment.M0(this.f51564a, (ActivityResult) obj);
            }
        });
        bq.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (checkInAnimationView = mViewBinding.f16814t) != null) {
            checkInAnimationView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomDetailFragment.J0(this.f51567a, checkInAnimationView, view);
                }
            });
        }
        bq.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (toolBarCheckInAnimationView = mViewBinding2.f16812r) != null) {
            toolBarCheckInAnimationView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomDetailFragment.K0(this.f51571a, toolBarCheckInAnimationView, view);
                }
            });
        }
        U0();
        V0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        AppCompatImageView appCompatImageView;
        Toolbar toolbar;
        pageStateFitStatusBar();
        bq.n mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (toolbar = mViewBinding.f16809o) == null) ? null : toolbar.getLayoutParams();
        if (layoutParams instanceof CollapsingToolbarLayout.c) {
            ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.c) layoutParams)).topMargin = com.blankj.utilcode.util.d.c();
        }
        bq.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f16800f) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomDetailFragment.P0(this.f51575a, view);
                }
            });
        }
        bq.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null) {
            mViewBinding3.f16820z.setAdapter(new com.transsion.room.adapter.c(this.mGroupId, this));
            mViewBinding3.f16820z.registerOnPageChangeCallback(new c());
            N0();
        }
        H0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        RoomDetailViewModel roomDetailViewModelE0 = E0();
        roomDetailViewModelE0.q().j(this, new d(new Function1() { // from class: com.transsion.room.fragment.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomDetailFragment.Q0(this.f51578a, (RoomItem) obj);
            }
        }));
        roomDetailViewModelE0.s().j(this, new d(new Function1() { // from class: com.transsion.room.fragment.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomDetailFragment.R0(this.f51581a, (RoomNet) obj);
            }
        }));
        roomDetailViewModelE0.t().j(this, new d(new Function1() { // from class: com.transsion.room.fragment.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomDetailFragment.S0(this.f51584a, (RoomNet) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        showLoadingView();
        D0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("groupdetail", false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1) {
            D0();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String groupId;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String string = null;
        RoomItem roomItem = arguments != null ? (RoomItem) arguments.getParcelable(WebConstants.FIELD_ITEM) : null;
        if (roomItem == null || (groupId = roomItem.getGroupId()) == null) {
            Bundle arguments2 = getArguments();
            if (arguments2 != null) {
                string = arguments2.getString("id");
            }
        } else {
            string = groupId;
        }
        this.mGroupId = string;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
