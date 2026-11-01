package com.transsion.player.longvideo.ui.dialog;

import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.cloud.config.utils.XLogUtil;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.constants.LongVodPlayerConfigType;
import com.transsion.player.longvideo.intercept.h0;
import com.transsion.player.longvideo.member.LongVodResolutionMemberView;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsnet.downloader.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0082@¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011JC\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u00132\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00152\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u000b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b!\u0010\"R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u001e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u001a\u00107\u001a\b\u0012\u0004\u0012\u000204038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u001c\u00109\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u0010,R0\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020;0:j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020;`<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u001b\u0010G\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010/\u001a\u0004\bE\u0010F¨\u0006H"}, d2 = {"Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Lgo/b;", XLogUtil.TAG, "Lgo/a;", "longVdPlayerBean", "", "A0", "(Lgo/b;Lgo/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "F0", "(Lgo/b;)V", "", "dialogName", "x0", "(Ljava/lang/String;)V", "pageName", "Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;", "configType", "", "dataList", "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;", "longVodPlayerView", "G0", "(Ljava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;Ljava/util/List;Lgo/a;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "c", "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lgo/a;", "e", "Ljava/lang/String;", "f", "Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;", "g", "Ljava/util/List;", "Lcom/transsion/player/longvideo/ui/dialog/a;", "h", "Lkotlin/Lazy;", "y0", "()Lcom/transsion/player/longvideo/ui/dialog/a;", "configViewModel", "", "", "i", "[Ljava/lang/Float;", "speedConfigs", "j", "configs", "Ljava/util/HashMap;", "Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;", "Lkotlin/collections/HashMap;", CampaignEx.JSON_KEY_AD_K, "Ljava/util/HashMap;", "itemViewMap", "l", "Lgo/b;", "curConfig", "Lcom/transsion/baselib/db/video/PlaybackRecordDao;", "m", "z0", "()Lcom/transsion/baselib/db/video/PlaybackRecordDao;", "playbackRecordDao", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LongVdPlayerConfigDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private LongVodPlayerView longVodPlayerView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private go.a longVdPlayerBean;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private LongVodPlayerConfigType configType;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private List dataList;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy configViewModel;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Float[] speedConfigs;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private List configs;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final HashMap itemViewMap;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private go.b curConfig;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy playbackRecordDao;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48328a;

        static {
            int[] iArr = new int[LongVodPlayerConfigType.values().length];
            try {
                iArr[LongVodPlayerConfigType.SPEED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LongVodPlayerConfigType.BITRATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48328a = iArr;
        }
    }

    public LongVdPlayerConfigDialog() {
        super(R$layout.long_vod_dialog_player_config);
        this.configType = LongVodPlayerConfigType.BITRATE;
        this.configViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.player.longvideo.ui.dialog.a.class), new Function0<x0>() { // from class: com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog$special$$inlined$activityViewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.speedConfigs = new Float[]{Float.valueOf(0.5f), Float.valueOf(0.75f), Float.valueOf(1.0f), Float.valueOf(1.25f), Float.valueOf(1.5f), Float.valueOf(1.75f), Float.valueOf(2.0f)};
        this.configs = new ArrayList();
        this.itemViewMap = new HashMap();
        this.playbackRecordDao = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.dialog.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVdPlayerConfigDialog.E0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object A0(go.b bVar, go.a aVar, Continuation continuation) throws Throwable {
        LongVdPlayerConfigDialog$isIntercept$1 longVdPlayerConfigDialog$isIntercept$1;
        if (continuation instanceof LongVdPlayerConfigDialog$isIntercept$1) {
            longVdPlayerConfigDialog$isIntercept$1 = (LongVdPlayerConfigDialog$isIntercept$1) continuation;
            int i11 = longVdPlayerConfigDialog$isIntercept$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                longVdPlayerConfigDialog$isIntercept$1.label = i11 - Integer.MIN_VALUE;
            } else {
                longVdPlayerConfigDialog$isIntercept$1 = new LongVdPlayerConfigDialog$isIntercept$1(this, continuation);
            }
        } else {
            longVdPlayerConfigDialog$isIntercept$1 = new LongVdPlayerConfigDialog$isIntercept$1(this, continuation);
        }
        Object objG = longVdPlayerConfigDialog$isIntercept$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = longVdPlayerConfigDialog$isIntercept$1.label;
        if (i12 == 0) {
            ResultKt.b(objG);
            if (this.configType != LongVodPlayerConfigType.BITRATE) {
                return Boxing.a(false);
            }
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            if (iPremiumApi != null ? iPremiumApi.c() : false) {
                return Boxing.a(false);
            }
            i0 i0VarB = y0.b();
            LongVdPlayerConfigDialog$isIntercept$isUnlocked$1 longVdPlayerConfigDialog$isIntercept$isUnlocked$1 = new LongVdPlayerConfigDialog$isIntercept$isUnlocked$1(this, aVar, null);
            longVdPlayerConfigDialog$isIntercept$1.L$0 = bVar;
            longVdPlayerConfigDialog$isIntercept$1.L$1 = aVar;
            longVdPlayerConfigDialog$isIntercept$1.label = 1;
            objG = i.g(i0VarB, longVdPlayerConfigDialog$isIntercept$isUnlocked$1, longVdPlayerConfigDialog$isIntercept$1);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (go.a) longVdPlayerConfigDialog$isIntercept$1.L$1;
            bVar = (go.b) longVdPlayerConfigDialog$isIntercept$1.L$0;
            ResultKt.b(objG);
        }
        if (((Boolean) objG).booleanValue()) {
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", "LongVdPlayerConfigDialog --> isIntercept() --> 当前已经解锁，不拦截", false, 4, null);
            return Boxing.a(false);
        }
        h0 h0Var = h0.f48139a;
        boolean zE = h0Var.e(aVar != null ? aVar.m() : null, bVar.d());
        if (!h0Var.c(aVar != null ? aVar.m() : null, aVar != null ? aVar.e() : 0)) {
            return Boxing.a(zE);
        }
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", "LongVdPlayerConfigDialog --> isIntercept() --> 当前是免费剧集不拦截", false, 4, null);
        return Boxing.a(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Comparable B0(go.b it) {
        Intrinsics.h(it, "it");
        return Integer.valueOf(it.d().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Comparable C0(go.b it) {
        Intrinsics.h(it, "it");
        return it.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(LongVdPlayerConfigDialog longVdPlayerConfigDialog, go.b bVar, View view) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        FragmentActivity activity = longVdPlayerConfigDialog.getActivity();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = v.a(appCompatActivity)) == null) {
            return;
        }
        k.d(lifecycleCoroutineScopeA, null, null, new LongVdPlayerConfigDialog$onViewCreated$1$1$1(bVar, longVdPlayerConfigDialog, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlaybackRecordDao E0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).v1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F0(go.b config) {
        if (config.e()) {
            return;
        }
        LongVodResolutionMemberView longVodResolutionMemberView = (LongVodResolutionMemberView) this.itemViewMap.get(this.curConfig);
        if (longVodResolutionMemberView != null) {
            longVodResolutionMemberView.setTextColor(-1);
        }
        LongVodResolutionMemberView longVodResolutionMemberView2 = (LongVodResolutionMemberView) this.itemViewMap.get(config);
        if (longVodResolutionMemberView2 != null) {
            longVodResolutionMemberView2.setGradientColorsV2(config, this.longVdPlayerBean);
        }
        this.curConfig = config;
        y0().c(config);
        dismiss();
    }

    private final void x0(String dialogName) {
        HashMap map = new HashMap();
        map.put("dialog_name", dialogName);
        String str = this.pageName;
        if (str != null) {
            hj.i.f64505a.r(str, map);
        }
    }

    private final com.transsion.player.longvideo.ui.dialog.a y0() {
        return (com.transsion.player.longvideo.ui.dialog.a) this.configViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PlaybackRecordDao z0() {
        return (PlaybackRecordDao) this.playbackRecordDao.getValue();
    }

    public final void G0(String pageName, LongVodPlayerConfigType configType, List dataList, go.a longVdPlayerBean, LongVodPlayerView longVodPlayerView) {
        Intrinsics.h(configType, "configType");
        Intrinsics.h(longVodPlayerView, "longVodPlayerView");
        this.pageName = pageName;
        this.configType = configType;
        this.dataList = dataList;
        this.longVdPlayerBean = longVdPlayerBean;
        this.longVodPlayerView = longVodPlayerView;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.DownloadBottomDialogTheme);
        int i11 = a.f48328a[this.configType.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            x0("dialog_stream_resolution");
            List<go.b> list = this.dataList;
            if (list != null) {
                for (go.b bVar : list) {
                    this.configs.add(bVar);
                    if (bVar.e()) {
                        this.curConfig = bVar;
                    }
                }
                CollectionsKt.A(this.configs, ComparisonsKt.b(new Function1() { // from class: com.transsion.player.longvideo.ui.dialog.c
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LongVdPlayerConfigDialog.B0((go.b) obj);
                    }
                }, new Function1() { // from class: com.transsion.player.longvideo.ui.dialog.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LongVdPlayerConfigDialog.C0((go.b) obj);
                    }
                }));
                return;
            }
            return;
        }
        x0("dialog_stream_speed");
        float fA = com.transsion.player.longvideo.helper.v.f48030a.a();
        this.configs.clear();
        for (Float f11 : this.speedConfigs) {
            float fFloatValue = f11.floatValue();
            go.b bVar2 = new go.b(fA == fFloatValue, String.valueOf(fFloatValue), LongVodPlayerConfigType.SPEED);
            this.configs.add(bVar2);
            if (bVar2.e()) {
                this.curConfig = bVar2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.ll_root);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, com.blankj.utilcode.util.i.e(48.0f));
        Iterator it = this.configs.iterator();
        while (true) {
            AttributeSet attributeSet = null;
            Object[] objArr = 0;
            if (!it.hasNext()) {
                break;
            }
            final go.b bVar = (go.b) it.next();
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            LongVodResolutionMemberView longVodResolutionMemberView = new LongVodResolutionMemberView(context, attributeSet, 2, objArr == true ? 1 : 0);
            longVodResolutionMemberView.setConfig(bVar, this.longVdPlayerBean);
            longVodResolutionMemberView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.dialog.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LongVdPlayerConfigDialog.D0(this.f48335a, bVar, view2);
                }
            });
            linearLayout.addView(longVodResolutionMemberView, layoutParams);
            this.itemViewMap.put(bVar, longVodResolutionMemberView);
        }
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setWindowAnimations(jg.c.f() ? com.tn.lib.widget.R$style.ActionSheetDialogLeft : com.tn.lib.widget.R$style.ActionSheetDialogRight);
        window.setGravity(jg.c.f() ? GravityCompat.START : GravityCompat.END);
        window.setDimAmount(0.0f);
        window.setBackgroundDrawable(null);
        window.setLayout(a0.a(140.0f), -1);
        ImmersionBar immersionBarWith = ImmersionBar.with((DialogFragment) this);
        immersionBarWith.hideBar(BarHide.FLAG_HIDE_BAR);
        immersionBarWith.init();
    }
}
