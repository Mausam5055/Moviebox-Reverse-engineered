package com.mbridge.msdk.video.signal.communication;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.mbridge.msdk.video.signal.impl.k;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class BaseRewardSignal extends BaseRewardSignalDiff {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected BaseIRewardCommunication f39498g;

    private String a(int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i11);
            String string = jSONObject.toString();
            if (!TextUtils.isEmpty(string)) {
                return Base64.encodeToString(string.getBytes(), 2);
            }
        } catch (Throwable unused) {
            o0.b("JS-Reward-Brigde", "code to string is error");
        }
        return "";
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void cai(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                String strOptString = new JSONObject(str).optString("packageName");
                if (TextUtils.isEmpty(strOptString)) {
                    d.a(obj, "packageName is empty");
                }
                int i11 = t0.c(c.m().d(), strOptString) ? 1 : 2;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", d.f36496b);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i11);
                    jSONObject.put("data", jSONObject2);
                    f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e11) {
                    d.a(obj, e11.getMessage());
                    o0.a("JS-Reward-Brigde", e11.getMessage());
                }
            } catch (JSONException e12) {
                d.a(obj, "exception: " + e12.getLocalizedMessage());
                o0.b("JS-Reward-Brigde", "cai", e12);
            }
        } catch (Throwable th2) {
            d.a(obj, "exception: " + th2.getLocalizedMessage());
            o0.b("JS-Reward-Brigde", "cai", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void getEndScreenInfo(Object obj, String str) {
        try {
            BaseIRewardCommunication baseIRewardCommunication = this.f39498g;
            if (baseIRewardCommunication != null) {
                baseIRewardCommunication.getEndScreenInfo(obj, str);
                o0.b("JS-Reward-Brigde", "getEndScreenInfo factory is true");
            } else {
                o0.b("JS-Reward-Brigde", "getEndScreenInfo factory is null");
                if (obj != null) {
                    WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f36541b;
                    if ((windVaneWebView instanceof WindVaneWebView) && windVaneWebView.getWebViewListener() != null) {
                        ((com.mbridge.msdk.mbsignalcommon.listener.a) windVaneWebView.getWebViewListener()).a(obj);
                    }
                }
            }
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "getEndScreenInfo", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void handlerPlayableException(Object obj, String str) {
        try {
            if (this.f39498g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f39498g.handlerPlayableException(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "handlerPlayableException", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.g
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        boolean zIsInstance;
        super.initialize(context, windVaneWebView);
        try {
            zIsInstance = IJSFactory.class.isInstance(context);
        } catch (ClassNotFoundException e11) {
            e11.printStackTrace();
            zIsInstance = false;
        }
        try {
            if (zIsInstance) {
                this.f39498g = (BaseIRewardCommunication) BaseRewardSignalH5.class.newInstance();
                BaseRewardSignalH5.class.getMethod("initialize", Context.class, WindVaneWebView.class).invoke(this.f39498g, context, windVaneWebView);
            } else if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof BaseIRewardCommunication)) {
                this.f39498g = (BaseIRewardCommunication) windVaneWebView.getObject();
            }
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                e12.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.g
    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        boolean zIsInstance;
        super.initialize(obj, windVaneWebView);
        try {
            zIsInstance = IJSFactory.class.isInstance(obj);
        } catch (ClassNotFoundException e11) {
            e11.printStackTrace();
            zIsInstance = false;
        }
        try {
            if (zIsInstance) {
                this.f39498g = (BaseIRewardCommunication) BaseRewardSignalH5.class.newInstance();
                BaseRewardSignalH5.class.getMethod("initialize", Object.class, WindVaneWebView.class).invoke(this.f39498g, obj, windVaneWebView);
            } else if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof BaseIRewardCommunication)) {
                this.f39498g = (BaseIRewardCommunication) windVaneWebView.getObject();
            }
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                e12.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void install(Object obj, String str) {
        try {
            BaseIRewardCommunication baseIRewardCommunication = this.f39498g;
            if (baseIRewardCommunication != null) {
                baseIRewardCommunication.install(obj, str);
                return;
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (obj != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                if (aVar.f36541b.getObject() instanceof k) {
                    ((k) aVar.f36541b.getObject()).click(1, str);
                    o0.b("JS-Reward-Brigde", "JSCommon install jump success");
                }
            }
            o0.b("JS-Reward-Brigde", "JSCommon install failed");
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "install", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void notifyCloseBtn(Object obj, String str) {
        try {
            if (this.f39498g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f39498g.notifyCloseBtn(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "notifyCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void openURL(Object obj, String str) {
        o0.b("JS-Reward-Brigde", "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            if (iOptInt == 1) {
                com.mbridge.msdk.click.c.c(this.f36564a, strOptString);
            } else if (iOptInt == 2) {
                com.mbridge.msdk.click.c.e(this.f36564a, strOptString);
            }
        } catch (JSONException e11) {
            o0.b("JS-Reward-Brigde", e11.getMessage());
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void setOrientation(Object obj, String str) {
        try {
            if (this.f39498g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f39498g.setOrientation(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "setOrientation", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (this.f39498g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f39498g.toggleCloseBtn(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "toggleCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void triggerCloseBtn(Object obj, String str) {
        try {
            if (this.f39498g == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f39498g.triggerCloseBtn(obj, str);
        } catch (Throwable th2) {
            o0.b("JS-Reward-Brigde", "triggerCloseBtn", th2);
            f.a().b(obj, a(-1));
        }
    }
}
