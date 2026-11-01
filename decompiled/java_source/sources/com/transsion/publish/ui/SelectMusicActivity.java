package com.transsion.publish.ui;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.PermissionUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$id;
import com.transsion.publish.api.AudioEntity;
import com.transsion.publish.view.CustomHeader;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 G2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ\u0019\u0010\u0013\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0018\u0010\u0004J)\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00104\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00101R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010F\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010?¨\u0006H"}, d2 = {"Lcom/transsion/publish/ui/SelectMusicActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lhp/f;", "<init>", "()V", "", "C0", "initView", "B0", "z0", "showLoading", "v0", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "u0", "()Lhp/f;", "onPause", "onDestroy", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Landroidx/recyclerview/widget/RecyclerView;", "a", "Landroidx/recyclerview/widget/RecyclerView;", "recycler", "Lcom/transsion/publish/adapter/b0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/publish/adapter/b0;", "musicAdapter", "Ljp/a;", "c", "Ljp/a;", "selectMusicManager", "Landroid/widget/LinearLayout;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/LinearLayout;", "noContentView", "e", "lockView", "Landroid/widget/ProgressBar;", "f", "Landroid/widget/ProgressBar;", "selectVideoLoading", "Lmp/d;", "g", "Lmp/d;", "mediaPlayerHelper", "", "h", "Ljava/lang/String;", "MUSIC_PERMISSIONS", "Lio/reactivex/rxjava3/disposables/c;", "i", "Lio/reactivex/rxjava3/disposables/c;", "disposable", "j", "playPath", CampaignEx.JSON_KEY_AD_K, "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SelectMusicActivity extends BaseActivity<hp.f> {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RecyclerView recycler;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsion.publish.adapter.b0 musicAdapter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private jp.a selectMusicManager;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private LinearLayout noContentView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private LinearLayout lockView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ProgressBar selectVideoLoading;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private mp.d mediaPlayerHelper;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final String MUSIC_PERMISSIONS;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private io.reactivex.rxjava3.disposables.c disposable;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String playPath;

    /* JADX INFO: renamed from: com.transsion.publish.ui.SelectMusicActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) SelectMusicActivity.class);
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }
    }

    public static final class b implements com.transsion.publish.adapter.x {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SelectMusicActivity selectMusicActivity, AudioEntity audioEntity, MediaPlayer mediaPlayer) {
            int i11;
            List listH;
            com.transsion.publish.adapter.b0 b0Var = selectMusicActivity.musicAdapter;
            if (b0Var == null || (listH = b0Var.h()) == null) {
                i11 = -1;
            } else {
                int i12 = 0;
                i11 = -1;
                for (Object obj : listH) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        CollectionsKt.u();
                    }
                    if (Intrinsics.c(audioEntity, (AudioEntity) obj)) {
                        i11 = i12;
                    }
                    i12 = i13;
                }
            }
            if (i11 != -1) {
                audioEntity.setPlay(false);
                com.transsion.publish.adapter.b0 b0Var2 = selectMusicActivity.musicAdapter;
                if (b0Var2 != null) {
                    b0Var2.notifyItemChanged(i11);
                }
            }
        }

        @Override // com.transsion.publish.adapter.x
        public void a(final AudioEntity info) {
            Context context;
            mp.d dVar;
            mp.d dVar2;
            Intrinsics.h(info, "info");
            try {
                if (SelectMusicActivity.this.mediaPlayerHelper == null) {
                    SelectMusicActivity.this.mediaPlayerHelper = new mp.d();
                }
                if (Intrinsics.c(SelectMusicActivity.this.playPath, info.getLocalPath()) && (dVar2 = SelectMusicActivity.this.mediaPlayerHelper) != null && dVar2.b()) {
                    mp.d dVar3 = SelectMusicActivity.this.mediaPlayerHelper;
                    if (dVar3 != null) {
                        dVar3.c();
                        return;
                    }
                    return;
                }
                String localPath = info.getLocalPath();
                if (localPath != null) {
                    final SelectMusicActivity selectMusicActivity = SelectMusicActivity.this;
                    RecyclerView recyclerView = selectMusicActivity.recycler;
                    if (recyclerView != null && (context = recyclerView.getContext()) != null && (dVar = selectMusicActivity.mediaPlayerHelper) != null) {
                        dVar.d(context, localPath, false, new MediaPlayer.OnCompletionListener() { // from class: com.transsion.publish.ui.d1
                            @Override // android.media.MediaPlayer.OnCompletionListener
                            public final void onCompletion(MediaPlayer mediaPlayer) {
                                SelectMusicActivity.b.c(selectMusicActivity, info, mediaPlayer);
                            }
                        });
                    }
                }
                SelectMusicActivity.this.playPath = info.getLocalPath();
            } catch (Exception e11) {
                String message = e11.getMessage();
                if (message != null) {
                    lg.a.C0828a.f(lg.a.f68839a, "audioTAG", message, false, 4, null);
                }
            }
        }
    }

    public static final class c implements io.reactivex.rxjava3.core.o {
        c() {
        }

        @Override // io.reactivex.rxjava3.core.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(List t11) {
            Intrinsics.h(t11, "t");
            if (t11.isEmpty() || (t11.size() == 1 && TextUtils.isEmpty(((AudioEntity) t11.get(0)).getLocalPath()))) {
                LinearLayout linearLayout = SelectMusicActivity.this.noContentView;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
            } else {
                com.transsion.publish.adapter.b0 b0Var = SelectMusicActivity.this.musicAdapter;
                if (b0Var != null) {
                    b0Var.addData(t11);
                }
            }
            SelectMusicActivity.this.v0();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            io.reactivex.rxjava3.disposables.c cVar = SelectMusicActivity.this.disposable;
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
            SelectMusicActivity.this.disposable = d11;
        }
    }

    public static final class d implements PermissionUtils.b {
        d() {
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onDenied() {
            LinearLayout linearLayout = SelectMusicActivity.this.lockView;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onGranted() {
            LinearLayout linearLayout = SelectMusicActivity.this.lockView;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            SelectMusicActivity.this.z0();
        }
    }

    public SelectMusicActivity() {
        this.MUSIC_PERMISSIONS = Build.VERSION.SDK_INT < 33 ? "android.permission.WRITE_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(SelectMusicActivity selectMusicActivity, io.reactivex.rxjava3.core.k emitter) throws Throwable {
        Intrinsics.h(emitter, "emitter");
        lg.a.C0828a.f(lg.a.f68839a, "SelectMusicManager", "loadLocalMusic success", false, 4, null);
        jp.a aVar = selectMusicActivity.selectMusicManager;
        if (aVar != null) {
            aVar.a(emitter);
        }
        if (emitter.isDisposed()) {
            return;
        }
        emitter.onComplete();
    }

    private final void B0() {
        com.transsion.publish.adapter.b0 b0Var = this.musicAdapter;
        AudioEntity audioEntityI = b0Var != null ? b0Var.i() : null;
        if (audioEntityI == null) {
            finish();
            return;
        }
        fp.a aVar = new fp.a();
        aVar.o(2);
        aVar.n(1);
        aVar.k(audioEntityI);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
        finish();
    }

    private final void C0() {
        if (PermissionUtils.s(this.MUSIC_PERMISSIONS)) {
            z0();
        } else {
            PermissionUtils.x(this.MUSIC_PERMISSIONS).m(new d()).y();
        }
    }

    private final void initView() {
        CustomHeader customHeader = (CustomHeader) findViewById(R$id.sv_title_bar);
        customHeader.setOnBackClick(new View.OnClickListener() { // from class: com.transsion.publish.ui.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMusicActivity.w0(this.f50622a, view);
            }
        });
        customHeader.setOnEditClick(new View.OnClickListener() { // from class: com.transsion.publish.ui.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectMusicActivity.x0(this.f50559a, view);
            }
        });
        this.selectVideoLoading = (ProgressBar) findViewById(R$id.select_video_loading);
        this.noContentView = (LinearLayout) findViewById(R$id.sv_no_content_view);
        this.lockView = (LinearLayout) findViewById(R$id.sv_lock_view);
        TextView textView = (TextView) findViewById(R$id.sv_tv_grant);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.b1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectMusicActivity.y0(view);
                }
            });
        }
        this.recycler = (RecyclerView) findViewById(R$id.select_video_recycler);
        this.musicAdapter = new com.transsion.publish.adapter.b0();
        RecyclerView recyclerView = this.recycler;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(this));
        }
        RecyclerView recyclerView2 = this.recycler;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.musicAdapter);
        }
        int iB = (com.blankj.utilcode.util.y.b() - (com.blankj.utilcode.util.a0.a(3.0f) * 5)) / 6;
        RecyclerView recyclerView3 = this.recycler;
        if (recyclerView3 != null) {
            recyclerView3.setPadding(0, 0, 0, iB);
        }
        com.transsion.publish.adapter.b0 b0Var = this.musicAdapter;
        if (b0Var != null) {
            b0Var.p(new b());
        }
    }

    private final void showLoading() {
        ProgressBar progressBar = this.selectVideoLoading;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0() {
        ProgressBar progressBar = this.selectVideoLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(SelectMusicActivity selectMusicActivity, View view) {
        selectMusicActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(SelectMusicActivity selectMusicActivity, View view) {
        selectMusicActivity.B0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(View view) {
        PermissionUtils.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0() {
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        showLoading();
        this.selectMusicManager = new jp.a(this);
        io.reactivex.rxjava3.core.j.g(new io.reactivex.rxjava3.core.l() { // from class: com.transsion.publish.ui.c1
            @Override // io.reactivex.rxjava3.core.l
            public final void a(io.reactivex.rxjava3.core.k kVar) throws Throwable {
                SelectMusicActivity.A0(this.f50565a, kVar);
            }
        }).b(12).v(io.reactivex.rxjava3.android.schedulers.b.c()).E(qz.a.c()).subscribe(new c());
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
        return new hj.b("select_music", false, 2, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        C0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        io.reactivex.rxjava3.disposables.c cVar = this.disposable;
        if (cVar != null) {
            cVar.dispose();
        }
        mp.d dVar = this.mediaPlayerHelper;
        if (dVar != null) {
            dVar.f();
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        mp.d dVar = this.mediaPlayerHelper;
        if (dVar != null) {
            dVar.c();
        }
        com.transsion.publish.adapter.b0 b0Var = this.musicAdapter;
        if (b0Var != null) {
            b0Var.o();
        }
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public hp.f getViewBinding() {
        hp.f fVarC = hp.f.c(getLayoutInflater());
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }
}
