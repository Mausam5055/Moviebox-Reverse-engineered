package com.transsion.ugcvideodetail.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.v;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.report.l;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.moviedetail.R$id;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailFragment;
import com.transsion.videofloat.manager.c;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import ox.e;
import yr.b;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\nH\u0016¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\nH\u0014¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\nH\u0016¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0010H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0010H\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\bH\u0016¢\u0006\u0004\b&\u0010\u001fJ\u000f\u0010'\u001a\u00020\u0010H\u0016¢\u0006\u0004\b'\u0010$J\u000f\u0010(\u001a\u00020\u0010H\u0016¢\u0006\u0004\b(\u0010$J\u000f\u0010)\u001a\u00020\u0010H\u0016¢\u0006\u0004\b)\u0010$J\u000f\u0010*\u001a\u00020\u0010H\u0016¢\u0006\u0004\b*\u0010$J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\nH\u0016¢\u0006\u0004\b1\u0010\u0005J\u000f\u00102\u001a\u00020\nH\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\nH\u0016¢\u0006\u0004\b4\u0010\u0005R\u0018\u00107\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u00108\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b9\u00106R\u0018\u0010<\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b;\u00106R\u0018\u0010>\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b=\u00106R\u0018\u0010@\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b?\u00106R\u0018\u0010B\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bA\u00106R\u0018\u0010D\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bC\u00106R\u0018\u0010F\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bE\u00106R\u0016\u0010I\u001a\u00020+8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010L\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010N\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bM\u00106R\u0018\u0010Q\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010KR\u001b\u0010Y\u001a\u00020T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X¨\u0006Z"}, d2 = {"Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lqv/a;", "Lcom/transsion/videofloat/manager/c;", "<init>", "()V", "Landroidx/fragment/app/Fragment;", "fragment", "", "tag", "", "J0", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "N0", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "", "P0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "category", "O0", "(Ljava/lang/String;)V", "M0", "()Lqv/a;", "t0", "retryLoadData", "getPageName", "()Ljava/lang/String;", "onPause", "onDestroy", "j", "isMusicFloatingAttach", "()Z", "isChangeStatusBar", "i0", "r0", "q0", "isTranslucent", "isStatusDark", "", "statusColor", "()I", "Landroid/view/View;", "j0", "()Landroid/view/View;", "o0", "p0", "n0", "s0", "i", "Ljava/lang/String;", "videoId", "collectionId", CampaignEx.JSON_KEY_AD_K, "subjectId", "l", NativeComponentConstants.KEY_COMPONENT_TYPE, "m", "ops", "n", "fromOptId", "o", "pageStyle", TtmlNode.TAG_P, "previousPageVideoId", CampaignEx.JSON_KEY_AD_Q, "previousPageTrackId", CampaignEx.JSON_KEY_AD_R, "I", "bottomFragmentSelected", "s", "Z", "withoutHistory", "t", "homeTabId", TmcStartParams.KEY_URL_SHORT, "Landroidx/fragment/app/Fragment;", "mFragment", "v", "hasHandledActivityLimit", "Lrv/a;", "w", "Lkotlin/Lazy;", "L0", "()Lrv/a;", "detailApi", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailActivity extends BaseNewActivity<qv.a> implements c {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public String videoId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public String collectionId;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public String subjectId;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public String type;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public String ops;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public String fromOptId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public String pageStyle;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public String previousPageVideoId;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public String previousPageTrackId;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    public int bottomFragmentSelected;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    public boolean withoutHistory;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    public String homeTabId;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private Fragment mFragment;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean hasHandledActivityLimit;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private final Lazy detailApi = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.activity.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCVideoDetailActivity.K0();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0(Fragment fragment, String tag) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        lg.a.C0828a.l(lg.a.f68839a, "UGCVideoDetailActivity", "createFragment: homeTabId:" + this.homeTabId, false, 4, null);
        fragment.setArguments(d.b(TuplesKt.a("id", this.videoId), TuplesKt.a("ugcCategory", this.type), TuplesKt.a("subject_id", this.subjectId), TuplesKt.a("collection_id", this.collectionId), TuplesKt.a("ops", this.ops), TuplesKt.a("from_opt_id", this.fromOptId), TuplesKt.a("parent_video_id", this.previousPageVideoId), TuplesKt.a("parent_track_id", this.previousPageTrackId), TuplesKt.a("ugc_bottom_fragment_selected", Integer.valueOf(this.bottomFragmentSelected)), TuplesKt.a("ugc_without_history", Boolean.valueOf(this.withoutHistory)), TuplesKt.a("tab_id", this.homeTabId)));
        wVarP.t(R$id.container, fragment, tag);
        this.mFragment = fragment;
        wVarP.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rv.a K0() {
        return (rv.a) zg.c.f79414e.a().h(rv.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final rv.a L0() {
        return (rv.a) this.detailApi.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void N0() {
        ProgressBar ugcPbLoading = ((qv.a) getMViewBinding()).f73704c;
        Intrinsics.g(ugcPbLoading, "ugcPbLoading");
        jg.c.k(ugcPbLoading);
        k.d(v.a(this), null, null, new UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean P0(UGCVideo video) {
        return video.isVerticalImmStyle();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: M0, reason: merged with bridge method [inline-methods] */
    public qv.a getViewBinding() {
        qv.a aVarC = qv.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    public final void O0(String category) {
        if (this.hasHandledActivityLimit) {
            return;
        }
        l.f43359a.x(Intrinsics.c(category, UGCVideoType.MUSIC.getValue()) ? 1 : 3, this);
        this.hasHandledActivityLimit = true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "/ugc_video/detail";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity
    public boolean isMusicFloatingAttach() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.videofloat.manager.c
    public void j() {
        Fragment fragment = this.mFragment;
        if (fragment instanceof UGCVideoDetailFragment) {
            UGCVideoDetailFragment uGCVideoDetailFragment = fragment instanceof UGCVideoDetailFragment ? (UGCVideoDetailFragment) fragment : null;
            if (uGCVideoDetailFragment != null) {
                uGCVideoDetailFragment.L0();
                return;
            }
            return;
        }
        if (fragment instanceof UGCImmVideoDetailFragment) {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = fragment instanceof UGCImmVideoDetailFragment ? (UGCImmVideoDetailFragment) fragment : null;
            if (uGCImmVideoDetailFragment != null) {
                uGCImmVideoDetailFragment.Y0();
            }
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public View j0() {
        View viewJ0 = super.j0();
        b.a(viewJ0);
        return viewJ0;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        if (Intrinsics.c(this.type, UGCVideoType.SHORT_TV.getValue())) {
            this.pageStyle = UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue();
        }
        super.onCreate(savedInstanceState);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        j();
        e.f72197a.b().i(this);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            j();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean q0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public int statusColor() {
        return R$color.black;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void t0() {
        if (this.mFragment == null) {
            Fragment fragmentK0 = getSupportFragmentManager().k0("VideoDetailFragment");
            this.mFragment = fragmentK0;
            if (fragmentK0 == null) {
                String str = this.pageStyle;
                if (Intrinsics.c(str, UGCPageStyle.UGC_PAGE_STYLE_HORIZONTAL_VIDEO.getValue())) {
                    J0(UGCVideoDetailFragment.INSTANCE.a(), "UGCVideoDetailFragment");
                } else if (!Intrinsics.c(str, UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue())) {
                    N0();
                } else {
                    l.f43359a.x(2, this);
                    J0(UGCImmVideoDetailFragment.INSTANCE.a(), "UGCImmVideoDetailFragment");
                }
            }
        }
    }
}
