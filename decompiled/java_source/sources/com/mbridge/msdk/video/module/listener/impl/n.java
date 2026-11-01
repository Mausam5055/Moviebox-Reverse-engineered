package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.factory.IJSFactory;

/* JADX INFO: loaded from: classes5.dex */
public class n extends o {
    private boolean A;
    private int B;
    private boolean C;
    private MBridgeVideoView.u D;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private IJSFactory f39482x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f39483y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f39484z;

    public n(IJSFactory iJSFactory, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, int i11, int i12, com.mbridge.msdk.video.module.listener.a aVar2, int i13, boolean z10, int i14) {
        super(campaignEx, cVar, aVar, str, str2, aVar2, i13, z10);
        this.f39484z = false;
        this.A = false;
        this.C = false;
        this.f39482x = iJSFactory;
        this.f39483y = i11;
        this.f39484z = i12 == 0;
        this.B = i14;
        if (iJSFactory == null) {
            this.f39460a = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0289  */
    /* JADX WARN: Code duplicated, block: B:105:0x0291  */
    /* JADX WARN: Code duplicated, block: B:106:0x029b  */
    /* JADX WARN: Code duplicated, block: B:114:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:97:0x025f  */
    /* JADX WARN: Code duplicated, block: B:99:0x026a  */
    @Override // com.mbridge.msdk.video.module.listener.impl.o, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        int i12;
        int i13 = i11;
        if (this.f39460a) {
            if (i13 != 1) {
                if (i13 == 2) {
                    this.f39482x.getJSVideoModule().dismissAllAlert();
                    if (i13 == 2) {
                        this.f39482x.getJSNotifyProxy().a(2, "");
                    }
                    this.f39482x.getJSVideoModule().videoOperate(3);
                    if (this.f39482x.getJSCommon().i() != 2) {
                        if (this.f39461b.getVideo_end_type() != 3) {
                            this.f39482x.getJSVideoModule().setVisible(8);
                        } else {
                            this.f39482x.getJSVideoModule().setVisible(0);
                        }
                        if (this.f39483y == 2 || this.f39482x.getJSContainerModule().endCardShowing() || this.f39461b.getAdSpaceT() == 2) {
                            i13 = 16;
                        } else {
                            this.f39482x.getJSContainerModule().showEndcard(this.f39461b.getVideo_end_type());
                        }
                    } else {
                        i13 = 16;
                    }
                    this.f39482x.getJSNotifyProxy().a(1);
                } else if (i13 != 5) {
                    if (i13 == 6) {
                        this.f39482x.getJSVideoModule().dismissAllAlert();
                        if (i13 == 2) {
                            this.f39482x.getJSNotifyProxy().a(2, "");
                        }
                        this.f39482x.getJSVideoModule().videoOperate(3);
                        if (this.f39482x.getJSCommon().i() != 2) {
                            if (this.f39461b.getVideo_end_type() != 3) {
                                this.f39482x.getJSVideoModule().setVisible(8);
                            } else {
                                this.f39482x.getJSVideoModule().setVisible(0);
                            }
                            if (this.f39483y == 2) {
                                i13 = 16;
                            } else {
                                i13 = 16;
                            }
                        } else {
                            i13 = 16;
                        }
                        this.f39482x.getJSNotifyProxy().a(1);
                    } else if (i13 != 8) {
                        if (i13 != 20) {
                            if (i13 != 114) {
                                if (i13 != 116) {
                                    switch (i13) {
                                        case 10:
                                            this.C = true;
                                            this.f39482x.getJSNotifyProxy().a(0);
                                            break;
                                        case 11:
                                        case 12:
                                            this.f39482x.getJSVideoModule().videoOperate(3);
                                            if (this.f39461b.getVideo_end_type() == 3) {
                                                this.f39482x.getJSVideoModule().setVisible(0);
                                            } else if (this.f39461b.getAdSpaceT() != 2) {
                                                this.f39482x.getJSVideoModule().setVisible(8);
                                            }
                                            if (i13 == 12) {
                                                k();
                                                i12 = 2;
                                            } else {
                                                i12 = 1;
                                            }
                                            this.f39482x.getJSNotifyProxy().a(i12);
                                            if (this.f39482x.getJSCommon().i() == 2) {
                                                this.f39482x.getJSVideoModule().setVisible(0);
                                                com.mbridge.msdk.video.signal.j jSVideoModule = this.f39482x.getJSVideoModule();
                                                this.f39482x.getJSContainerModule().showMiniCard(jSVideoModule.getBorderViewTop(), jSVideoModule.getBorderViewLeft(), jSVideoModule.getBorderViewWidth(), jSVideoModule.getBorderViewHeight(), jSVideoModule.getBorderViewRadius());
                                            } else if (i13 == 12) {
                                                if (this.B == 1) {
                                                    if (this.f39461b.getAdSpaceT() != 2) {
                                                        this.f39482x.getJSContainerModule().showEndcard(this.f39461b.getVideo_end_type());
                                                    } else {
                                                        this.f39482x.getJSContainerModule().showVideoEndCover();
                                                    }
                                                }
                                            } else if (this.f39461b.getAdSpaceT() != 2) {
                                                this.f39482x.getJSContainerModule().showEndcard(this.f39461b.getVideo_end_type());
                                            } else {
                                                this.f39482x.getJSContainerModule().showVideoEndCover();
                                            }
                                            this.f39482x.getJSVideoModule().dismissAllAlert();
                                            if (i13 == 12 && !this.C && this.B == 1) {
                                                k();
                                                j();
                                                h();
                                                i();
                                                if (q0.a().a("i_l_s_t_r_i", false) && !this.A) {
                                                    this.A = true;
                                                    MBridgeVideoView.u uVar = this.D;
                                                    if (uVar != null) {
                                                        uVar.a();
                                                    }
                                                }
                                            }
                                            break;
                                        case 13:
                                            if (!this.f39482x.getJSVideoModule().isH5Canvas()) {
                                                this.f39482x.getJSVideoModule().closeVideoOperate(0, 2);
                                            }
                                            this.f39482x.getJSNotifyProxy().a(-1);
                                            break;
                                        case 14:
                                            if (!this.f39484z) {
                                                this.f39482x.getJSVideoModule().closeVideoOperate(0, 1);
                                            }
                                            break;
                                        case 15:
                                            if (obj != null && (obj instanceof MBridgeVideoView.v)) {
                                                this.f39484z = true;
                                                this.f39482x.getJSNotifyProxy().a((MBridgeVideoView.v) obj);
                                            }
                                            break;
                                        default:
                                            switch (i13) {
                                                case INVALID_RI_ENDPOINT_VALUE:
                                                case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                                                    this.f39482x.getJSNotifyProxy().a(i13 == 123 ? 7 : 6, "");
                                                    break;
                                                case INVALID_METRICS_ENDPOINT_VALUE:
                                                    this.f39482x.getJSContainerModule().hideAlertWebview();
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    com.mbridge.msdk.video.signal.j jSVideoModule2 = this.f39482x.getJSVideoModule();
                                    this.f39482x.getJSContainerModule().configurationChanged(jSVideoModule2.getBorderViewWidth(), jSVideoModule2.getBorderViewHeight(), jSVideoModule2.getBorderViewRadius());
                                }
                            } else if (this.f39482x.getJSCommon().i() == 2) {
                                com.mbridge.msdk.video.signal.j jSVideoModule3 = this.f39482x.getJSVideoModule();
                                this.f39482x.getJSContainerModule().showMiniCard(jSVideoModule3.getBorderViewTop(), jSVideoModule3.getBorderViewLeft(), jSVideoModule3.getBorderViewWidth(), jSVideoModule3.getBorderViewHeight(), jSVideoModule3.getBorderViewRadius());
                            }
                        } else if (q0.a().a("i_l_s_t_r_i", false) && (obj instanceof MBridgeVideoView.u)) {
                            this.D = (MBridgeVideoView.u) obj;
                        }
                    } else if (this.f39482x.getJSContainerModule().showAlertWebView()) {
                        this.f39482x.getJSVideoModule().alertWebViewShowed();
                    } else {
                        this.f39482x.getJSVideoModule().showAlertView();
                    }
                } else if (obj != null && (obj instanceof Integer)) {
                    Integer num = ((Integer) obj).intValue() == 1 ? 2 : 1;
                    this.f39482x.getJSVideoModule().soundOperate(num.intValue(), -1);
                    this.f39482x.getJSNotifyProxy().a(5, num + "");
                }
            } else if (!this.f39482x.getJSContainerModule().endCardShowing()) {
                this.f39482x.getJSNotifyProxy().a(1, obj != null ? obj.toString() : "");
            }
        }
        super.a(i13, obj);
    }
}
