package com.transsion.publish.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.PermissionUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$id;
import com.transsion.publish.R$string;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.bean.BigImageBean;
import com.transsion.publish.bean.PreviewMediaConfirmEvent;
import com.transsion.publish.view.CustomHeader;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 n2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u001d\u0010\u000b\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u001f\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u0019\u0010\u0018\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J/\u0010\u001f\u001a\u00020\u00052\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\"\u0010\u0004J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0012H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020&H\u0016¢\u0006\u0004\b)\u0010(J\u000f\u0010*\u001a\u00020&H\u0016¢\u0006\u0004\b*\u0010(J\u0019\u0010-\u001a\u00020\u00052\b\u0010,\u001a\u0004\u0018\u00010+H\u0014¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0002H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0005H\u0014¢\u0006\u0004\b1\u0010\u0004J)\u00104\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u00122\b\u0010\n\u001a\u0004\u0018\u00010\u0017H\u0014¢\u0006\u0004\b4\u00105J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108R\u0014\u0010;\u001a\u00020\u00108\u0002X\u0082D¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010JR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u001e\u0010T\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010X\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010_\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010a\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010^R\u001e\u0010f\u001a\n\u0012\u0004\u0012\u00020c\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u001e\u0010h\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010eR\u001e\u0010j\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010eR\u0016\u0010m\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010l¨\u0006o"}, d2 = {"Lcom/transsion/publish/ui/SelectImageActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lhp/d;", "<init>", "()V", "", "initData", "Q0", "", "Landroid/net/Uri;", "data", "N0", "(Ljava/util/List;)V", "O0", "initView", "M0", "", "uri", "", EventConstants.KEY_SOURCE, "P0", "(Ljava/lang/String;I)V", "D0", "Landroid/content/Intent;", "A0", "(Landroid/content/Intent;)V", "K0", "", "Lcom/transsion/publish/api/PhotoEntity;", "photos", "selectList", "y0", "(Ljava/util/List;Ljava/util/List;)V", "showLoading", "C0", "size", "z0", "(I)V", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "B0", "()Lhp/d;", "onDestroy", "requestCode", "resultCode", "onActivityResult", "(IILandroid/content/Intent;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "a", "Ljava/lang/String;", "tag", "Landroidx/recyclerview/widget/RecyclerView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/recyclerview/widget/RecyclerView;", "videoRecycler", "Lcom/transsion/publish/adapter/e0;", "c", "Lcom/transsion/publish/adapter/e0;", "videoAdapter", "Ljp/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljp/b;", "selectPhotoManager", "Landroid/widget/LinearLayout;", "e", "Landroid/widget/LinearLayout;", "noContentView", "f", "lockView", "Landroid/widget/ProgressBar;", "g", "Landroid/widget/ProgressBar;", "selectVideoLoading", "h", "Ljava/util/List;", "selectImages", "Lio/reactivex/rxjava3/disposables/c;", "i", "Lio/reactivex/rxjava3/disposables/c;", "disposable", "", "j", "J", "showDuration", CampaignEx.JSON_KEY_AD_K, "I", "keyType", "l", "maxLimit", "Landroidx/activity/result/b;", "Landroidx/activity/result/e;", "m", "Landroidx/activity/result/b;", "imageSelectLauncher", "n", "singleSelectLauncher", "o", "clipLauncher", TtmlNode.TAG_P, "Z", "underOS33", CampaignEx.JSON_KEY_AD_Q, "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SelectImageActivity extends BaseActivity<hp.d> {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private RecyclerView videoRecycler;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.publish.adapter.e0 videoAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private jp.b selectPhotoManager;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private LinearLayout noContentView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private LinearLayout lockView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private ProgressBar selectVideoLoading;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private List selectImages;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private io.reactivex.rxjava3.disposables.c disposable;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private long showDuration;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int keyType;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b imageSelectLauncher;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b singleSelectLauncher;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b clipLauncher;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean underOS33;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String tag = "ImageSelect";

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int maxLimit = 1;

    /* JADX INFO: renamed from: com.transsion.publish.ui.SelectImageActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, int i11, int i12, List list) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) SelectImageActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("key_type", i11);
            if (list != null) {
                intent.putExtra("key_list", (Serializable) list);
            }
            intent.putExtra("key_limited", i12);
            context.startActivity(intent);
        }
    }

    public static final class b implements io.reactivex.rxjava3.core.o {
        b() {
        }

        @Override // io.reactivex.rxjava3.core.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(List t11) {
            Intrinsics.h(t11, "t");
            if (t11.isEmpty() || (t11.size() == 1 && TextUtils.isEmpty(((PhotoEntity) t11.get(0)).getLocalPath()))) {
                LinearLayout linearLayout = SelectImageActivity.this.noContentView;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
            } else {
                SelectImageActivity selectImageActivity = SelectImageActivity.this;
                List list = selectImageActivity.selectImages;
                selectImageActivity.y0(t11, list != null ? CollectionsKt.U0(list) : null);
                com.transsion.publish.adapter.e0 e0Var = SelectImageActivity.this.videoAdapter;
                if (e0Var != null) {
                    e0Var.addData(t11);
                }
            }
            SelectImageActivity.this.C0();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            io.reactivex.rxjava3.disposables.c cVar = SelectImageActivity.this.disposable;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable e11) {
            Intrinsics.h(e11, "e");
            lg.a.C0828a.f(lg.a.f68839a, "SelectVideoManager", "onError e:" + e11, false, 4, null);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            SelectImageActivity.this.disposable = d11;
        }
    }

    public static final class c implements PermissionUtils.b {
        c() {
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onDenied() {
            LinearLayout linearLayout = SelectImageActivity.this.lockView;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            ProgressBar progressBar = SelectImageActivity.this.selectVideoLoading;
            if (progressBar != null) {
                jg.c.g(progressBar);
            }
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onGranted() {
            LinearLayout linearLayout = SelectImageActivity.this.lockView;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            SelectImageActivity.this.K0();
        }
    }

    /* JADX INFO: renamed from: com.transsion.publish.ui.SelectImageActivity$initView$5, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    /* synthetic */ class AnonymousClass5 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
        AnonymousClass5(Object obj) {
            super(1, obj, SelectImageActivity.class, "checkSelectNum", "checkSelectNum(I)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return Unit.f67061a;
        }

        public final void invoke(int i11) {
            ((SelectImageActivity) this.receiver).z0(i11);
        }
    }

    public SelectImageActivity() {
        this.underOS33 = Build.VERSION.SDK_INT < 33;
    }

    private final void A0(Intent data) {
        Bundle extras;
        Bundle extras2;
        if (data != null && (extras2 = data.getExtras()) != null && !extras2.containsKey("clip_result")) {
            finish();
            return;
        }
        Serializable serializable = (data == null || (extras = data.getExtras()) == null) ? null : extras.getSerializable("clip_result");
        if (serializable == null) {
            lg.a.C0828a.f(lg.a.f68839a, "clip_result", "null...", false, 4, null);
            finish();
            return;
        }
        if (serializable instanceof PhotoEntity) {
            lg.a.C0828a.f(lg.a.f68839a, "clip_result", "result:" + serializable, false, 4, null);
            int i11 = this.keyType;
            if (i11 == 0 || i11 == 5) {
                fp.a aVar = new fp.a();
                aVar.o(5);
                aVar.n(1);
                aVar.l((PhotoEntity) serializable);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = fp.a.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, aVar, 0L);
            } else {
                Intent intent = new Intent();
                intent.putExtra("clip_result", ((PhotoEntity) serializable).getLocalPath());
                setResult(-1, intent);
            }
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C0() {
        ProgressBar progressBar = this.selectVideoLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        ProgressBar progressBar2 = this.selectVideoLoading;
        if (progressBar2 != null) {
            jg.c.g(progressBar2);
        }
    }

    private final void D0() {
        if (this.clipLauncher != null) {
            return;
        }
        this.clipLauncher = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.publish.ui.n0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                SelectImageActivity.E0(this.f50593a, (ActivityResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(SelectImageActivity selectImageActivity, ActivityResult result) {
        Intrinsics.h(result, "result");
        selectImageActivity.A0(result.getData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(SelectImageActivity selectImageActivity, PreviewMediaConfirmEvent it) {
        Intrinsics.h(it, "it");
        selectImageActivity.M0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G0(SelectImageActivity selectImageActivity, BigImageBean it) {
        Intrinsics.h(it, "it");
        Integer from = it.getFrom();
        if (from == null || from.intValue() != 3) {
            Integer from2 = it.getFrom();
            if (from2 == null || from2.intValue() != 1) {
                return Unit.f67061a;
            }
            Integer operator = it.getOperator();
            if (operator != null && operator.intValue() == 1) {
                com.transsion.publish.adapter.e0 e0Var = selectImageActivity.videoAdapter;
                if (e0Var != null) {
                    e0Var.n();
                }
                com.transsion.publish.adapter.e0 e0Var2 = selectImageActivity.videoAdapter;
                if (e0Var2 != null) {
                    e0Var2.x();
                }
                com.transsion.publish.adapter.e0 e0Var3 = selectImageActivity.videoAdapter;
                selectImageActivity.y0(e0Var3 != null ? e0Var3.q() : null, it.getSelect());
                com.transsion.publish.adapter.e0 e0Var4 = selectImageActivity.videoAdapter;
                if (e0Var4 != null) {
                    e0Var4.notifyDataSetChanged();
                }
            }
            return Unit.f67061a;
        }
        Integer operator2 = it.getOperator();
        if (operator2 != null && operator2.intValue() == 2) {
            com.transsion.publish.adapter.e0 e0Var5 = selectImageActivity.videoAdapter;
            if (e0Var5 != null) {
                e0Var5.n();
            }
            com.transsion.publish.adapter.e0 e0Var6 = selectImageActivity.videoAdapter;
            if (e0Var6 != null) {
                e0Var6.x();
            }
            com.transsion.publish.adapter.e0 e0Var7 = selectImageActivity.videoAdapter;
            if (e0Var7 != null) {
                e0Var7.notifyDataSetChanged();
            }
            return Unit.f67061a;
        }
        com.transsion.publish.adapter.e0 e0Var8 = selectImageActivity.videoAdapter;
        if (e0Var8 != null) {
            e0Var8.n();
        }
        com.transsion.publish.adapter.e0 e0Var9 = selectImageActivity.videoAdapter;
        if (e0Var9 != null) {
            e0Var9.x();
        }
        com.transsion.publish.adapter.e0 e0Var10 = selectImageActivity.videoAdapter;
        selectImageActivity.y0(e0Var10 != null ? e0Var10.q() : null, it.getSelect());
        com.transsion.publish.adapter.e0 e0Var11 = selectImageActivity.videoAdapter;
        if (e0Var11 != null) {
            e0Var11.notifyDataSetChanged();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(SelectImageActivity selectImageActivity, View view) {
        selectImageActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(SelectImageActivity selectImageActivity, View it) {
        Intrinsics.h(it, "it");
        selectImageActivity.M0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(View view) {
        PermissionUtils.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0() {
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        showLoading();
        this.selectPhotoManager = new jp.b(this);
        io.reactivex.rxjava3.core.j.g(new io.reactivex.rxjava3.core.l() { // from class: com.transsion.publish.ui.m0
            @Override // io.reactivex.rxjava3.core.l
            public final void a(io.reactivex.rxjava3.core.k kVar) throws Throwable {
                SelectImageActivity.L0(this.f50590a, kVar);
            }
        }).b(12).v(io.reactivex.rxjava3.android.schedulers.b.c()).E(qz.a.c()).subscribe(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(SelectImageActivity selectImageActivity, io.reactivex.rxjava3.core.k emitter) throws Throwable {
        Intrinsics.h(emitter, "emitter");
        lg.a.C0828a.f(lg.a.f68839a, "SelectVideoManager", "loadLocalVideo success", false, 4, null);
        jp.b bVar = selectImageActivity.selectPhotoManager;
        if (bVar != null) {
            bVar.a(emitter);
        }
        if (emitter.isDisposed()) {
            return;
        }
        emitter.onComplete();
    }

    private final void M0() {
        com.transsion.publish.adapter.e0 e0Var = this.videoAdapter;
        List listR = e0Var != null ? e0Var.r() : null;
        List list = listR;
        if (list == null || list.isEmpty()) {
            finish();
            return;
        }
        if (this.keyType != 0) {
            String localPath = ((PhotoEntity) listR.get(0)).getLocalPath();
            if (localPath != null) {
                P0(localPath, this.keyType);
                return;
            }
            return;
        }
        fp.a aVar = new fp.a();
        aVar.o(0);
        aVar.n(1);
        aVar.r(CollectionsKt.U0(list));
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
        finish();
    }

    private final void N0(List data) {
        fp.a aVar = new fp.a();
        aVar.o(Integer.valueOf(this.keyType));
        aVar.n(1);
        aVar.r(new ArrayList());
        Iterator it = data.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            PhotoEntity photoEntity = new PhotoEntity();
            gp.a aVarB = mp.g.f69681a.b(this, uri);
            if (aVarB != null) {
                photoEntity.setLocalPath(aVarB.c());
                photoEntity.setImageTitle(aVarB.e());
                photoEntity.setWidth(aVarB.f());
                photoEntity.setHeight(aVarB.b());
                photoEntity.setImageSize(aVarB.d());
            }
            List listH = aVar.h();
            if (listH != null) {
                listH.add(photoEntity);
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                getContentResolver().takePersistableUriPermission(uri, 1);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
        finish();
    }

    private final void O0() {
        String str;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 34) {
            str = "android.permission.READ_MEDIA_VISUAL_USER_SELECTED";
        } else {
            str = i11 >= 33 ? "android.permission.READ_MEDIA_IMAGES" : "android.permission.READ_EXTERNAL_STORAGE";
        }
        if (PermissionUtils.s(str)) {
            K0();
        } else {
            PermissionUtils.x(str).m(new c()).y();
        }
    }

    private final void P0(String uri, int source) {
        ClippingImageActivity.INSTANCE.a(this, uri, source, this.clipLauncher);
    }

    private final void Q0() {
        int i11 = this.maxLimit;
        if (i11 > 1) {
            androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.e(i11), new androidx.activity.result.a() { // from class: com.transsion.publish.ui.p0
                @Override // androidx.activity.result.a
                public final void a(Object obj) {
                    SelectImageActivity.R0(this.f50600a, (List) obj);
                }
            });
            this.imageSelectLauncher = bVarRegisterForActivityResult;
            if (bVarRegisterForActivityResult != null) {
                bVarRegisterForActivityResult.a(androidx.activity.result.f.b(f.g.d.f62117a, 0, false, null, 14, null));
                return;
            }
            return;
        }
        androidx.activity.result.b bVarRegisterForActivityResult2 = registerForActivityResult(new f.b(), new androidx.activity.result.a() { // from class: com.transsion.publish.ui.q0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                SelectImageActivity.S0(this.f50604a, (Uri) obj);
            }
        });
        this.singleSelectLauncher = bVarRegisterForActivityResult2;
        if (bVarRegisterForActivityResult2 != null) {
            bVarRegisterForActivityResult2.a(ShareConstant.SHARE_TYPE_IMAGE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(SelectImageActivity selectImageActivity, List data) {
        Intrinsics.h(data, "data");
        lg.a.C0828a.f(lg.a.f68839a, selectImageActivity.tag, "imageSelect keyType:" + selectImageActivity.keyType + ", data：" + data, false, 4, null);
        selectImageActivity.N0(data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(SelectImageActivity selectImageActivity, Uri uri) {
        String strC;
        lg.a.C0828a.f(lg.a.f68839a, selectImageActivity.tag, "singleSelect keyType:" + selectImageActivity.keyType + ", uri：" + uri, false, 4, null);
        if (uri == null) {
            selectImageActivity.finish();
            return;
        }
        if (selectImageActivity.keyType == 0) {
            selectImageActivity.N0(CollectionsKt.e(uri));
            return;
        }
        gp.a aVarB = mp.g.f69681a.b(selectImageActivity, uri);
        if (aVarB == null || (strC = aVarB.c()) == null) {
            return;
        }
        selectImageActivity.P0(strC, selectImageActivity.keyType);
    }

    private final void initData() {
        Function1 function1 = new Function1() { // from class: com.transsion.publish.ui.o0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectImageActivity.F0(this.f50596a, (PreviewMediaConfirmEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewMediaConfirmEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        List list;
        List<PhotoEntity> list2 = this.selectImages;
        PhotoEntity photoEntity = null;
        if (list2 != null) {
            for (PhotoEntity photoEntity2 : list2) {
                if (photoEntity2.getIsAdd()) {
                    photoEntity = photoEntity2;
                }
            }
        }
        if (photoEntity != null && (list = this.selectImages) != null) {
            list.remove(photoEntity);
        }
        ((CustomHeader) findViewById(R$id.sv_title_bar)).setOnBackClick(new View.OnClickListener() { // from class: com.transsion.publish.ui.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectImageActivity.H0(this.f50580a, view);
            }
        });
        List list3 = this.selectImages;
        z0(list3 != null ? list3.size() : 0);
        TextView confirmTV = ((hp.d) getMViewBinding()).f64743b;
        Intrinsics.g(confirmTV, "confirmTV");
        jg.c.c(confirmTV, 0L, new Function1() { // from class: com.transsion.publish.ui.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectImageActivity.I0(this.f50581a, (View) obj);
            }
        }, 1, null);
        this.selectVideoLoading = (ProgressBar) findViewById(R$id.select_video_loading);
        this.noContentView = (LinearLayout) findViewById(R$id.sv_no_content_view);
        this.lockView = (LinearLayout) findViewById(R$id.sv_lock_view);
        TextView textView = (TextView) findViewById(R$id.sv_tv_grant);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.k0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectImageActivity.J0(view);
                }
            });
        }
        this.videoRecycler = (RecyclerView) findViewById(R$id.select_video_recycler);
        com.transsion.publish.adapter.e0 e0Var = new com.transsion.publish.adapter.e0(new AnonymousClass5(this));
        this.videoAdapter = e0Var;
        e0Var.y(this.keyType, this);
        com.transsion.publish.adapter.e0 e0Var2 = this.videoAdapter;
        if (e0Var2 != null) {
            e0Var2.z(this.maxLimit);
        }
        RecyclerView recyclerView = this.videoRecycler;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new NpaGridLayoutManager((Context) this, 4, 1, false));
        }
        RecyclerView recyclerView2 = this.videoRecycler;
        if (recyclerView2 != null) {
            recyclerView2.addItemDecoration(new mp.f(com.blankj.utilcode.util.a0.a(2.0f)));
        }
        RecyclerView recyclerView3 = this.videoRecycler;
        if (recyclerView3 != null) {
            recyclerView3.setAdapter(this.videoAdapter);
        }
        Function1 function1 = new Function1() { // from class: com.transsion.publish.ui.l0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectImageActivity.G0(this.f50586a, (BigImageBean) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = BigImageBean.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    private final void showLoading() {
        ProgressBar progressBar = this.selectVideoLoading;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
        ProgressBar progressBar2 = this.selectVideoLoading;
        if (progressBar2 != null) {
            jg.c.k(progressBar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y0(List photos, List selectList) {
        List list;
        if ((selectList != null && selectList.isEmpty()) || (list = photos) == null || list.isEmpty() || selectList == null) {
            return;
        }
        int i11 = 0;
        for (Object obj : selectList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            PhotoEntity photoEntity = (PhotoEntity) obj;
            if (photos != null) {
                Iterator it = photos.iterator();
                while (it.hasNext()) {
                    PhotoEntity photoEntity2 = (PhotoEntity) it.next();
                    if (Intrinsics.c(photoEntity2 != null ? photoEntity2.getLocalPath() : null, photoEntity.getLocalPath())) {
                        photoEntity2.setEnableSelect(true);
                        com.transsion.publish.adapter.e0 e0Var = this.videoAdapter;
                        if (e0Var != null) {
                            e0Var.A(photoEntity);
                        }
                    }
                }
            }
            i11 = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void z0(int size) {
        TextView selectNumTV = ((hp.d) getMViewBinding()).f64744c;
        Intrinsics.g(selectNumTV, "selectNumTV");
        selectNumTV.setVisibility(size > 0 ? 0 : 8);
        ((hp.d) getMViewBinding()).f64744c.setText(getString(R$string.image_select_num_tips, Integer.valueOf(size), Integer.valueOf(this.maxLimit)));
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public hp.d getViewBinding() {
        hp.d dVarC = hp.d.c(getLayoutInflater());
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        return new hj.b("select_image", false, 2, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        lg.a.C0828a.f(lg.a.f68839a, this.tag, "onActivityResult keyType:" + this.keyType + ", requestCodeP:" + requestCode + ", data:" + (data != null ? data.getData() : null), false, 4, null);
        if (requestCode != 10002) {
            return;
        }
        A0(data);
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.showDuration = System.currentTimeMillis();
        this.maxLimit = getIntent().getIntExtra("key_limited", 1);
        this.keyType = getIntent().getIntExtra("key_type", 0);
        if (getIntent().hasExtra("key_list")) {
            Serializable serializableExtra = getIntent().getSerializableExtra("key_list");
            Intrinsics.f(serializableExtra, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.publish.api.PhotoEntity>");
            this.selectImages = TypeIntrinsics.c(serializableExtra);
        }
        if (this.underOS33) {
            initView();
            initData();
            O0();
        } else {
            Q0();
            View viewFindViewById = findViewById(com.transsion.baseui.R$id.llRootView);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            jg.c.h(viewFindViewById);
        }
        D0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        io.reactivex.rxjava3.disposables.c cVar = this.disposable;
        if (cVar != null) {
            cVar.dispose();
        }
        com.transsion.publish.n.f50455b.a().d();
    }
}
