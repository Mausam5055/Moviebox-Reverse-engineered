package com.transsion.player.orplayer;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f48427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f48428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f48429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AudioManager f48430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f48431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f48432f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f48433g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AudioFocusRequest f48434h;

    public c(d player, Function1 callback) {
        Intrinsics.h(player, "player");
        Intrinsics.h(callback, "callback");
        this.f48427a = player;
        this.f48428b = callback;
        this.f48429c = "AudioFocusHelper";
        Object systemService = Utils.a().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.f48430d = (AudioManager) systemService;
        oo.e.b(oo.e.f71074a, this.f48429c, "AudioFocusHelper orPlayer " + this, false, 4, null);
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest.Builder builderA = t1.a.a(1);
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            builder.setUsage(14);
            builder.setContentType(2);
            builderA.setAudioAttributes(builder.build());
            builderA.setAcceptsDelayedFocusGain(true);
            builderA.setOnAudioFocusChangeListener(this);
            this.f48434h = builderA.build();
        }
    }

    private final void c(int i11) {
        oo.e eVar = oo.e.f71074a;
        oo.e.b(eVar, this.f48429c, "handleAudioFocusChange ------------ " + this + ", focusChange = " + i11, false, 4, null);
        if (i11 == -3) {
            if (!this.f48433g || this.f48427a.isMute()) {
                return;
            }
            oo.e.b(eVar, this.f48429c, "handleAudioFocusChange AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK, focusChange = " + i11, false, 4, null);
            this.f48427a.setVolume(1.0f);
            return;
        }
        if (i11 == -2 || i11 == -1) {
            oo.e.i(eVar, this.f48429c, "handleAudioFocusChange LOSS, focusChange = " + i11 + ", isUserPause = " + this.f48432f, false, 4, null);
            this.f48428b.invoke(Boolean.TRUE);
            if (this.f48433g) {
                this.f48427a.pause();
                return;
            }
            return;
        }
        if (i11 == 1 || i11 == 2) {
            oo.e.b(eVar, this.f48429c, "handleAudioFocusChange GAIN, focusChange = " + i11 + "， mStartRequested = " + this.f48431e + ", isUserPause = " + this.f48432f, false, 4, null);
            this.f48428b.invoke(Boolean.FALSE);
            if (this.f48431e && !this.f48432f) {
                this.f48427a.play();
            }
            if (this.f48427a.isMute()) {
                return;
            }
            this.f48427a.setVolume(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(c cVar, int i11) {
        cVar.c(i11);
    }

    public final void b() {
        oo.e.b(oo.e.f71074a, this.f48429c, "abandonFocus " + this, false, 4, null);
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequest = this.f48434h;
            if (audioFocusRequest != null) {
                this.f48430d.abandonAudioFocusRequest(audioFocusRequest);
            }
        } else {
            this.f48430d.abandonAudioFocus(this);
        }
        this.f48431e = false;
    }

    public final void e() {
        oo.e eVar = oo.e.f71074a;
        oo.e.b(eVar, this.f48429c, "requestFocus " + this, false, 4, null);
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequest = this.f48434h;
            if (audioFocusRequest != null) {
                int iRequestAudioFocus = this.f48430d.requestAudioFocus(audioFocusRequest);
                oo.e.b(eVar, this.f48429c, "requestFocus, result:" + iRequestAudioFocus, false, 4, null);
            }
        } else {
            int iRequestAudioFocus2 = this.f48430d.requestAudioFocus(this, 3, 1);
            oo.e.b(eVar, this.f48429c, "requestFocus, result:" + iRequestAudioFocus2, false, 4, null);
        }
        this.f48431e = true;
    }

    public final void f(boolean z10) {
        this.f48433g = z10;
    }

    public final void g(boolean z10) {
        this.f48432f = z10;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(final int i11) {
        ThreadUtils.k(new Runnable() { // from class: com.transsion.player.orplayer.b
            @Override // java.lang.Runnable
            public final void run() {
                c.d(this.f48422a, i11);
            }
        });
    }
}
