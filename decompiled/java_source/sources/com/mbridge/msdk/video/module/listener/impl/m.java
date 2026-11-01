package com.mbridge.msdk.video.module.listener.impl;

import android.os.Handler;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public class m extends o {
    private Timer A;
    private Handler B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private MBridgeVideoView.u H;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private MBridgeVideoView f39477x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private MBridgeContainerView f39478y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f39479z;

    class a extends TimerTask {

        /* JADX INFO: renamed from: com.mbridge.msdk.video.module.listener.impl.m$a$a, reason: collision with other inner class name */
        class RunnableC0569a implements Runnable {
            RunnableC0569a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                m.this.f39478y.showVideoClickView(-1);
                m.this.f39477x.soundOperate(0, 2);
            }
        }

        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                m.this.B.post(new RunnableC0569a());
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public m(MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, int i11, int i12, com.mbridge.msdk.video.module.listener.a aVar2, int i13, boolean z10, int i14) {
        super(campaignEx, cVar, aVar, str, str2, aVar2, i13, z10);
        this.B = new Handler();
        this.C = false;
        this.D = false;
        this.E = false;
        this.f39477x = mBridgeVideoView;
        this.f39478y = mBridgeContainerView;
        this.G = i11;
        this.f39479z = i12;
        this.F = i14;
        if (mBridgeVideoView != null) {
            this.C = mBridgeVideoView.getVideoSkipTime() == 0;
        }
        if (mBridgeVideoView == null || mBridgeContainerView == null) {
            this.f39460a = false;
        }
    }

    private void a(int i11, int i12) {
        CampaignEx campaignEx;
        if (this.C || this.f39477x == null || (campaignEx = this.f39461b) == null) {
            return;
        }
        int i13 = this.f39479z;
        int i14 = (i13 < 0 || i11 < i13) ? 1 : 2;
        if (i14 != 2 && (campaignEx.getVideoCompleteTime() != 0 ? i11 > this.f39461b.getVideoCompleteTime() : this.f39477x.mCurrPlayNum > 1)) {
            i14 = 2;
        }
        if (i14 != 2 && this.f39477x.mCurrPlayNum > 1 && i11 == i12) {
            i14 = 2;
        }
        if (i14 == 2) {
            this.f39477x.closeVideoOperate(0, i14);
            this.C = true;
        }
    }

    private void n() {
        try {
            Timer timer = this.A;
            if (timer != null) {
                timer.cancel();
                this.A = null;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    private void o() {
        CampaignEx campaignEx;
        CampaignEx campaignEx2 = this.f39461b;
        if (campaignEx2 == null || campaignEx2.getDynamicTempCode() != 5) {
            return;
        }
        MBridgeVideoView mBridgeVideoView = this.f39477x;
        if (mBridgeVideoView == null || mBridgeVideoView.mCampOrderViewData == null) {
            campaignEx = null;
        } else {
            int i11 = 0;
            for (int i12 = 0; i12 < this.f39477x.mCampOrderViewData.size(); i12++) {
                if (this.f39477x.mCampOrderViewData.get(i12) != null && this.f39477x.mCampOrderViewData.get(i12).getId() == this.f39461b.getId()) {
                    i11 = i12 - 1;
                    break;
                }
            }
            if (i11 < 0 || this.f39477x.mCampOrderViewData.get(i11) == null) {
                campaignEx = null;
            } else {
                campaignEx = this.f39477x.mCampOrderViewData.get(i11);
            }
        }
        if (campaignEx != null) {
            MBridgeVideoView mBridgeVideoView2 = this.f39477x;
            if (mBridgeVideoView2 != null) {
                mBridgeVideoView2.setCampaign(campaignEx);
            }
            MBridgeContainerView mBridgeContainerView = this.f39478y;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.setCampaign(campaignEx);
            }
            a(campaignEx);
        }
    }

    private void p() {
        try {
            n();
            this.A = new Timer();
            this.A.schedule(new a(), 3000L);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:118:0x0251  */
    /* JADX WARN: Code duplicated, block: B:125:0x0269  */
    /* JADX WARN: Code duplicated, block: B:127:0x0271  */
    /* JADX WARN: Code duplicated, block: B:128:0x0278  */
    /* JADX WARN: Code duplicated, block: B:156:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:171:0x0338  */
    /* JADX WARN: Code duplicated, block: B:173:0x033c  */
    /* JADX WARN: Code duplicated, block: B:179:0x0359  */
    @Override // com.mbridge.msdk.video.module.listener.impl.o, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        CampaignEx campaignEx;
        CampaignEx campaignEx2;
        int bufferTimeout;
        String playURL;
        int i12;
        if (this.f39460a) {
            if (i11 != 1) {
                if (i11 == 2) {
                    this.f39477x.dismissAllAlert();
                    this.f39477x.videoOperate(3);
                    campaignEx = this.f39461b;
                    if (campaignEx == null && campaignEx.isDynamicView() && this.f39461b.getDynamicTempCode() == 5) {
                        if (this.f39478y != null) {
                            MBridgeVideoView mBridgeVideoView = this.f39477x;
                            if (mBridgeVideoView.mCurrPlayNum == mBridgeVideoView.mCampaignSize) {
                                if (this.f39461b.getAdSpaceT() == 2) {
                                    i11 = 16;
                                } else {
                                    this.f39478y.setRewardStatus(true);
                                    this.f39478y.showOrderCampView();
                                }
                            }
                        }
                        com.mbridge.msdk.video.bt.module.orglistener.f.a(this.f39461b, this.f39466g, this.f39477x.mCurrentPlayProgressTime);
                        if (this.G == 2) {
                            i11 = 16;
                        } else {
                            i11 = 16;
                        }
                    } else if (this.G == 2 || this.f39478y.endCardShowing() || this.f39461b.getAdSpaceT() == 2) {
                        i11 = 16;
                    } else {
                        this.f39478y.showEndcard(this.f39461b.getVideo_end_type());
                    }
                } else if (i11 != 5) {
                    if (i11 == 6) {
                        this.f39477x.dismissAllAlert();
                        this.f39477x.videoOperate(3);
                        campaignEx = this.f39461b;
                        if (campaignEx == null) {
                            if (this.G == 2) {
                                i11 = 16;
                            } else {
                                i11 = 16;
                            }
                        } else if (this.G == 2) {
                            i11 = 16;
                        } else {
                            i11 = 16;
                        }
                    } else if (i11 == 8) {
                        MBridgeContainerView mBridgeContainerView = this.f39478y;
                        if (mBridgeContainerView == null) {
                            MBridgeVideoView mBridgeVideoView2 = this.f39477x;
                            if (mBridgeVideoView2 != null) {
                                mBridgeVideoView2.showAlertView();
                            }
                        } else if (mBridgeContainerView.showAlertWebView()) {
                            MBridgeVideoView mBridgeVideoView3 = this.f39477x;
                            if (mBridgeVideoView3 != null) {
                                mBridgeVideoView3.alertWebViewShowed();
                            }
                        } else {
                            MBridgeVideoView mBridgeVideoView4 = this.f39477x;
                            if (mBridgeVideoView4 != null) {
                                mBridgeVideoView4.showAlertView();
                            }
                        }
                    } else if (i11 != 20) {
                        switch (i11) {
                            case 10:
                                this.D = true;
                                this.f39477x.soundOperate(0, 2);
                                this.f39477x.progressOperate(0, 2);
                                break;
                            case 11:
                                this.f39477x.videoOperate(3);
                                this.f39477x.dismissAllAlert();
                                CampaignEx campaignEx3 = this.f39461b;
                                if (campaignEx3 == null || campaignEx3.getVideo_end_type() == 3 || this.f39461b.getRewardTemplateMode() == null || this.f39461b.getRewardTemplateMode().f() == 5002010) {
                                    this.f39477x.setVisibility(0);
                                } else if (this.f39461b.getAdSpaceT() != 2) {
                                    this.f39477x.setVisibility(8);
                                }
                                CampaignEx campaignEx4 = this.f39461b;
                                if (campaignEx4 != null && campaignEx4.getDynamicTempCode() == 5) {
                                    MBridgeVideoView mBridgeVideoView5 = this.f39477x;
                                    if (mBridgeVideoView5.mCurrPlayNum != mBridgeVideoView5.mCampaignSize) {
                                        campaignEx2 = this.f39461b;
                                        if (campaignEx2 == null) {
                                            if (this.f39461b.getAdSpaceT() != 2) {
                                                this.f39478y.showEndcard(this.f39461b.getVideo_end_type());
                                            } else {
                                                this.f39478y.showVideoEndCover();
                                            }
                                        } else if (this.f39461b.getAdSpaceT() != 2) {
                                            this.f39478y.showEndcard(this.f39461b.getVideo_end_type());
                                        } else {
                                            this.f39478y.showVideoEndCover();
                                        }
                                    } else {
                                        MBridgeContainerView mBridgeContainerView2 = this.f39478y;
                                        if (mBridgeContainerView2 != null) {
                                            mBridgeContainerView2.setRewardStatus(true);
                                            this.f39478y.showOrderCampView();
                                        }
                                    }
                                } else {
                                    campaignEx2 = this.f39461b;
                                    if (campaignEx2 == null || campaignEx2.getRewardTemplateMode() == null || this.f39461b.getRewardTemplateMode().f() != 5002010) {
                                        if (this.f39461b.getAdSpaceT() != 2) {
                                            this.f39478y.showEndcard(this.f39461b.getVideo_end_type());
                                        } else {
                                            this.f39478y.showVideoEndCover();
                                        }
                                    }
                                }
                                break;
                            case 12:
                                k();
                                this.f39477x.videoOperate(3);
                                this.f39477x.dismissAllAlert();
                                if (this.f39461b.getVideo_end_type() != 3) {
                                    this.f39477x.setVisibility(8);
                                } else {
                                    this.f39477x.setVisibility(0);
                                }
                                if (this.D || this.F != 0) {
                                    if (this.f39461b.isDynamicView() && this.f39461b.getDynamicTempCode() == 5 && TextUtils.isEmpty(this.f39461b.getendcard_url())) {
                                        o();
                                        this.F = 0;
                                    }
                                    if (!this.D && this.F == 1) {
                                        j();
                                        h();
                                        i();
                                        if (q0.a().a("i_l_s_t_r_i", false) && !this.E) {
                                            this.E = true;
                                            MBridgeVideoView.u uVar = this.H;
                                            if (uVar != null) {
                                                uVar.a();
                                            }
                                        }
                                    }
                                    if (this.f39461b.getAdSpaceT() == 2) {
                                        this.f39478y.showVideoEndCover();
                                    } else {
                                        this.f39478y.showEndcard(this.f39461b.getVideo_end_type());
                                    }
                                }
                                break;
                            case 13:
                                MBridgeVideoView mBridgeVideoView6 = this.f39477x;
                                if (mBridgeVideoView6 != null) {
                                    mBridgeVideoView6.closeVideoOperate(0, 2);
                                    playURL = this.f39477x.getPlayURL();
                                    bufferTimeout = this.f39477x.getBufferTimeout();
                                } else {
                                    bufferTimeout = -1;
                                    playURL = "";
                                }
                                CampaignEx campaignEx5 = this.f39461b;
                                String videoUrlEncode = campaignEx5 != null ? campaignEx5.getVideoUrlEncode() : "";
                                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                                eVar.a("play_url", playURL);
                                eVar.a(CampaignEx.JSON_KEY_VIDEO_URL, videoUrlEncode);
                                eVar.a("timeout", Integer.valueOf(bufferTimeout));
                                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_video_buffer_timeout", this.f39461b, eVar);
                                break;
                            case 14:
                                if (!this.C) {
                                    this.f39477x.closeVideoOperate(0, 1);
                                }
                                break;
                            case 15:
                                if (obj != null && (obj instanceof MBridgeVideoView.v)) {
                                    MBridgeVideoView.v vVar = (MBridgeVideoView.v) obj;
                                    int videoInteractiveType = this.f39478y.getVideoInteractiveType();
                                    if (this.f39461b.getAdSpaceT() == 2) {
                                        SoundImageView soundImageView = this.f39477x.mSoundImageView;
                                        if (soundImageView != null && (soundImageView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f39477x.mSoundImageView.getLayoutParams();
                                            layoutParams.setMargins(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f), 0, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 85.0f));
                                            this.f39477x.mSoundImageView.setLayoutParams(layoutParams);
                                        }
                                        TextView textView = this.f39477x.tvFlag;
                                        if (textView != null && (textView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f39477x.tvFlag.getLayoutParams();
                                            layoutParams2.setMargins(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f), 0, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 85.0f));
                                            this.f39477x.tvFlag.setVisibility(0);
                                            this.f39477x.tvFlag.setLayoutParams(layoutParams2);
                                        }
                                        this.f39478y.showVideoClickView(1);
                                    } else if (videoInteractiveType >= 0 && vVar.f39428a >= videoInteractiveType) {
                                        this.f39478y.showVideoClickView(1);
                                        this.f39477x.soundOperate(0, 1);
                                    }
                                    this.C = vVar.f39430c;
                                    if (this.f39461b.getDynamicTempCode() != 5) {
                                        int i13 = this.f39479z;
                                        if (((i13 >= 0 && ((i12 = vVar.f39428a) >= i13 || i12 == vVar.f39429b)) || (this.f39461b.getVideoCompleteTime() > 0 && (vVar.f39428a > this.f39461b.getVideoCompleteTime() || vVar.f39428a == vVar.f39429b))) && !this.C) {
                                            this.f39477x.closeVideoOperate(0, 2);
                                            this.C = true;
                                        }
                                    } else {
                                        a(vVar.f39428a, vVar.f39429b);
                                    }
                                }
                                break;
                        }
                    } else if (q0.a().a("i_l_s_t_r_i", false) && (obj instanceof MBridgeVideoView.u)) {
                        this.H = (MBridgeVideoView.u) obj;
                    }
                } else if (obj != null && (obj instanceof Integer)) {
                    this.f39477x.soundOperate((((Integer) obj).intValue() == 1 ? 2 : 1).intValue(), -1);
                }
            } else if (!this.f39478y.endCardShowing()) {
                int videoInteractiveType2 = this.f39478y.getVideoInteractiveType();
                if (videoInteractiveType2 != -2) {
                    if (videoInteractiveType2 == -1) {
                        if (this.f39478y.isLast()) {
                            this.f39478y.showVideoClickView(1);
                            this.f39477x.soundOperate(0, 1);
                            p();
                        } else {
                            this.f39478y.showVideoClickView(-1);
                            this.f39477x.soundOperate(0, 2);
                            n();
                        }
                    }
                } else if (this.f39478y.miniCardLoaded()) {
                    this.f39478y.showVideoClickView(2);
                }
            }
        }
        super.a(i11, obj);
    }
}
