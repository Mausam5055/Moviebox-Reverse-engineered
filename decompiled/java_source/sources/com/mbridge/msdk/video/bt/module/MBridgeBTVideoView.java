package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerErrorConstant;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.widget.FeedBackButton;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBridgeBTVideoView extends BTBaseView {
    private static boolean P;
    private static long Q;
    private com.iab.omid.library.mmadbridge.adsession.b A;
    private com.iab.omid.library.mmadbridge.adsession.a B;
    private com.iab.omid.library.mmadbridge.adsession.media.a C;
    private d D;
    private int E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private String J;
    private boolean K;
    private boolean L;
    private boolean M;
    private RelativeLayout N;
    private ProgressBar O;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private PlayerView f38904p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private SoundImageView f38905q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f38906r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f38907s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private FeedBackButton f38908t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f38909u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private WebView f38910v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.mbridge.msdk.videocommon.download.a f38911w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f38912x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f38913y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f38914z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean zIsSilent = MBridgeBTVideoView.this.f38904p.isSilent();
            if (MBridgeBTVideoView.this.f38910v != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f38809n);
                    jSONObject.put("id", MBridgeBTVideoView.this.f38814d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(CampaignEx.JSON_NATIVE_VIDEO_MUTE, MBridgeBTVideoView.this.E);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTVideoView.this.f38910v, "onPlayerMuteBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    o0.a("OperateViews", "onPlayerMuteBtnClicked isMute = " + zIsSilent + " mute = " + MBridgeBTVideoView.this.E);
                } catch (Exception e11) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTVideoView.this.f38910v, e11.getMessage());
                }
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeBTVideoView.this.f38910v != null) {
                BTBaseView.a(MBridgeBTVideoView.this.f38910v, "onPlayerCloseBtnClicked", MBridgeBTVideoView.this.f38814d);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeBTVideoView.this.C != null) {
                try {
                    MBridgeBTVideoView.this.C.a(InteractionType.CLICK);
                    o0.a("omsdk", "btv adUserInteraction click");
                } catch (Exception e11) {
                    o0.b("omsdk", e11.getMessage());
                }
            }
            if (MBridgeBTVideoView.this.f38910v != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f38809n);
                    jSONObject.put("id", MBridgeBTVideoView.this.f38814d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", String.valueOf(view.getX()));
                    jSONObject2.put("y", String.valueOf(view.getY()));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTVideoView.this.f38910v, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception unused) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTVideoView.this.f38910v, "onClicked", MBridgeBTVideoView.this.f38814d);
                }
            }
        }
    }

    private static final class d extends DefaultVideoPlayerStatusListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MBridgeBTVideoView f38918a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WebView f38919b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.iab.omid.library.mmadbridge.adsession.media.a f38920c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f38921d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f38922e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f38923f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f38924g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f38925h;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f38929l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f38930m;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f38926i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f38927j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f38928k = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f38931n = false;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f38932o = false;

        public d(MBridgeBTVideoView mBridgeBTVideoView, WebView webView, com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
            this.f38918a = mBridgeBTVideoView;
            this.f38919b = webView;
            this.f38920c = aVar;
            if (mBridgeBTVideoView != null) {
                this.f38921d = mBridgeBTVideoView.f38814d;
                this.f38922e = mBridgeBTVideoView.f38813c;
            }
        }

        private void a() {
            int i11;
            MBridgeBTVideoView mBridgeBTVideoView;
            CampaignEx campaignEx;
            String str;
            if (!q0.a().a("h_c_r_w_p_c", false) || (i11 = this.f38929l) == 100 || this.f38930m != 0 || this.f38931n || i11 == 0 || (mBridgeBTVideoView = this.f38918a) == null || (campaignEx = mBridgeBTVideoView.f38812b) == null) {
                return;
            }
            try {
                if (campaignEx.getAdType() == 94 || this.f38918a.f38812b.getAdType() == 287) {
                    str = this.f38918a.f38812b.getRequestId() + this.f38918a.f38812b.getId() + this.f38918a.f38812b.getVideoUrlEncode();
                } else {
                    str = this.f38918a.f38812b.getId() + this.f38918a.f38812b.getVideoUrlEncode() + this.f38918a.f38812b.getBidToken();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f38922e, str);
                if (aVarA != null) {
                    aVarA.v();
                    this.f38931n = true;
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultVideoPlayerStatusListener", "CDRate is : 0  and start download when player create!");
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("DefaultVideoPlayerStatusListener", e11.getMessage());
                }
            }
        }

        private void a(int i11, int i12) {
            int i13;
            int i14;
            String str;
            try {
                int i15 = this.f38929l;
                if (i15 == 100 || this.f38931n || i15 == 0 || (i13 = this.f38930m) < 0 || i11 < (i14 = (i12 * i13) / 100)) {
                    return;
                }
                if (this.f38918a.f38812b.getAdType() == 94 || this.f38918a.f38812b.getAdType() == 287) {
                    str = this.f38918a.f38812b.getRequestId() + this.f38918a.f38812b.getId() + this.f38918a.f38812b.getVideoUrlEncode();
                } else {
                    str = this.f38918a.f38812b.getId() + this.f38918a.f38812b.getVideoUrlEncode() + this.f38918a.f38812b.getBidToken();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f38922e, str);
                if (aVarA != null) {
                    aVarA.v();
                    this.f38931n = true;
                    o0.b("DefaultVideoPlayerStatusListener", "CDRate is : " + i14 + " and start download !");
                }
            } catch (Exception e11) {
                o0.b("DefaultVideoPlayerStatusListener", e11.getMessage());
            }
        }

        public void b(int i11, int i12) {
            this.f38929l = i11;
            this.f38930m = i12;
            a();
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                if (this.f38920c == null || !this.f38932o) {
                    return;
                }
                o0.b("omsdk", "bt onBufferingEnd");
                this.f38932o = false;
                this.f38920c.b();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingStart(String str) {
            try {
                o0.b("omsdk", "bt onBufferingStart1");
                super.onBufferingStart(str);
                if (this.f38920c != null) {
                    o0.b("omsdk", "bt onBufferingStart");
                    this.f38920c.c();
                    this.f38932o = true;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingTimeOut(String str) {
            try {
                if (!str.equals(PlayerErrorConstant.PREPARE_TIMEOUT) && !str.equals(PlayerErrorConstant.PLAYERING_TIMEOUT)) {
                    return;
                }
                if (this.f38919b != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", BTBaseView.f38809n);
                        jSONObject.put("id", this.f38921d);
                        jSONObject.put("data", new JSONObject());
                        f.a().a(this.f38919b, "onPlayerTimeout", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e11) {
                        com.mbridge.msdk.video.bt.component.d.c().a(this.f38919b, e11.getMessage());
                    }
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayCompleted() {
            super.onPlayCompleted();
            MBridgeBTVideoView mBridgeBTVideoView = this.f38918a;
            CampaignEx campaignEx = mBridgeBTVideoView.f38812b;
            if (campaignEx == null) {
                mBridgeBTVideoView.f38906r.setText("0");
            } else if (campaignEx.getVideoCompleteTime() > 0) {
                this.f38918a.f38906r.setText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
            } else {
                this.f38918a.f38906r.setText("0");
            }
            this.f38918a.f38904p.setClickable(false);
            WebView webView = this.f38919b;
            if (webView != null) {
                BTBaseView.a(webView, "onPlayerFinish", this.f38921d);
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f38920c;
            if (aVar != null) {
                aVar.d();
                o0.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f38923f = this.f38924g;
            boolean unused = MBridgeBTVideoView.P = true;
            this.f38918a.stop();
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayError(String str) {
            super.onPlayError(str);
            if (this.f38919b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f38810o);
                    jSONObject.put("id", this.f38921d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("error", str);
                    jSONObject2.put("id", this.f38921d);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(this.f38919b, "onPlayerFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    com.mbridge.msdk.video.bt.component.d.c().a(this.f38919b, e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayProgress(int i11, int i12) {
            int videoCompleteTime;
            StringBuilder sb2;
            String str;
            String string;
            super.onPlayProgress(i11, i12);
            if (MBridgeBTVideoView.Q == 0) {
                long unused = MBridgeBTVideoView.Q = System.currentTimeMillis();
            }
            MBridgeBTVideoView mBridgeBTVideoView = this.f38918a;
            if (mBridgeBTVideoView.f38818h) {
                CampaignEx campaignEx = mBridgeBTVideoView.f38812b;
                if (campaignEx != null) {
                    videoCompleteTime = campaignEx.getVideoCompleteTime();
                    com.mbridge.msdk.foundation.feedback.b.b().b(this.f38918a.f38812b.getCampaignUnitId() + "_1", i11);
                } else {
                    videoCompleteTime = 0;
                }
                if (videoCompleteTime > i12 || videoCompleteTime <= 0) {
                    videoCompleteTime = i12;
                }
                int i13 = videoCompleteTime <= 0 ? i12 - i11 : videoCompleteTime - i11;
                if (i13 <= 0) {
                    string = videoCompleteTime <= 0 ? "0" : (String) this.f38918a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", "string"));
                } else {
                    if (videoCompleteTime <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        str = "";
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        str = (String) this.f38918a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", "string"));
                    }
                    sb2.append(str);
                    string = sb2.toString();
                }
                CampaignEx campaignEx2 = this.f38918a.f38812b;
                if (campaignEx2 != null && campaignEx2.getUseSkipTime() == 1) {
                    int iMin = Math.min(this.f38918a.f38812b.getVst(), i12);
                    if (iMin >= videoCompleteTime || iMin < 0) {
                        int i14 = videoCompleteTime - i11;
                        if (this.f38918a.f38812b.getAdType() == 287) {
                            if (i14 > 0) {
                                string = i14 + ((String) this.f38918a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string")));
                            } else if (i14 == 0) {
                                this.f38918a.f38906r.setVisibility(4);
                            }
                        }
                    } else {
                        int i15 = iMin - i11;
                        if (i15 > 0) {
                            string = i15 + ((String) this.f38918a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", "string")));
                        } else if (this.f38918a.f38812b.getAdType() == 287 && i15 == 0) {
                            this.f38918a.f38906r.setVisibility(4);
                        }
                    }
                }
                this.f38918a.f38906r.setText(string);
            }
            this.f38924g = i12;
            this.f38923f = i11;
            this.f38918a.O.setMax(this.f38924g);
            this.f38918a.O.setProgress(this.f38923f);
            if (this.f38919b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.f38809n);
                    jSONObject.put("id", this.f38921d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", this.f38921d);
                    jSONObject2.put(NotificationCompat.CATEGORY_PROGRESS, MBridgeBTVideoView.b(i11, i12));
                    jSONObject2.put(EventConstants.KEY_TIME, String.valueOf(i11));
                    jSONObject2.put("duration", String.valueOf(i12));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(this.f38919b, "onPlayerProgressChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    com.mbridge.msdk.video.bt.component.d.c().a(this.f38919b, e11.getMessage());
                }
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f38920c;
            if (aVar != null) {
                int i16 = (i11 * 100) / i12;
                int i17 = ((i11 + 1) * 100) / i12;
                if (i16 <= 25 && 25 < i17 && !this.f38926i) {
                    this.f38926i = true;
                    aVar.h();
                    o0.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i16 <= 50 && 50 < i17 && !this.f38927j) {
                    this.f38927j = true;
                    aVar.i();
                    o0.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i16 <= 75 && 75 < i17 && !this.f38928k) {
                    this.f38928k = true;
                    aVar.o();
                    o0.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            a(i11, i12);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayStarted(int i11) {
            super.onPlayStarted(i11);
            if (!this.f38925h) {
                this.f38918a.O.setMax(i11);
                WebView webView = this.f38919b;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPlay", this.f38921d);
                }
                this.f38925h = true;
                if (this.f38920c != null) {
                    try {
                        MBridgeBTVideoView mBridgeBTVideoView = this.f38918a;
                        this.f38920c.n(i11, (mBridgeBTVideoView == null || mBridgeBTVideoView.f38904p == null) ? 0.0f : this.f38918a.f38904p.getVolume());
                        o0.a("omsdk", "play2: videoEvents.start()");
                    } catch (Exception e11) {
                        o0.b("omsdk", e11.getMessage());
                    }
                }
            }
            boolean unused = MBridgeBTVideoView.P = false;
        }
    }

    public MBridgeBTVideoView(Context context) {
        super(context);
        this.f38912x = 0;
        this.f38913y = 0;
        this.f38914z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.K = false;
        this.L = false;
        this.M = false;
    }

    public MBridgeBTVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38912x = 0;
        this.f38913y = 0;
        this.f38914z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.K = false;
        this.L = false;
        this.M = false;
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getReady_rate() != -1) {
            return campaignEx.getReady_rate();
        }
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f38813c, false).w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i11, int i12) {
        if (i12 != 0) {
            try {
                return t0.a(Double.valueOf(i11 / i12)) + "";
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return i12 + "";
    }

    private void d() {
        String str;
        if (this.f38812b.getAdType() == 94 || this.f38812b.getAdType() == 287) {
            str = this.f38812b.getRequestId() + this.f38812b.getId() + this.f38812b.getVideoUrlEncode();
        } else {
            str = this.f38812b.getId() + this.f38812b.getVideoUrlEncode() + this.f38812b.getBidToken();
        }
        com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f38813c, str);
        if (aVarA != null) {
            this.f38911w = aVarA;
        }
    }

    private boolean e() {
        try {
            this.f38904p = (PlayerView) findViewById(findID("mbridge_vfpv"));
            this.f38905q = (SoundImageView) findViewById(findID("mbridge_sound_switch"));
            this.f38906r = (TextView) findViewById(findID("mbridge_tv_count"));
            this.f38907s = findViewById(findID("mbridge_rl_playing_close"));
            this.N = (RelativeLayout) findViewById(findID("mbridge_top_control"));
            this.O = (ProgressBar) findViewById(findID("mbridge_video_progress_bar"));
            this.f38904p.setIsBTVideo(true);
            this.f38908t = (FeedBackButton) findViewById(findID("mbridge_native_endcard_feed_btn"));
            this.f38909u = (ImageView) findViewById(findID("mbridge_iv_link"));
            return isNotNULL(this.f38904p, this.f38905q, this.f38906r, this.f38907s);
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    private int getBufferTimeout() {
        int i11 = 5;
        try {
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (aVarC == null) {
                com.mbridge.msdk.videocommon.setting.b.b().a();
            }
            i11 = aVarC != null ? (int) aVarC.i() : 5;
            o0.c(BTBaseView.TAG, "MBridgeBaseView buffetTimeout:" + i11);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return i11;
    }

    private int getCDRate() {
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f38813c, false).g();
    }

    private String getPlayURL() {
        String videoUrlEncode = "";
        try {
            videoUrlEncode = this.f38812b.getVideoUrlEncode();
            com.mbridge.msdk.videocommon.download.a aVar = this.f38911w;
            if (aVar == null) {
                return videoUrlEncode;
            }
            String strK = aVar.k();
            return (y0.a(strK) || !new File(strK).exists()) ? videoUrlEncode : strK;
        } catch (Throwable th2) {
            o0.b(BTBaseView.TAG, th2.getMessage(), th2);
            return videoUrlEncode;
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    protected void b() {
        super.b();
        if (this.f38818h) {
            this.f38905q.setOnClickListener(new a());
            this.f38907s.setOnClickListener(new b());
            setOnClickListener(new c());
        }
    }

    public com.iab.omid.library.mmadbridge.adsession.a getAdEvents() {
        return this.B;
    }

    public com.iab.omid.library.mmadbridge.adsession.b getAdSession() {
        return this.A;
    }

    public int getMute() {
        return this.E;
    }

    public com.iab.omid.library.mmadbridge.adsession.media.a getVideoEvents() {
        return this.C;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_videoview_item");
        if (g0.a(iFindLayout)) {
            this.f38816f.inflate(iFindLayout, this);
            boolean zE = e();
            this.f38818h = zE;
            if (!zE) {
                o0.b(BTBaseView.TAG, "MBridgeVideoView init fail");
            }
            b();
        }
        P = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        View rootView;
        super.onAttachedToWindow();
        if (!this.M) {
            this.H = com.mbridge.msdk.video.bt.component.d.c().g(this.f38813c);
        }
        View view = this.f38907s;
        if (view != null) {
            view.setVisibility(this.f38913y == 0 ? 8 : 0);
        }
        SoundImageView soundImageView = this.f38905q;
        if (soundImageView != null) {
            soundImageView.setVisibility(this.f38914z == 0 ? 8 : 0);
        }
        CampaignEx campaignEx = this.f38812b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.f38813c);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f38813c + "_1", this.f38812b);
        }
        TextView textView = this.f38906r;
        if (textView != null) {
            textView.setVisibility(this.f38912x == 0 ? 8 : 0);
            if (this.f38906r.getVisibility() == 0 && com.mbridge.msdk.foundation.feedback.b.b().a()) {
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f38813c + "_1", this.f38908t);
            }
        }
        if (this.A == null || (rootView = getRootView()) == null) {
            return;
        }
        this.A.f(rootView);
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
        try {
            if (this.f38904p != null) {
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.A;
                if (bVar != null) {
                    bVar.c();
                }
                this.f38904p.setOnClickListener(null);
                this.f38904p.release();
                this.f38904p = null;
                if (!TextUtils.isEmpty(this.J)) {
                    e eVar = new e();
                    long jCurrentTimeMillis = Q;
                    if (jCurrentTimeMillis != 0) {
                        jCurrentTimeMillis = System.currentTimeMillis() - Q;
                    }
                    eVar.a("duration", Long.valueOf(jCurrentTimeMillis));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f38812b, eVar);
                }
            }
            SoundImageView soundImageView = this.f38905q;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(null);
            }
            View view = this.f38907s;
            if (view != null) {
                view.setOnClickListener(null);
            }
            if (this.f38910v != null) {
                this.f38910v = null;
            }
            if (this.A != null) {
                this.A = null;
            }
            if (this.C != null) {
                this.C = null;
            }
            setOnClickListener(null);
        } catch (Throwable th2) {
            o0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void onPause() {
        PlayerView playerView = this.f38904p;
        if (playerView != null) {
            boolean zIsPlayIng = playerView.isPlayIng();
            this.L = zIsPlayIng;
            this.f38904p.setIsBTVideoPlaying(zIsPlayIng);
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
            if (aVar != null) {
                this.f38904p.setVideoEvents(aVar);
            }
            this.f38904p.onPause();
        }
    }

    public void onResume() {
        PlayerView playerView = this.f38904p;
        if (playerView != null) {
            playerView.setDesk(true);
            this.f38904p.setIsCovered(false);
            if (this.L) {
                this.f38904p.start(true);
            }
            this.f38904p.resumeOMSDK();
        }
    }

    public void onStop() {
        PlayerView playerView = this.f38904p;
        if (playerView != null) {
            playerView.setIsCovered(true);
        }
    }

    public void pause() {
        try {
            PlayerView playerView = this.f38904p;
            if (playerView != null) {
                playerView.pause();
                WebView webView = this.f38910v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPause", this.f38814d);
                }
            }
        } catch (Exception e11) {
            o0.b(BTBaseView.TAG, e11.getMessage(), e11);
        }
    }

    public void play() {
        d dVar;
        try {
            if (this.M) {
                if (this.G) {
                    this.f38904p.playVideo(0);
                    this.G = false;
                } else {
                    this.f38904p.start(false);
                }
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
                    if (aVar != null) {
                        aVar.l();
                        o0.a("omsdk", "btv play2:  videoEvents.resume()");
                    }
                } catch (Throwable th2) {
                    o0.a(BTBaseView.TAG, th2.getMessage());
                }
                WebView webView = this.f38910v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPlay", this.f38814d);
                    return;
                }
                return;
            }
            String playURL = getPlayURL();
            this.J = playURL;
            this.f38904p.initVFPData(playURL, this.f38812b.getVideoUrlEncode(), this.D);
            if (this.H == 1) {
                playMute();
            } else {
                playUnMute();
            }
            try {
                if (this.B != null) {
                    o0.b("omsdk", "bt impressionOccurred");
                    this.B.b();
                }
            } catch (Throwable th3) {
                o0.a(BTBaseView.TAG, th3.getMessage());
            }
            if (!this.f38904p.playVideo() && (dVar = this.D) != null) {
                dVar.onPlayError("play video failed");
            }
            this.M = true;
            return;
        } catch (Exception e11) {
            o0.b(BTBaseView.TAG, e11.getMessage(), e11);
        }
        o0.b(BTBaseView.TAG, e11.getMessage(), e11);
    }

    public boolean playMute() {
        try {
            PlayerView playerView = this.f38904p;
            if (playerView != null && this.f38910v != null) {
                playerView.closeSound();
                this.f38905q.setSoundStatus(false);
                this.E = 1;
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
                    if (aVar != null) {
                        aVar.p(0.0f);
                    }
                } catch (Exception e11) {
                    o0.a("OMSDK", e11.getMessage());
                }
                BTBaseView.a(this.f38910v, "onPlayerMute", this.f38814d);
                return true;
            }
        } catch (Exception e12) {
            o0.b(BTBaseView.TAG, e12.getMessage());
        }
        return false;
    }

    public boolean playUnMute() {
        try {
            PlayerView playerView = this.f38904p;
            if (playerView == null || this.f38910v == null) {
                return false;
            }
            playerView.openSound();
            this.f38905q.setSoundStatus(true);
            this.E = 2;
            try {
                com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
                if (aVar != null) {
                    aVar.p(1.0f);
                }
            } catch (Exception e11) {
                o0.a("OMSDK", e11.getMessage());
            }
            BTBaseView.a(this.f38910v, "onUnmute", this.f38814d);
            return true;
        } catch (Exception e12) {
            o0.b(BTBaseView.TAG, e12.getMessage());
            return false;
        }
    }

    public void preLoadData() {
        d();
        this.F = getBufferTimeout();
        String playURL = getPlayURL();
        this.J = playURL;
        if (this.f38818h && !TextUtils.isEmpty(playURL) && this.f38812b != null) {
            com.iab.omid.library.mmadbridge.adsession.b bVar = this.A;
            if (bVar != null) {
                bVar.d(this.f38904p);
                com.iab.omid.library.mmadbridge.adsession.b bVar2 = this.A;
                SoundImageView soundImageView = this.f38905q;
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                bVar2.a(soundImageView, friendlyObstructionPurpose, null);
                this.A.a(this.f38906r, friendlyObstructionPurpose, null);
                this.A.a(this.f38907s, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
            }
            d dVar = new d(this, this.f38910v, this.C);
            this.D = dVar;
            dVar.b(a(this.f38812b), getCDRate());
            this.f38904p.setDesk(false);
            this.f38904p.initBufferIngParam(this.F);
            soundOperate(this.E, -1, null);
        }
        P = false;
    }

    public void resume() {
        try {
            PlayerView playerView = this.f38904p;
            if (playerView != null) {
                if (this.G) {
                    playerView.playVideo(0);
                    this.G = false;
                } else {
                    playerView.onResume();
                }
                try {
                    com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
                    if (aVar != null) {
                        aVar.l();
                        o0.a("omsdk", "btv play3:  videoEvents.resume()");
                    }
                } catch (Throwable th2) {
                    o0.a(BTBaseView.TAG, th2.getMessage());
                }
                WebView webView = this.f38910v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerResume", this.f38814d);
                }
            }
        } catch (Exception e11) {
            o0.b(BTBaseView.TAG, e11.getMessage());
        }
    }

    public void setAdEvents(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.B = aVar;
    }

    public void setAdSession(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        this.A = bVar;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        if (campaignEx == null || campaignEx.getVideoCompleteTime() <= 0) {
            this.f38906r.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_shape_progress", "drawable"));
            this.f38906r.setWidth(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
            return;
        }
        this.f38906r.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
        int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
        layoutParams.setMargins(iA, 0, 0, 0);
        this.f38906r.setPadding(iA, 0, iA, 0);
        this.f38906r.setLayoutParams(layoutParams);
    }

    public void setCloseViewVisable(int i11) {
        this.f38907s.setVisibility(i11 == 0 ? 4 : 0);
    }

    public void setCountDownTextViewVisable(int i11) {
        this.f38906r.setVisibility(i11 == 0 ? 4 : 0);
    }

    public void setCreateWebView(WebView webView) {
        this.f38910v = webView;
    }

    public void setNotchPadding(int i11, int i12, int i13, int i14) {
        if (i11 <= 0) {
            i11 = this.N.getPaddingLeft();
        }
        if (i12 <= 0) {
            i12 = this.N.getPaddingRight();
        }
        if (i13 <= 0) {
            i13 = this.N.getPaddingTop();
        }
        if (i14 <= 0) {
            i14 = this.N.getPaddingBottom();
        }
        o0.b(BTBaseView.TAG, "NOTCH BTVideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)));
        this.N.setPadding(i11, i13, i12, i14);
    }

    public void setOrientation(int i11) {
        this.I = i11;
    }

    public void setPlaybackParams(float f11) {
        PlayerView playerView = this.f38904p;
        if (playerView != null) {
            playerView.setPlaybackParams(f11);
        }
    }

    public void setProgressBarState(int i11) {
        ProgressBar progressBar = this.O;
        if (progressBar != null) {
            progressBar.setVisibility(i11 == 0 ? 8 : 0);
            CampaignEx campaignEx = this.f38812b;
            if (campaignEx == null || campaignEx.getProgressBarShow() != 1) {
                return;
            }
            this.O.setVisibility(0);
        }
    }

    public void setShowClose(int i11) {
        this.f38913y = i11;
    }

    public void setShowMute(int i11) {
        this.f38914z = i11;
    }

    public void setShowTime(int i11) {
        this.f38912x = i11;
    }

    public void setSoundImageViewVisble(int i11) {
        this.f38905q.setVisibility(i11 == 0 ? 4 : 0);
    }

    public void setVideoEvents(com.iab.omid.library.mmadbridge.adsession.media.a aVar) {
        this.C = aVar;
        d dVar = this.D;
        if (dVar != null) {
            dVar.f38920c = aVar;
        }
        PlayerView playerView = this.f38904p;
        if (playerView != null) {
            playerView.setVideoEvents(aVar);
        }
    }

    public void setVolume(float f11, float f12) {
        PlayerView playerView = this.f38904p;
        if (playerView != null) {
            playerView.setVolume(f11, f12);
        }
    }

    public void soundOperate(int i11, int i12, String str) {
        if (this.f38818h) {
            this.E = i11;
            if (i11 == 1) {
                this.f38905q.setSoundStatus(false);
                this.f38904p.closeSound();
            } else if (i11 == 2) {
                this.f38905q.setSoundStatus(true);
                this.f38904p.openSound();
            }
            if (i12 == 1) {
                this.f38905q.setVisibility(8);
            } else if (i12 == 2) {
                this.f38905q.setVisibility(0);
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.C;
            if (aVar != null) {
                try {
                    aVar.p(this.f38904p.getVolume());
                } catch (Exception e11) {
                    o0.b("omsdk", e11.getMessage());
                }
            }
        }
    }

    public void stop() {
        try {
            PlayerView playerView = this.f38904p;
            if (playerView != null) {
                playerView.pause();
                this.f38904p.stop();
                this.G = true;
                WebView webView = this.f38910v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerStop", this.f38814d);
                }
            }
        } catch (Exception e11) {
            o0.b(BTBaseView.TAG, e11.getMessage(), e11);
        }
    }
}
