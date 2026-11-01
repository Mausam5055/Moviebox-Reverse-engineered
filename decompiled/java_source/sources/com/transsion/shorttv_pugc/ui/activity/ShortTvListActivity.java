package com.transsion.shorttv_pugc.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.w;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv_pugc.base.activity.BaseActivity;
import com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.l;
import st.g;
import zs.b;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 42\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00015B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u0019\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0016\u0010\u0004R\u0016\u0010\u001a\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u0010 R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b(\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b*\u0010&R\u0018\u0010-\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010&R\u0018\u0010/\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010&R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u00066"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;", "Lcom/transsion/shorttv_pugc/base/activity/BaseActivity;", "Lms/l;", "<init>", "()V", "", "X", "W", "V", "()Lms/l;", "", "isStatusDark", "()Z", "isMonitorNetworkState", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onPause", "", "f", "I", "ep", "", "g", "J", "ms", "h", "Z", "isHistoryFirst", "i", "ugcWithoutHistory", "", "j", "Ljava/lang/String;", "ugcVideoId", CampaignEx.JSON_KEY_AD_K, "subjectId", "l", "collectId", "m", "ops", "n", "fromOptId", "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;", "o", "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;", "fragment", TtmlNode.TAG_P, "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvListActivity extends BaseActivity<l> {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public int ep = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public long ms;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public boolean isHistoryFirst;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public boolean ugcWithoutHistory;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public String ugcVideoId;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public String subjectId;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public String collectId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public String ops;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public String fromOptId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private ShortTvDetailListFragment fragment;

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void b(Companion companion, Context context, String str, Integer num, long j11, boolean z10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                num = null;
            }
            Integer num2 = num;
            if ((i11 & 8) != 0) {
                j11 = 0;
            }
            long j12 = j11;
            if ((i11 & 16) != 0) {
                z10 = false;
            }
            companion.a(context, str, num2, j12, z10);
        }

        public final void a(Context context, String subjectId, Integer num, long j11, boolean z10) {
            Intrinsics.h(context, "context");
            Intrinsics.h(subjectId, "subjectId");
        }
    }

    private final void W() {
        BiddingInterstitialManager.Companion.b(BiddingInterstitialManager.f41965w, "ShortTvInterstitialScene", null, 2, null);
        BiddingVideoManager.Companion.b(BiddingVideoManager.f42049w, "ShortTvVideoScene", null, 2, null);
    }

    private final void X() {
        Fragment fragmentK0 = getSupportFragmentManager().k0("ShortTvDetailListFragment");
        ShortTvDetailListFragment shortTvDetailListFragment = fragmentK0 instanceof ShortTvDetailListFragment ? (ShortTvDetailListFragment) fragmentK0 : null;
        this.fragment = shortTvDetailListFragment;
        if (shortTvDetailListFragment == null) {
            ShortTvDetailListFragment shortTvDetailListFragment2 = new ShortTvDetailListFragment();
            shortTvDetailListFragment2.setArguments(getIntent().getExtras());
            this.fragment = shortTvDetailListFragment2;
            w wVarP = getSupportFragmentManager().p();
            int i11 = R$id.flContent;
            ShortTvDetailListFragment shortTvDetailListFragment3 = this.fragment;
            Intrinsics.e(shortTvDetailListFragment3);
            wVarP.t(i11, shortTvDetailListFragment3, "ShortTvDetailListFragment");
            wVarP.l();
        }
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseCommonActivity
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public l getViewBinding() {
        l lVarC = l.c(getLayoutInflater());
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseCommonActivity
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseActivity, com.transsion.shorttv_pugc.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        super.onCreate(savedInstanceState);
        b.f79453a.f(1, this);
        W();
        TheRouter.l(this);
        X();
        g gVarT = T();
        if (gVarT != null) {
            gVarT.d();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseActivity, com.transsion.shorttv_pugc.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        ShortTvDetailListFragment shortTvDetailListFragment;
        super.onPause();
        if (!isFinishing() || (shortTvDetailListFragment = this.fragment) == null) {
            return;
        }
        shortTvDetailListFragment.L0();
    }
}
