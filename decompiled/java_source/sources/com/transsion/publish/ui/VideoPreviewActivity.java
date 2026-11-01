package com.transsion.publish.ui;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$string;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.bean.PreviewMediaConfirmEvent;
import com.transsion.publish.bean.PreviewVideoBean;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\r\b\u0016\u0018\u0000 =2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001c\u0010\fJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001e\u0010\u0004J\u0019\u0010!\u001a\u00020\u00052\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0014¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0002H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0014¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\tH\u0016¢\u0006\u0004\b)\u0010(J\u000f\u0010*\u001a\u00020\tH\u0016¢\u0006\u0004\b*\u0010(J\u000f\u0010+\u001a\u00020\u0005H\u0014¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00107\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00106¨\u0006>"}, d2 = {"Lcom/transsion/publish/ui/VideoPreviewActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lhp/g;", "<init>", "()V", "", "initView", "initData", "o0", "", NotificationCompat.CATEGORY_STATUS, "E0", "(Z)V", "Lcom/transsion/publish/api/VsMediaInfo;", "vsMediaInfo", "C0", "(Lcom/transsion/publish/api/VsMediaInfo;)V", "", "path", "w0", "(Ljava/lang/String;)V", "Landroid/graphics/Bitmap;", "bitmap", "D0", "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;", "F0", "G0", "select", "n0", "q0", "r0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "p0", "()Lhp/g;", "onDestroy", "onResume", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "onStop", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "a", "Lcom/transsion/publish/api/VsMediaInfo;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Integer;", "sourceType", "c", "I", "maxSize", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isBack", "e", "maxLimit", "f", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class VideoPreviewActivity extends BaseActivity<hp.g> {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private VsMediaInfo vsMediaInfo;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isBack;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Integer sourceType = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int maxSize = 1048576000;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int maxLimit = 1;

    /* JADX INFO: renamed from: com.transsion.publish.ui.VideoPreviewActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, VsMediaInfo data, int i11) {
            Intrinsics.h(context, "context");
            Intrinsics.h(data, "data");
            Intent intent = new Intent(context, (Class<?>) VideoPreviewActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("data", data);
            intent.putExtra("sourceType", i11);
            context.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean A0(VideoPreviewActivity videoPreviewActivity, MediaPlayer mediaPlayer, int i11, int i12) {
        if (i11 == 3) {
            ImageView coverIV = ((hp.g) videoPreviewActivity.getMViewBinding()).f64768h;
            Intrinsics.g(coverIV, "coverIV");
            jg.c.g(coverIV);
        }
        mediaPlayer.start();
        mediaPlayer.setLooping(true);
        ((hp.g) videoPreviewActivity.getMViewBinding()).f64777q.setBackgroundColor(com.blankj.utilcode.util.h.a(R$color.transparent));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B0(VideoPreviewActivity videoPreviewActivity, View it) {
        Intrinsics.h(it, "it");
        PreviewMediaConfirmEvent previewMediaConfirmEvent = new PreviewMediaConfirmEvent(1);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewMediaConfirmEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, previewMediaConfirmEvent, 0L);
        videoPreviewActivity.finish();
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void C0(VsMediaInfo vsMediaInfo) {
        try {
            String videoPath = vsMediaInfo.getVideoPath();
            w0(videoPath);
            ((hp.g) getMViewBinding()).f64777q.setVideoPath(videoPath);
        } catch (Exception e11) {
            String message = e11.getMessage();
            if (message != null) {
                lg.a.C0828a.g(lg.a.f68839a, message, false, 2, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Bitmap D0(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        ImageView coverIV = ((hp.g) getMViewBinding()).f64768h;
        Intrinsics.g(coverIV, "coverIV");
        return (height <= 0 || width <= 0 || width > coverIV.getWidth() || height > coverIV.getHeight()) ? bitmap : kg.a.d(bitmap, coverIV.getWidth(), coverIV.getHeight(), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void E0(boolean status) {
        if (status) {
            ((hp.g) getMViewBinding()).f64775o.setText("1");
            ((hp.g) getMViewBinding()).f64775o.setBackgroundResource(R$drawable.bg_linear_r16);
        } else {
            ((hp.g) getMViewBinding()).f64775o.setBackgroundResource(R$drawable.ic_select_number_bro);
        }
        n0(status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void F0() {
        ((hp.g) getMViewBinding()).f64777q.pause();
        ImageView playIV = ((hp.g) getMViewBinding()).f64771k;
        Intrinsics.g(playIV, "playIV");
        jg.c.k(playIV);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void G0() {
        ((hp.g) getMViewBinding()).f64777q.start();
        ImageView playIV = ((hp.g) getMViewBinding()).f64771k;
        Intrinsics.g(playIV, "playIV");
        jg.c.g(playIV);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        this.sourceType = Integer.valueOf(getIntent().getIntExtra("sourceType", 2));
        if (getIntent().hasExtra("data")) {
            ProgressBar clipLoading = ((hp.g) getMViewBinding()).f64766f;
            Intrinsics.g(clipLoading, "clipLoading");
            jg.c.k(clipLoading);
            Serializable serializableExtra = getIntent().getSerializableExtra("data");
            Intrinsics.f(serializableExtra, "null cannot be cast to non-null type com.transsion.publish.api.VsMediaInfo");
            VsMediaInfo vsMediaInfo = (VsMediaInfo) serializableExtra;
            this.vsMediaInfo = vsMediaInfo;
            Intrinsics.e(vsMediaInfo);
            C0(vsMediaInfo);
        }
        Integer num = this.sourceType;
        if (num != null && num.intValue() == 1) {
            ((hp.g) getMViewBinding()).f64770j.setVisibility(8);
            ((hp.g) getMViewBinding()).f64769i.setVisibility(0);
            FrameLayout flClear = ((hp.g) getMViewBinding()).f64769i;
            Intrinsics.g(flClear, "flClear");
            jg.c.c(flClear, 0L, new Function1() { // from class: com.transsion.publish.ui.k1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VideoPreviewActivity.t0(this.f50584a, (View) obj);
                }
            }, 1, null);
        } else if (num != null && num.intValue() == 2) {
            ((hp.g) getMViewBinding()).f64769i.setVisibility(8);
            ((hp.g) getMViewBinding()).f64770j.setVisibility(0);
            VsMediaInfo vsMediaInfo2 = this.vsMediaInfo;
            if (vsMediaInfo2 != null) {
                E0(vsMediaInfo2.getEnableSelect());
            }
            Group bottomGroup = ((hp.g) getMViewBinding()).f64762b;
            Intrinsics.g(bottomGroup, "bottomGroup");
            jg.c.k(bottomGroup);
            LinearLayout llSelect = ((hp.g) getMViewBinding()).f64770j;
            Intrinsics.g(llSelect, "llSelect");
            jg.c.c(llSelect, 0L, new Function1() { // from class: com.transsion.publish.ui.l1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VideoPreviewActivity.u0(this.f50587a, (View) obj);
                }
            }, 1, null);
        }
        ProgressBar clipLoading2 = ((hp.g) getMViewBinding()).f64766f;
        Intrinsics.g(clipLoading2, "clipLoading");
        jg.c.g(clipLoading2);
        ((hp.g) getMViewBinding()).f64777q.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.m1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPreviewActivity.v0(this.f50591a, view);
            }
        });
        ((hp.g) getMViewBinding()).f64772l.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.n1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPreviewActivity.s0(this.f50594a, view);
            }
        });
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((hp.g) getMViewBinding()).f64764d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.ui.p1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPreviewActivity.y0(this.f50601a, view);
            }
        });
        ((hp.g) getMViewBinding()).f64777q.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.transsion.publish.ui.q1
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer) {
                VideoPreviewActivity.z0(this.f50605a, mediaPlayer);
            }
        });
        TextView confirmTV = ((hp.g) getMViewBinding()).f64767g;
        Intrinsics.g(confirmTV, "confirmTV");
        jg.c.c(confirmTV, 0L, new Function1() { // from class: com.transsion.publish.ui.r1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoPreviewActivity.B0(this.f50607a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n0(boolean select) {
        TextView selectNumTV = ((hp.g) getMViewBinding()).f64773m;
        Intrinsics.g(selectNumTV, "selectNumTV");
        selectNumTV.setVisibility((select > 0) != false ? 0 : 8);
        ((hp.g) getMViewBinding()).f64773m.setText(getString(R$string.video_select_num_tips, Integer.valueOf(select ? 1 : 0), Integer.valueOf(this.maxLimit)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void o0() {
        if (((hp.g) getMViewBinding()).f64777q.isPlaying()) {
            F0();
        } else {
            G0();
        }
    }

    private final void q0() {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (getSupportActionBar() != null) {
            androidx.appcompat.app.a supportActionBar = getSupportActionBar();
            Intrinsics.e(supportActionBar);
            supportActionBar.l();
        }
        if (getActionBar() != null) {
            ActionBar actionBar = getActionBar();
            Intrinsics.e(actionBar);
            actionBar.hide();
        }
    }

    private final void r0() {
        View decorView = getWindow().getDecorView();
        Intrinsics.g(decorView, "getDecorView(...)");
        decorView.setSystemUiVisibility(4102);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(VideoPreviewActivity videoPreviewActivity, View view) {
        videoPreviewActivity.o0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t0(VideoPreviewActivity videoPreviewActivity, View it) {
        Intrinsics.h(it, "it");
        fp.a aVar = new fp.a();
        aVar.o(1);
        aVar.n(2);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
        videoPreviewActivity.finish();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(VideoPreviewActivity videoPreviewActivity, View it) {
        Intrinsics.h(it, "it");
        VsMediaInfo vsMediaInfo = videoPreviewActivity.vsMediaInfo;
        if (vsMediaInfo != null) {
            if (vsMediaInfo.getVideoSize() > videoPreviewActivity.maxSize) {
                uh.b.f76753a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 50));
                return Unit.f67061a;
            }
            vsMediaInfo.setEnableSelect(!vsMediaInfo.getEnableSelect());
            PreviewVideoBean previewVideoBean = new PreviewVideoBean();
            previewVideoBean.setFrom(videoPreviewActivity.sourceType);
            previewVideoBean.setSelect(vsMediaInfo);
            if (vsMediaInfo.getEnableSelect()) {
                previewVideoBean.setOperator(1);
            } else {
                previewVideoBean.setOperator(3);
            }
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PreviewVideoBean.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, previewVideoBean, 0L);
            videoPreviewActivity.E0(vsMediaInfo.getEnableSelect());
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(VideoPreviewActivity videoPreviewActivity, View view) {
        videoPreviewActivity.o0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void w0(String path) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(path);
        final Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L, 2);
        ((hp.g) getMViewBinding()).getRoot().post(new Runnable() { // from class: com.transsion.publish.ui.o1
            @Override // java.lang.Runnable
            public final void run() {
                VideoPreviewActivity.x0(this.f50597a, frameAtTime);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void x0(VideoPreviewActivity videoPreviewActivity, Bitmap bitmap) {
        ((hp.g) videoPreviewActivity.getMViewBinding()).f64768h.setImageBitmap(videoPreviewActivity.D0(bitmap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(VideoPreviewActivity videoPreviewActivity, View view) {
        videoPreviewActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(final VideoPreviewActivity videoPreviewActivity, MediaPlayer mediaPlayer) {
        if (mediaPlayer != null) {
            mediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.transsion.publish.ui.s1
                @Override // android.media.MediaPlayer.OnInfoListener
                public final boolean onInfo(MediaPlayer mediaPlayer2, int i11, int i12) {
                    return VideoPreviewActivity.A0(this.f50609a, mediaPlayer2, i11, i12);
                }
            });
        }
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
        return new hj.b("video_preview", false, 2, null);
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        q0();
        r0();
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ProgressBar clipLoading = ((hp.g) getMViewBinding()).f64766f;
        Intrinsics.g(clipLoading, "clipLoading");
        jg.c.g(clipLoading);
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.isBack) {
            this.isBack = false;
            VsMediaInfo vsMediaInfo = this.vsMediaInfo;
            Intrinsics.e(vsMediaInfo);
            C0(vsMediaInfo);
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.isBack = true;
        F0();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public hp.g getViewBinding() {
        hp.g gVarC = hp.g.c(getLayoutInflater());
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }
}
