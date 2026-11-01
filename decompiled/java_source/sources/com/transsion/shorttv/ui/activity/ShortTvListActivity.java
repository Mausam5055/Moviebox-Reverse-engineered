package com.transsion.shorttv.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.w;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager;
import com.transsion.shorttv.base.activity.BaseActivity;
import com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import ms.l;
import p1.a;
import qs.j;
import vr.b;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001:B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u0019\u0010\u0012\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0004R\u0016\u0010\u001e\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b*\u0010(R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b$\u00103R\"\u00108\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010$\u001a\u0004\b6\u0010\u000e\"\u0004\b7\u0010\t¨\u0006;"}, d2 = {"Lcom/transsion/shorttv/ui/activity/ShortTvListActivity;", "Lcom/transsion/shorttv/base/activity/BaseActivity;", "Lms/l;", "<init>", "()V", "", "forceReplace", "", "d0", "(Z)V", "c0", "a0", "()Lms/l;", "isStatusDark", "()Z", "isMonitorNetworkState", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "onPause", "", "g", "I", "ep", "", "h", "J", "ms", "i", "Z", "isHistoryFirst", "", "j", "Ljava/lang/String;", "subjectId", CampaignEx.JSON_KEY_AD_K, "ops", "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;", "l", "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;", "fragment", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "m", "Lkotlin/Lazy;", "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "shortTvViewModel", "n", "b0", "setActivityPaused", "isActivityPaused", "o", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvListActivity extends BaseActivity<l> {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public int ep = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public long ms;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public boolean isHistoryFirst;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public String subjectId;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public String ops;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private ShortTvDetailListFragment fragment;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTvViewModel;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isActivityPaused;

    /* JADX INFO: renamed from: com.transsion.shorttv.ui.activity.ShortTvListActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, String subjectId, Integer num, long j11, boolean z10, String str) {
            Intrinsics.h(context, "context");
            Intrinsics.h(subjectId, "subjectId");
            Intent intent = new Intent(context, (Class<?>) ShortTvListActivity.class);
            Bundle bundleA = d.a();
            bundleA.putString("id", subjectId);
            bundleA.putString("ops", str);
            if (num != null) {
                bundleA.putInt("ep", num.intValue());
                bundleA.putLong("ms", j11);
                bundleA.putBoolean("historyFist", z10);
            }
            intent.putExtras(bundleA);
            context.startActivity(intent);
        }
    }

    public ShortTvListActivity() {
        final Function0 function0 = null;
        this.shortTvViewModel = new ViewModelLazy(Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv.ui.activity.ShortTvListActivity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() { // from class: com.transsion.shorttv.ui.activity.ShortTvListActivity$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<a>() { // from class: com.transsion.shorttv.ui.activity.ShortTvListActivity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final a invoke() {
                a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final ShortTvViewModel Z() {
        return (ShortTvViewModel) this.shortTvViewModel.getValue();
    }

    private final void c0() {
        BiddingVideoManager.Companion companion = BiddingVideoManager.f42049w;
        BiddingVideoManager.Companion.b(companion, "ShortTvPlayerUnlockPlayScene", null, 2, null);
        BiddingVideoManager.Companion.b(companion, "ShortTvPlayerUnlockDownloadScene", null, 2, null);
        k.d(v.a(this), y0.b(), null, new ShortTvListActivity$preloadAd$1("ShortTvPlayerOverlayScene", null), 2, null);
    }

    private final void d0(boolean forceReplace) {
        Fragment fragmentK0 = getSupportFragmentManager().k0("ShortTvDetailListFragment");
        ShortTvDetailListFragment shortTvDetailListFragment = fragmentK0 instanceof ShortTvDetailListFragment ? (ShortTvDetailListFragment) fragmentK0 : null;
        this.fragment = shortTvDetailListFragment;
        if (forceReplace || shortTvDetailListFragment == null) {
            ShortTvDetailListFragment shortTvDetailListFragment2 = new ShortTvDetailListFragment();
            Bundle extras = getIntent().getExtras();
            shortTvDetailListFragment2.setArguments(extras != null ? new Bundle(extras) : null);
            this.fragment = shortTvDetailListFragment2;
            w wVarP = getSupportFragmentManager().p();
            int i11 = R$id.flContent;
            ShortTvDetailListFragment shortTvDetailListFragment3 = this.fragment;
            Intrinsics.e(shortTvDetailListFragment3);
            wVarP.t(i11, shortTvDetailListFragment3, "ShortTvDetailListFragment");
            wVarP.l();
        }
    }

    static /* synthetic */ void e0(ShortTvListActivity shortTvListActivity, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        shortTvListActivity.d0(z10);
    }

    @Override // com.transsion.shorttv.base.activity.BaseCommonActivity
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public l getViewBinding() {
        l lVarC = l.c(getLayoutInflater());
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    /* JADX INFO: renamed from: b0, reason: from getter */
    public final boolean getIsActivityPaused() {
        return this.isActivityPaused;
    }

    @Override // com.transsion.shorttv.base.activity.BaseCommonActivity
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity, com.transsion.shorttv.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        super.onCreate(savedInstanceState);
        b.f77441a.i(1, this);
        ShortTvPlayerOverlayAdManager.f52716a.d(v.a(this));
        c0();
        TheRouter.l(this);
        e0(this, false, 1, null);
        j jVarT = T();
        if (jVarT != null) {
            jVarT.d();
        }
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity, com.transsion.shorttv.base.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ShortTvPlayerOverlayAdManager.f52716a.b();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) throws IllegalAccessException, InvocationTargetException {
        ShortTvDetailListFragment shortTvDetailListFragment;
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        int intExtra = intent.getIntExtra("ep", -1);
        boolean zC = Intrinsics.c(this.subjectId, intent.getStringExtra("id"));
        setIntent(intent);
        TheRouter.l(this);
        if (zC) {
            if (intExtra < 0 || (shortTvDetailListFragment = this.fragment) == null) {
                return;
            }
            shortTvDetailListFragment.k1(intExtra);
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null) {
            shortTvDetailListFragment2.i1();
        }
        Z().Y0();
        d0(true);
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity, com.transsion.shorttv.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        ShortTvDetailListFragment shortTvDetailListFragment;
        super.onPause();
        this.isActivityPaused = true;
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null) {
            shortTvDetailListFragment2.g1();
        }
        if (!isFinishing() || (shortTvDetailListFragment = this.fragment) == null) {
            return;
        }
        shortTvDetailListFragment.i1();
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity, com.transsion.shorttv.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.isActivityPaused = false;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.h1();
        }
    }
}
