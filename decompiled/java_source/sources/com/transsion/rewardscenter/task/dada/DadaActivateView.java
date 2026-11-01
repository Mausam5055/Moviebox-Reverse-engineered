package com.transsion.rewardscenter.task.dada;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.transsion.push.PushConstants;
import com.transsion.rewardscenter.R$string;
import com.transsion.rewardscenter.task.ad.StageTaskProgressLayout;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0011\u0010\fJ\u000f\u0010\u0012\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0012\u0010\fJ\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\fJ\u000f\u0010\u0015\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0015\u0010\fJ\u000f\u0010\u0016\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0016\u0010\fJF\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u000e2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e2!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\n0\u0019H\u0002¢\u0006\u0004\b\u001f\u0010 Ji\u0010&\u001a\u00020\n2\b\b\u0002\u0010\"\u001a\u00020!2'\b\u0002\u0010$\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020\n\u0018\u00010\u00192%\b\u0002\u0010%\u001a\u001f\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\n\u0018\u00010\u0019H\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020\n2\u0006\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\nH\u0002¢\u0006\u0004\b,\u0010\fJ\u001b\u0010.\u001a\u00020\n2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\nH\u0002¢\u0006\u0004\b0\u0010\fJ%\u00106\u001a\u00020\n2\b\u00102\u001a\u0004\u0018\u0001012\f\u00105\u001a\b\u0012\u0004\u0012\u00020403¢\u0006\u0004\b6\u00107J\u0015\u00109\u001a\u00020\n2\u0006\u00108\u001a\u00020\u000e¢\u0006\u0004\b9\u0010/J\r\u0010:\u001a\u00020\n¢\u0006\u0004\b:\u0010\fJ\r\u0010;\u001a\u00020\n¢\u0006\u0004\b;\u0010\fJ\r\u0010<\u001a\u00020\u001a¢\u0006\u0004\b<\u0010=R\u0014\u0010@\u001a\u00020\u000e8\u0002X\u0082D¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010C\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR$\u0010N\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR$\u0010R\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010I\u001a\u0004\bP\u0010K\"\u0004\bQ\u0010MR\u001b\u0010W\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u001b\u0010Z\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bX\u0010T\u001a\u0004\bY\u0010VR\u001b\u0010]\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b[\u0010T\u001a\u0004\b\\\u0010VR\u001a\u0010`\u001a\b\u0012\u0004\u0012\u00020\u000e038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010b\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010?R\u0016\u0010f\u001a\u00020c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010e¨\u0006g"}, d2 = {"Lcom/transsion/rewardscenter/task/dada/DadaActivateView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "x", "()V", "w", "", "getInstalledDadaPkgName", "()Ljava/lang/String;", "O", "L", "K", "v", "z", "E", "url", "packageName", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "callback", "M", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "", EventConstants.KEY_TIME, NotificationCompat.CATEGORY_MESSAGE, "onFailure", "onSuccess", CampaignEx.JSON_KEY_AD_Q, "(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "Lcom/transsion/rewardscenter/task/dada/DadaTaskState;", "state", "setTaskState", "(Lcom/transsion/rewardscenter/task/dada/DadaTaskState;)V", "J", EventConstants.KEY_SOURCE, "H", "(Ljava/lang/String;)V", "G", "Lwp/a;", XLogUtil.TAG, "", "Lcom/transsion/rewardscenterapi/MemberTaskItem;", "tasks", "setCtxConfig", "(Lwp/a;Ljava/util/List;)V", "pkgName", "onPackageInstall", "onResume", PushConstants.PROVIDER_FIELD_DESTROY, "isCompleted", "()Z", "a", "Ljava/lang/String;", "moduleName", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lwp/a;", "ctxConfig", "Lcom/transsion/rewardscenter/task/dada/r;", "c", "Lcom/transsion/rewardscenter/task/dada/r;", "stageItem", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/rewardscenterapi/MemberTaskItem;", "getStage1stTaskInfo", "()Lcom/transsion/rewardscenterapi/MemberTaskItem;", "setStage1stTaskInfo", "(Lcom/transsion/rewardscenterapi/MemberTaskItem;)V", "stage1stTaskInfo", "e", "getStage2ndTaskInfo", "setStage2ndTaskInfo", "stage2ndTaskInfo", "f", "Lkotlin/Lazy;", "getColorNormal", "()I", "colorNormal", "g", "getColorDownloading", "colorDownloading", "h", "getColorCompleted", "colorCompleted", "i", "Ljava/util/List;", "pkgNameList", "j", "installedPkgName", "Lvp/g;", CampaignEx.JSON_KEY_AD_K, "Lvp/g;", "binding", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DadaActivateView extends ConstraintLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String moduleName;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private wp.a ctxConfig;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private r stageItem;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private MemberTaskItem stage1stTaskInfo;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private MemberTaskItem stage2ndTaskInfo;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy colorNormal;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy colorDownloading;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy colorCompleted;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final List pkgNameList;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String installedPkgName;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private vp.g binding;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51167a;

        static {
            int[] iArr = new int[DadaTaskState.values().length];
            try {
                iArr[DadaTaskState.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DadaTaskState.DOWNLOADING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DadaTaskState.INSTALLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DadaTaskState.CLAIMED_STAGE1.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DadaTaskState.SETTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DadaTaskState.SET_DEFAULT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DadaTaskState.COMPLETED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f51167a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DadaActivateView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DadaActivateView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DadaActivateView(final Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.moduleName = "dada_keyboard";
        this.stageItem = new r(null, 1, null);
        this.colorNormal = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.task.dada.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(DadaActivateView.u(context));
            }
        });
        this.colorDownloading = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.task.dada.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(DadaActivateView.t(context));
            }
        });
        this.colorCompleted = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.task.dada.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(DadaActivateView.s(context));
            }
        });
        this.pkgNameList = CollectionsKt.o("com.dada.inputmethod", "com.dada.inputmethod.tecno", "com.dada.inputmethod.itel", "com.dada.inputmethod.infinix");
        this.installedPkgName = "";
        vp.g gVarC = vp.g.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(gVarC, "inflate(...)");
        this.binding = gVarC;
        x();
        w();
    }

    public /* synthetic */ DadaActivateView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(final DadaActivateView dadaActivateView, String str, boolean z10) {
        if (z10) {
            dadaActivateView.H("ps");
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "Failed to open PalmPlay.", false, 4, null);
            N(dadaActivateView, str, null, new Function1() { // from class: com.transsion.rewardscenter.task.dada.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DadaActivateView.B(this.f51176a, ((Boolean) obj).booleanValue());
                }
            }, 2, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(DadaActivateView dadaActivateView, boolean z10) {
        if (z10) {
            dadaActivateView.H("gp");
        } else {
            dadaActivateView.H("fail");
            com.transsion.rewardscenter.utils.p.a(false, "Failed to open app store.");
            lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "Failed to open Google Play.", false, 4, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(DadaActivateView dadaActivateView, String str) {
        String string = dadaActivateView.getContext().getString(R$string.dada_set_default_failed_tips);
        Intrinsics.g(string, "getString(...)");
        com.transsion.rewardscenter.utils.p.a(false, string);
        dadaActivateView.stageItem.b(DadaTaskState.CLAIMED_STAGE1);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(DadaActivateView dadaActivateView, boolean z10) {
        Integer rewardAmount;
        if (!z10) {
            Context context = dadaActivateView.getContext();
            int i11 = R$string.dada_set_default_tips;
            MemberTaskItem memberTaskItem = dadaActivateView.stage2ndTaskInfo;
            String string = context.getString(i11, Integer.valueOf((memberTaskItem == null || (rewardAmount = memberTaskItem.getRewardAmount()) == null) ? 10 : rewardAmount.intValue()));
            Intrinsics.g(string, "getString(...)");
            com.transsion.rewardscenter.utils.p.a(false, string);
            dadaActivateView.stageItem.b(DadaTaskState.CLAIMED_STAGE1);
        }
        return Unit.f67061a;
    }

    private final void E() {
        if (StringsKt.q0(getInstalledDadaPkgName())) {
            z();
        } else {
            N(this, "push://dada.com?action=openguide&utm_source=MBPoint", null, new Function1() { // from class: com.transsion.rewardscenter.task.dada.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DadaActivateView.F(((Boolean) obj).booleanValue());
                }
            }, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(boolean z10) {
        if (!z10) {
            com.transsion.rewardscenter.utils.p.a(false, "Failed to open app.");
        }
        return Unit.f67061a;
    }

    private final void G() {
        HashMap map = new HashMap();
        map.put("module_name", this.moduleName);
        map.put("is_installed", "1");
        hj.i.f64505a.z("broadcast", map, "rewards_center");
    }

    private final void H(String source) {
        HashMap map = new HashMap();
        map.put("module_name", this.moduleName);
        map.put("ad_state", this.stageItem.a().name());
        if (source != null) {
            map.put(EventConstants.KEY_SOURCE, source);
        }
        hj.i.f64505a.p("rewards_center", map);
    }

    static /* synthetic */ void I(DadaActivateView dadaActivateView, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        dadaActivateView.H(str);
    }

    private final void J() {
        HashMap map = new HashMap();
        map.put("module_name", "dada_keyboard");
        map.put("is_installed", !StringsKt.q0(this.installedPkgName) ? "1" : "0");
        hj.i.f64505a.D("rewards_center", map);
    }

    private final void K() {
        AppCompatTextView appCompatTextView = this.binding.f77403b;
        switch (a.f51167a[this.stageItem.a().ordinal()]) {
            case 2:
                appCompatTextView.setText("Downloading...");
                appCompatTextView.setTextColor(getColorDownloading());
                break;
            case 3:
            case 6:
                appCompatTextView.setText("Claim");
                appCompatTextView.setTextColor(getColorNormal());
                break;
            case 4:
            case 5:
                appCompatTextView.setText(" Go ");
                appCompatTextView.setTextColor(getColorNormal());
                break;
            case 7:
                appCompatTextView.setText("Completed");
                appCompatTextView.setTextColor(getColorCompleted());
                break;
            default:
                appCompatTextView.setText("Get Now");
                appCompatTextView.setTextColor(getColorNormal());
                break;
        }
    }

    private final void L() {
        StageTaskProgressLayout stageTaskProgressLayout = this.binding.f77405d;
        switch (a.f51167a[this.stageItem.a().ordinal()]) {
            case 1:
                stageTaskProgressLayout.reset();
                break;
            case 2:
                stageTaskProgressLayout.setFirstStageProgress(0);
                stageTaskProgressLayout.startFirstStageAnimation();
                break;
            case 3:
                stageTaskProgressLayout.stopFirstStageAnimation();
                stageTaskProgressLayout.setFirstStageProgress(100);
                break;
            case 4:
                stageTaskProgressLayout.setFirstStageProgress(100);
                StageTaskProgressLayout.setFirstStagePointIcon$default(stageTaskProgressLayout, false, 1, null);
                break;
            case 5:
                stageTaskProgressLayout.setFirstStageProgress(100);
                StageTaskProgressLayout.setFirstStagePointIcon$default(stageTaskProgressLayout, false, 1, null);
                stageTaskProgressLayout.setSecondStageProgress(0);
                break;
            case 6:
                stageTaskProgressLayout.setFirstStageProgress(100);
                stageTaskProgressLayout.setSecondStageProgress(100);
                StageTaskProgressLayout.setFirstStagePointIcon$default(stageTaskProgressLayout, false, 1, null);
                break;
            case 7:
                stageTaskProgressLayout.setFirstStageProgress(100);
                stageTaskProgressLayout.setSecondStageProgress(100);
                stageTaskProgressLayout.complete();
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        MemberTaskItem memberTaskItem = this.stage1stTaskInfo;
        stageTaskProgressLayout.setFirstStagePoints("+" + (memberTaskItem != null ? memberTaskItem.getRewardAmount() : null));
        MemberTaskItem memberTaskItem2 = this.stage2ndTaskInfo;
        stageTaskProgressLayout.setSecondStagePoints("+" + (memberTaskItem2 != null ? memberTaskItem2.getRewardAmount() : null));
    }

    private final void M(String url, String packageName, Function1 callback) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(url));
            if (packageName != null) {
                intent.setPackage(packageName);
            }
            intent.addFlags(ASTNode.DEOP);
            getContext().startActivity(intent);
            callback.invoke(Boolean.TRUE);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "--> Failed to open: " + thM457exceptionOrNullimpl, false, 4, null);
            callback.invoke(Boolean.FALSE);
        }
    }

    static /* synthetic */ void N(DadaActivateView dadaActivateView, String str, String str2, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        dadaActivateView.M(str, str2, function1);
    }

    private final void O() {
        L();
        K();
    }

    private final int getColorCompleted() {
        return ((Number) this.colorCompleted.getValue()).intValue();
    }

    private final int getColorDownloading() {
        return ((Number) this.colorDownloading.getValue()).intValue();
    }

    private final int getColorNormal() {
        return ((Number) this.colorNormal.getValue()).intValue();
    }

    private final String getInstalledDadaPkgName() {
        for (String str : this.pkgNameList) {
            com.transsion.rewardscenter.utils.o oVar = com.transsion.rewardscenter.utils.o.f51311a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            if (oVar.a(context, str)) {
                return str;
            }
        }
        return "";
    }

    private final void q(long time, Function1 onFailure, Function1 onSuccess) {
        n0 n0VarB;
        wp.a aVar = this.ctxConfig;
        if (aVar == null || (n0VarB = aVar.b()) == null) {
            return;
        }
        kotlinx.coroutines.k.d(n0VarB, null, null, new DadaActivateView$checkSetDefault$1(this, time, onFailure, onSuccess, null), 3, null);
    }

    static /* synthetic */ void r(DadaActivateView dadaActivateView, long j11, Function1 function1, Function1 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = 2000;
        }
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        if ((i11 & 4) != 0) {
            function2 = null;
        }
        dadaActivateView.q(j11, function1, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int s(Context context) {
        return androidx.core.content.b.getColor(context, R$color.white_50);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTaskState(DadaTaskState state) {
        this.stageItem.b(state);
        O();
        q.f51185a.e(this.installedPkgName, this.stageItem.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int t(Context context) {
        return androidx.core.content.b.getColor(context, R$color.white_50);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int u(Context context) {
        return androidx.core.content.b.getColor(context, R$color.white);
    }

    private final void v() {
        n0 n0VarB;
        n0 n0VarB2;
        if (this.stageItem.a() != DadaTaskState.NORMAL) {
            I(this, null, 1, null);
        }
        switch (a.f51167a[this.stageItem.a().ordinal()]) {
            case 1:
                z();
                this.stageItem.b(DadaTaskState.DOWNLOADING);
                O();
                return;
            case 2:
            case 5:
            case 7:
                return;
            case 3:
                wp.a aVar = this.ctxConfig;
                if (aVar == null || (n0VarB = aVar.b()) == null) {
                    return;
                }
                kotlinx.coroutines.k.d(n0VarB, null, null, new DadaActivateView$handleActionClick$1(this, null), 3, null);
                return;
            case 4:
                E();
                this.stageItem.b(DadaTaskState.SETTING);
                O();
                return;
            case 6:
                wp.a aVar2 = this.ctxConfig;
                if (aVar2 == null || (n0VarB2 = aVar2.b()) == null) {
                    return;
                }
                kotlinx.coroutines.k.d(n0VarB2, null, null, new DadaActivateView$handleActionClick$2(this, null), 3, null);
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final void w() {
        r rVar = this.stageItem;
        DadaTaskState dadaTaskStateC = q.f51185a.c(this.pkgNameList);
        if (dadaTaskStateC == null) {
            dadaTaskStateC = DadaTaskState.NORMAL;
        }
        rVar.b(dadaTaskStateC);
        lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "check DaDa task state, taskState = " + this.stageItem, false, 4, null);
        this.installedPkgName = getInstalledDadaPkgName();
        if ((this.stageItem.a() == DadaTaskState.NORMAL || this.stageItem.a() == DadaTaskState.DOWNLOADING) && !StringsKt.q0(this.installedPkgName)) {
            setTaskState(DadaTaskState.INSTALLED);
        }
        J();
    }

    private final void x() {
        StageTaskProgressLayout stageTaskProgressLayout = this.binding.f77405d;
        String string = getResources().getString(R$string.dada_first_stage);
        Intrinsics.g(string, "getString(...)");
        stageTaskProgressLayout.setFirstStageText(string);
        StageTaskProgressLayout stageTaskProgressLayout2 = this.binding.f77405d;
        String string2 = getResources().getString(R$string.dada_second_stage);
        Intrinsics.g(string2, "getString(...)");
        stageTaskProgressLayout2.setSecondStageText(string2);
        AppCompatTextView btnAction = this.binding.f77403b;
        Intrinsics.g(btnAction, "btnAction");
        jg.c.c(btnAction, 0L, new Function1() { // from class: com.transsion.rewardscenter.task.dada.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DadaActivateView.y(this.f51173a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y(DadaActivateView dadaActivateView, View it) {
        Intrinsics.h(it, "it");
        dadaActivateView.v();
        return Unit.f67061a;
    }

    private final void z() {
        final String str = "https://play.google.com/store/apps/details?id=com.dada.inputmethod&referrer=MBPoint";
        M("palmplay://thirdlauncher.com/?entryType=AppDetail&packageName=com.dada.inputmethod&_source=CrossPro_MBPonit_dada&referrer=CrossPro_MBPoint_dada", MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, new Function1() { // from class: com.transsion.rewardscenter.task.dada.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DadaActivateView.A(this.f51174a, str, ((Boolean) obj).booleanValue());
            }
        });
    }

    public final void destroy() {
        this.binding.f77405d.stopFirstStageAnimation();
        this.ctxConfig = null;
    }

    public final MemberTaskItem getStage1stTaskInfo() {
        return this.stage1stTaskInfo;
    }

    public final MemberTaskItem getStage2ndTaskInfo() {
        return this.stage2ndTaskInfo;
    }

    public final boolean isCompleted() {
        return this.stageItem.a() == DadaTaskState.COMPLETED;
    }

    public final void onPackageInstall(String pkgName) {
        Intrinsics.h(pkgName, "pkgName");
        if (this.pkgNameList.contains(pkgName)) {
            this.installedPkgName = pkgName;
            if (this.stageItem.a() == DadaTaskState.NORMAL || this.stageItem.a() == DadaTaskState.DOWNLOADING) {
                setTaskState(DadaTaskState.INSTALLED);
                G();
            }
        }
    }

    public final void onResume() {
        if (this.stageItem.a() == DadaTaskState.SETTING) {
            r(this, 0L, new Function1() { // from class: com.transsion.rewardscenter.task.dada.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DadaActivateView.C(this.f51171a, (String) obj);
                }
            }, new Function1() { // from class: com.transsion.rewardscenter.task.dada.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DadaActivateView.D(this.f51172a, ((Boolean) obj).booleanValue());
                }
            }, 1, null);
        }
    }

    public final void setCtxConfig(wp.a config, List<MemberTaskItem> tasks) {
        Object obj;
        Object next;
        Intrinsics.h(tasks, "tasks");
        this.ctxConfig = config;
        List<MemberTaskItem> list = tasks;
        Iterator<T> it = list.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
            int value = TaskType.DADA_STAGE_1ST.getValue();
            if (taskSubType != null && taskSubType.intValue() == value) {
                break;
            }
        }
        this.stage1stTaskInfo = (MemberTaskItem) next;
        for (Object obj2 : list) {
            Integer taskSubType2 = ((MemberTaskItem) obj2).getTaskSubType();
            int value2 = TaskType.DADA_STAGE_2ND.getValue();
            if (taskSubType2 != null && taskSubType2.intValue() == value2) {
                obj = obj2;
                break;
            }
        }
        this.stage2ndTaskInfo = (MemberTaskItem) obj;
        if (this.stageItem.a() == DadaTaskState.CLAIMED_STAGE1) {
            r(this, 0L, null, null, 6, null);
        }
        lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "---> setCtxConfig state:" + this.stageItem.a(), false, 4, null);
        O();
    }

    public final void setStage1stTaskInfo(MemberTaskItem memberTaskItem) {
        this.stage1stTaskInfo = memberTaskItem;
    }

    public final void setStage2ndTaskInfo(MemberTaskItem memberTaskItem) {
        this.stage2ndTaskInfo = memberTaskItem;
    }
}
