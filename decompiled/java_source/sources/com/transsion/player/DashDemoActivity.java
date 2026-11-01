package com.transsion.player;

import android.os.Bundle;
import android.util.Log;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import ao.e;
import co.h;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.common.collect.r4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.DashDemoActivity;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mo.b;
import mo.c;
import mo.d;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001a\u0010+\u001a\u00020&8\u0006X\u0086D¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/transsion/player/DashDemoActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/transsion/player/orplayer/f;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Lmo/c;", "tracks", "onTracksChange", "(Lmo/c;)V", "", "width", "height", "onVideoSizeChanged", "(II)V", "Landroid/view/TextureView;", "a", "Landroid/view/TextureView;", "textureView", "Lco/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lco/h;", "getPalyer", "()Lco/h;", "setPalyer", "(Lco/h;)V", "palyer", "", "c", "F", "speed", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "trackIndex", "", "e", "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "TAG", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DashDemoActivity extends AppCompatActivity implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TextureView textureView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private h palyer;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float speed;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int trackIndex;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "DashActivity";

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(DashDemoActivity dashDemoActivity, TextView textView, View view) {
        Object next;
        h hVar = dashDemoActivity.palyer;
        if (hVar != null) {
            Iterator<E> it = hVar.getCurrentTracks().a().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((d) next).e() != 2);
            d dVar = (d) next;
            if (dVar != null) {
                int iD = dVar.d();
                int i11 = dashDemoActivity.trackIndex + 1;
                dashDemoActivity.trackIndex = i11;
                int i12 = i11 % iD;
                hVar.changeTrackSelection(dVar, i12);
                b bVar = dVar.b()[i12];
                textView.setText("codecs:" + bVar.b() + " peakBitrate:" + bVar.e() + "  " + bVar.f() + "*" + bVar.c());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(DashDemoActivity dashDemoActivity, View view) {
        h hVar = dashDemoActivity.palyer;
        if (hVar != null) {
            long currentPosition = hVar.getCurrentPosition();
            h hVar2 = dashDemoActivity.palyer;
            if (hVar2 != null) {
                hVar2.seekTo(currentPosition + ((long) 10000));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(DashDemoActivity dashDemoActivity, View view) {
        float f11 = dashDemoActivity.speed + 0.25f;
        dashDemoActivity.speed = f11;
        Log.e(dashDemoActivity.TAG, "speed:" + f11);
        h hVar = dashDemoActivity.palyer;
        if (hVar != null) {
            hVar.setSpeed(dashDemoActivity.speed);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, d dVar) {
        f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        f.a.b(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(e eVar) {
        f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, e eVar) {
        f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(e eVar) {
        f.a.e(this, eVar);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R$layout.activity_dash);
        this.textureView = (TextureView) findViewById(R$id.f47930tv);
        String str = getFilesDir().getAbsolutePath() + "/test265/1.mpd";
        h hVar = new h(this, null, false, 6, null);
        TextureView textureView = this.textureView;
        if (textureView == null) {
            Intrinsics.z("textureView");
            textureView = null;
        }
        hVar.setTextureView(textureView);
        hVar.addPlayerListener(this);
        hVar.O(new e(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, str, 0, null, null, 28, null));
        hVar.prepare();
        hVar.play();
        this.palyer = hVar;
        final TextView textView = (TextView) findViewById(R$id.tv_index);
        textView.setOnClickListener(new View.OnClickListener() { // from class: ao.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashDemoActivity.V(this.f16073a, textView, view);
            }
        });
        findViewById(R$id.tv_seek).setOnClickListener(new View.OnClickListener() { // from class: ao.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashDemoActivity.W(this.f16075a, view);
            }
        });
        findViewById(R$id.tv_speed).setOnClickListener(new View.OnClickListener() { // from class: ao.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashDemoActivity.X(this.f16076a, view);
            }
        });
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(e eVar) {
        f.a.i(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(e eVar) {
        f.a.k(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, e eVar) {
        f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        f.a.o(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError playError, e eVar) {
        f.a.q(this, playError, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(e eVar) {
        f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        f.a.v(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(e eVar) {
        f.a.w(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, e eVar) {
        f.a.y(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        f.a.A(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        f.a.B(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        f.a.C(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(c tracks) {
        Intrinsics.h(tracks, "tracks");
        Log.e(this.TAG, "onTracksChanged  tracks:" + tracks);
        r4 it = tracks.a().iterator();
        Intrinsics.g(it, "iterator(...)");
        while (it.hasNext()) {
            d dVar = (d) it.next();
            int iE = dVar.e();
            boolean zA = dVar.a();
            for (b bVar : dVar.b()) {
                Log.e(this.TAG, "onTracksChanged  trackInGroupIsSupported:" + zA + " \ntrackFormat:" + bVar + " \n");
            }
            Log.e(this.TAG, "onTracksChanged  trackType:" + iE + " \ntrackInGroupIsSupported:" + zA + " \n");
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        f.a.E(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(e eVar) {
        f.a.F(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int width, int height) {
        Log.e(this.TAG, "onVideoSizeChanged  width:" + width + " height:" + height);
        if (width > 0 || height > 0) {
            TextureView textureView = this.textureView;
            TextureView textureView2 = null;
            if (textureView == null) {
                Intrinsics.z("textureView");
                textureView = null;
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) textureView.getLayoutParams();
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).width = 720;
            }
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).height = (height * 720) / width;
            }
            TextureView textureView3 = this.textureView;
            if (textureView3 == null) {
                Intrinsics.z("textureView");
            } else {
                textureView2 = textureView3;
            }
            textureView2.setLayoutParams(bVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(e eVar) {
        f.a.I(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        f.a.K(this);
    }
}
