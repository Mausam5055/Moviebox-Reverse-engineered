package com.mbridge.msdk.video.signal.impl;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class o extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f39853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MBridgeContainerView f39854b;

    public o(Activity activity, MBridgeContainerView mBridgeContainerView) {
        this.f39853a = activity;
        this.f39854b = mBridgeContainerView;
    }

    private String a(List<CampaignEx> list, String str, String str2, JSONObject jSONObject) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    Object camplistToJson = CampaignEx.parseCamplistToJson(list);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("campaignList", camplistToJson);
                    a(jSONObject2);
                    jSONObject2.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                    jSONObject2.put("sdk_info", str2);
                    jSONObject2.put("unitSetting", jSONObject);
                    if (com.mbridge.msdk.setting.h.b() != null) {
                        String strE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
                        if (!TextUtils.isEmpty(strE)) {
                            JSONObject jSONObject3 = new JSONObject(strE);
                            a(jSONObject3, str);
                            String strC = com.mbridge.msdk.setting.h.b().c(str);
                            if (!TextUtils.isEmpty(strC)) {
                                jSONObject3.put("ivreward", new JSONObject(strC));
                            }
                            jSONObject2.put("appSetting", jSONObject3);
                        }
                    }
                    return jSONObject2.toString();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }

    private void a(JSONObject jSONObject, String str) {
        try {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            String string = w0.a(contextD, "MBridge_ConfirmTitle" + str, "").toString();
            String string2 = w0.a(contextD, "MBridge_ConfirmContent" + str, "").toString();
            String string3 = w0.a(contextD, "MBridge_CancelText" + str, "").toString();
            String string4 = w0.a(contextD, "MBridge_ConfirmText" + str, "").toString();
            if (!TextUtils.isEmpty(string)) {
                jSONObject.put("confirm_title", string);
            }
            if (!TextUtils.isEmpty(string2)) {
                jSONObject.put("confirm_description", string2);
            }
            if (!TextUtils.isEmpty(string3)) {
                jSONObject.put("confirm_t", string3);
            }
            if (!TextUtils.isEmpty(string4)) {
                jSONObject.put("confirm_c_play", string4);
            }
            if (TextUtils.isEmpty(string4)) {
                return;
            }
            jSONObject.put("confirm_c_rv", string4);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private com.mbridge.msdk.videocommon.setting.c b(String str) {
        if (com.mbridge.msdk.videocommon.setting.b.b() == null) {
            return null;
        }
        return com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), str);
    }

    @Override // com.mbridge.msdk.video.signal.impl.g, com.mbridge.msdk.video.signal.i
    public void a(String str) {
        super.a(str);
        try {
            if (this.f39853a != null && !TextUtils.isEmpty(str)) {
                if (str.equals(TmcStartParams.KEY_LANDSCAPE)) {
                    this.f39853a.setRequestedOrientation(0);
                } else if (str.equals("portrait")) {
                    this.f39853a.setRequestedOrientation(1);
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.g, com.mbridge.msdk.video.signal.i
    public String b() {
        if (this.f39854b == null) {
            super.b();
        } else {
            try {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.f39854b.getCampaign());
                String unitID = this.f39854b.getUnitID();
                com.mbridge.msdk.videocommon.setting.c cVarB = b(unitID);
                JSONObject jSONObject = new JSONObject();
                if (cVarB != null) {
                    jSONObject = cVarB.H();
                }
                o0.a("JSRewardVideoV1", "getEndScreenInfo success campaign = " + this.f39854b.getCampaign());
                return a(arrayList, unitID, "MAL_16.9.71,3.0.1", jSONObject);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return super.b();
    }

    @Override // com.mbridge.msdk.video.signal.impl.g, com.mbridge.msdk.video.signal.i
    public void handlerPlayableException(String str) {
        MBridgeContainerView mBridgeContainerView;
        super.handlerPlayableException(str);
        try {
            if (this.f39853a == null || TextUtils.isEmpty(str) || (mBridgeContainerView = this.f39854b) == null) {
                return;
            }
            mBridgeContainerView.handlerPlayableException(str);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.g, com.mbridge.msdk.video.signal.h
    public void notifyCloseBtn(int i11) {
        super.notifyCloseBtn(i11);
        MBridgeContainerView mBridgeContainerView = this.f39854b;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.notifyCloseBtn(i11);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.g, com.mbridge.msdk.video.signal.h
    public void toggleCloseBtn(int i11) {
        super.toggleCloseBtn(i11);
        MBridgeContainerView mBridgeContainerView = this.f39854b;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.toggleCloseBtn(i11);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.g, com.mbridge.msdk.video.signal.i
    public void triggerCloseBtn(String str) {
        MBridgeContainerView mBridgeContainerView;
        super.triggerCloseBtn(str);
        try {
            if (this.f39853a == null || TextUtils.isEmpty(str) || !str.equals("click") || (mBridgeContainerView = this.f39854b) == null) {
                return;
            }
            mBridgeContainerView.triggerCloseBtn(str);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
