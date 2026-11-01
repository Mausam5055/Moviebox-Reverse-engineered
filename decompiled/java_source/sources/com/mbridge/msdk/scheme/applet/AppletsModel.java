package com.mbridge.msdk.scheme.applet;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.same.net.exception.a;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.scheme.report.AppletsReport;
import com.mbridge.msdk.scheme.request.AppletSchemeRequest;
import com.mbridge.msdk.scheme.response.AppletSchemeResponse;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class AppletsModel implements Serializable {
    private static final String DYNAMIC_VIEW_WX_IS_REDIRECT_0 = "0";
    private static final String DYNAMIC_VIEW_WX_IS_REDIRECT_1 = "1";
    private static final String DYNAMIC_VIEW_WX_QUERY_PARAM_EVENT_CALLBACK = "event_callback";
    private static final String DYNAMIC_VIEW_WX_QUERY_PARAM_INSTALL_CALLBACK = "install_callback";
    public static final int REQUEST_TYPE_CLICK = 1;
    public static final int REQUEST_TYPE_SHOW = 0;
    private static String TAG = "AppletsModel";
    private static final String URL_ENCODE_UTF_8 = "UTF-8";
    private static final String WX_MINIPROGRAM = "wx_miniprogram";
    private static final int WX_SCHEME_REQUEST_ERROR_CODE_44993 = 44993;
    private volatile IAppletSchemeCallBack appletSchemeCallBack;
    private final CampaignEx campaignEx;
    private String deepLink = "";
    private volatile boolean isRequestSuccess = false;
    private boolean isRequestTimesMaxPerDay = false;
    private volatile boolean isRequesting = false;
    private boolean isSupportWxScheme = false;
    private boolean isUserClick = false;
    private int lastRequestType = -1;
    private Map<String, String> params;
    private String reBuildClickUrl;
    private final String requestId;
    private final String unitID;

    private static final class DefaultAppletSchemeResponse extends AppletSchemeResponse {
        private AppletsModel appletsModel;

        public DefaultAppletSchemeResponse(AppletsModel appletsModel) {
            this.appletsModel = appletsModel;
        }

        @Override // com.mbridge.msdk.scheme.response.AppletSchemeResponse, com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
        public void onError(a aVar) {
            super.onError(aVar);
            AppletsModel appletsModel = this.appletsModel;
            if (appletsModel == null) {
                return;
            }
            appletsModel.changeRequestingState(false);
            this.appletsModel.handlerSchemeRequestNetworkError(aVar);
        }

        @Override // com.mbridge.msdk.scheme.response.AppletSchemeResponse, com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
        public void onSuccess(e<JSONObject> eVar) {
            super.onSuccess(eVar);
            AppletsModel appletsModel = this.appletsModel;
            if (appletsModel == null) {
                return;
            }
            appletsModel.changeRequestingState(false);
            if (eVar == null || eVar.f35428c == null) {
                this.appletsModel.handlerRequestNetworkError();
                return;
            }
            try {
                this.appletsModel.handlerSchemeRequestResult(eVar);
            } catch (SchemeRequestException e11) {
                this.appletsModel.handlerSchemeRequestFailed(-2, e11.getMessage());
            }
        }
    }

    private static final class SchemeRequestException extends Exception {
        public SchemeRequestException(String str) {
            super(str);
        }
    }

    public AppletsModel(CampaignEx campaignEx, String str, String str2) {
        this.campaignEx = campaignEx;
        this.unitID = str;
        this.requestId = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeRequestingState(boolean z10) {
        this.isRequesting = z10;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00be A[Catch: Exception -> 0x0078, TRY_LEAVE, TryCatch #3 {Exception -> 0x0078, blocks: (B:14:0x0045, B:16:0x0054, B:21:0x0067, B:23:0x006f, B:35:0x00ab, B:37:0x00be, B:32:0x0088, B:34:0x008c, B:50:0x00e8, B:60:0x0102, B:70:0x011c, B:71:0x011f, B:79:0x0139, B:81:0x0147, B:82:0x015d, B:76:0x012f, B:78:0x0133, B:67:0x0112, B:69:0x0116, B:57:0x00f8, B:59:0x00fc, B:47:0x00de, B:49:0x00e2, B:61:0x0105, B:41:0x00d1, B:51:0x00eb, B:28:0x007d), top: B:100:0x0045, inners: #0, #1, #4, #5, #7 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01b1  */
    private Map<String, String> getAppletsParamsAndBuildRequest(CampaignEx campaignEx) {
        String str;
        String str2;
        String str3;
        String strEncode;
        String str4 = MBridgeConstans.DYNAMIC_VIEW_WX_IS_REDIRECT;
        String str5 = "query";
        HashMap map = new HashMap();
        if (campaignEx == null) {
            return map;
        }
        try {
            Uri uri = Uri.parse(campaignEx.getClickURL());
            if (uri != null && uri.getQueryParameterNames() != null) {
                StringBuilder sb2 = new StringBuilder();
                Iterator<String> it = uri.getQueryParameterNames().iterator();
                int i11 = 0;
                try {
                    while (true) {
                        String queryParameter = "";
                        if (!it.hasNext()) {
                            break;
                        }
                        try {
                            Iterator<String> it2 = it;
                            String next = it.next();
                            if (TextUtils.isEmpty(next) || TextUtils.equals(next, "wx_miniprogram")) {
                                str4 = str4;
                                str5 = str5;
                            } else {
                                try {
                                    queryParameter = uri.getQueryParameter(next);
                                } catch (Exception unused) {
                                }
                                String strEncode2 = queryParameter;
                                if (TextUtils.equals(next, DYNAMIC_VIEW_WX_QUERY_PARAM_EVENT_CALLBACK) || TextUtils.equals(next, DYNAMIC_VIEW_WX_QUERY_PARAM_INSTALL_CALLBACK)) {
                                    try {
                                        strEncode2 = URLEncoder.encode(strEncode2, "UTF-8");
                                    } catch (Exception e11) {
                                        if (MBridgeConstans.DEBUG) {
                                            o0.b(TAG, "encode url for " + strEncode2 + " failed", e11);
                                        }
                                        sb2.append(next);
                                        sb2.append(UrlUtils.EQUAL_MARK);
                                        sb2.append(strEncode2);
                                        if (i11 < uri.getQueryParameterNames().size()) {
                                            sb2.append(UrlUtils.AND_MARK);
                                        }
                                        i11++;
                                        it = it2;
                                        str4 = str4;
                                        str5 = str5;
                                    }
                                }
                                sb2.append(next);
                                sb2.append(UrlUtils.EQUAL_MARK);
                                sb2.append(strEncode2);
                                if (i11 < uri.getQueryParameterNames().size()) {
                                    sb2.append(UrlUtils.AND_MARK);
                                }
                                i11++;
                            }
                            it = it2;
                            str4 = str4;
                            str5 = str5;
                        } catch (Exception e12) {
                            e = e12;
                            if (MBridgeConstans.DEBUG) {
                                o0.b(TAG, "create wechat app request param failed ", e);
                            }
                        }
                        e = e12;
                        if (MBridgeConstans.DEBUG) {
                            o0.b(TAG, "create wechat app request param failed ", e);
                        }
                        return map;
                    }
                    strEncode = URLEncoder.encode(sb2.toString(), "UTF-8");
                    if (strEncode == null) {
                        strEncode = "";
                    }
                } catch (UnsupportedEncodingException e13) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b(TAG, "create wechat app request param failed ", e13);
                    }
                }
                String str6 = str4;
                String str7 = str5;
                try {
                    String queryParameter2 = uri.getQueryParameter("app");
                    str = queryParameter2 == null ? "" : queryParameter2;
                } catch (Exception e14) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b(TAG, "create wechat app request param failed ", e14);
                    }
                }
                map.put("app", str);
                try {
                    String queryParameter3 = uri.getQueryParameter("path");
                    str2 = queryParameter3 == null ? "" : queryParameter3;
                } catch (Exception e15) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b(TAG, "create wechat app request param failed ", e15);
                    }
                }
                map.put("path", str2);
                try {
                    String queryParameter4 = uri.getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_WX_CLICKID);
                    str3 = queryParameter4 == null ? "" : queryParameter4;
                } catch (Exception e16) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b(TAG, "create wechat app request param failed ", e16);
                    }
                }
                map.put(MBridgeConstans.DYNAMIC_VIEW_WX_CLICKID, str3);
                map.put(str7, strEncode);
                map.put(str6, "0");
                if (MBridgeConstans.DEBUG) {
                    o0.a(TAG, "query: " + strEncode);
                }
                this.reBuildClickUrl = reCreateClickUrl("app" + UrlUtils.EQUAL_MARK + str + UrlUtils.AND_MARK + "path" + UrlUtils.EQUAL_MARK + str2 + UrlUtils.AND_MARK + str7 + UrlUtils.EQUAL_MARK + strEncode + UrlUtils.AND_MARK + MBridgeConstans.DYNAMIC_VIEW_WX_CLICKID + UrlUtils.EQUAL_MARK + str3 + UrlUtils.AND_MARK + str6 + UrlUtils.EQUAL_MARK + "1");
                return map;
            }
            return map;
        } catch (Exception e17) {
            e = e17;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerRequestNetworkError() {
        if (this.appletSchemeCallBack == null) {
            return;
        }
        if (MBridgeConstans.DEBUG) {
            o0.a(TAG, "handlerRequestNetworkError response or result is null");
        }
        try {
            this.appletSchemeCallBack.onNetworkError(1, "response or result is null", this.reBuildClickUrl);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, "handler request network error exception ", e11);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), "response or result is null", this.unitID, this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerSchemeRequestFailed(int i11, String str) {
        if (this.appletSchemeCallBack == null) {
            return;
        }
        if (MBridgeConstans.DEBUG) {
            o0.a(TAG, String.format("handlerSchemeRequestFailed network error by code %s and %s", String.valueOf(i11), str));
        }
        try {
            this.appletSchemeCallBack.onAppletSchemeRequestFailed(i11, str, this.reBuildClickUrl);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, "handler wx scheme failed exception  ", e11);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), String.format("network error by code %s and %s", String.valueOf(i11), str), this.unitID, this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerSchemeRequestNetworkError(a aVar) {
        int i11;
        String message;
        if (this.appletSchemeCallBack == null) {
            return;
        }
        if (aVar != null) {
            i11 = aVar.f35429a;
            message = aVar.getMessage();
            if (i11 == 10) {
                message = "request timeout";
            }
        } else {
            i11 = -1;
            message = "unKnown";
        }
        if (MBridgeConstans.DEBUG) {
            o0.a(TAG, String.format("handlerSchemeRequestNetworkError network error by code %s and %s", String.valueOf(i11), message));
        }
        try {
            this.appletSchemeCallBack.onNetworkError(i11, "network error: " + message, this.reBuildClickUrl);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, "handler wx scheme network error exception ", e11);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), String.format("network error by code %s and %s", String.valueOf(i11), message), this.unitID, this.requestId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerSchemeRequestResult(e<JSONObject> eVar) throws SchemeRequestException {
        JSONObject jSONObject = eVar.f35428c;
        if (MBridgeConstans.DEBUG) {
            o0.a("AppletsModel", "result: " + jSONObject.toString());
        }
        if (jSONObject.has("wx_scheme")) {
            String strOptString = jSONObject.optString("wx_scheme", "");
            if (TextUtils.isEmpty(strOptString)) {
                throw new SchemeRequestException("wx_scheme value is null");
            }
            this.isRequestSuccess = true;
            handlerSchemeRequestSuccess(strOptString);
            return;
        }
        int iOptInt = jSONObject.optInt("error_code", -1);
        String strOptString2 = jSONObject.optString(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, "");
        if (iOptInt == WX_SCHEME_REQUEST_ERROR_CODE_44993) {
            this.isRequestTimesMaxPerDay = true;
        }
        handlerSchemeRequestFailed(iOptInt, strOptString2);
    }

    private void handlerSchemeRequestStart() {
        if (this.appletSchemeCallBack == null) {
            return;
        }
        try {
            this.appletSchemeCallBack.onAppletSchemeRequestStart();
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, "handler wx scheme start exception ", e11);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), "start load wx scheme", this.unitID, this.requestId);
    }

    private void handlerSchemeRequestSuccess(String str) {
        if (this.appletSchemeCallBack == null) {
            return;
        }
        if (MBridgeConstans.DEBUG) {
            o0.a(TAG, "handlerSchemeRequestSuccess: " + str);
        }
        try {
            this.deepLink = str;
            this.appletSchemeCallBack.onAppletSchemeRequestSuccess(str);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b(TAG, "handler wx scheme success exception ", e11);
            }
        }
        AppletsReport.reportAppletsLoadState(c.m().d(), "request wx scheme success", this.unitID, this.requestId);
    }

    private boolean isCanRequestByClickUrl(String str) {
        try {
            CampaignEx campaignEx = this.campaignEx;
            if (campaignEx == null) {
                return false;
            }
            String clickURL = campaignEx.getClickURL();
            if (TextUtils.isEmpty(clickURL)) {
                return false;
            }
            return TextUtils.equals(z0.a(clickURL, "wx_miniprogram"), str);
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            o0.b(TAG, "query wx_miniprogram from click url exception ", e11);
            return false;
        }
    }

    private boolean isCanRequestByLinkType() {
        CampaignEx campaignEx = this.campaignEx;
        if (campaignEx == null) {
            return false;
        }
        int linkType = campaignEx.getLinkType();
        return linkType == 8 || linkType == 9;
    }

    private boolean isCanRequestByTemplateUrl(String str) {
        CampaignEx.c rewardTemplateMode;
        try {
            CampaignEx campaignEx = this.campaignEx;
            if (campaignEx != null && (rewardTemplateMode = campaignEx.getRewardTemplateMode()) != null && !TextUtils.isEmpty(rewardTemplateMode.e())) {
                return TextUtils.equals(z0.a(rewardTemplateMode.e(), MBridgeConstans.DYNAMIC_VIEW_REQ_WX_URL), str);
            }
            return false;
        } catch (Exception e11) {
            if (!MBridgeConstans.DEBUG) {
                return false;
            }
            o0.b(TAG, "query reqwxurl from template url exception ", e11);
            return false;
        }
    }

    private String reCreateClickUrl(String str) {
        return d.h().f35464b + UrlUtils.QUESTION_MARK + str;
    }

    public boolean can(int i11) {
        if (isRequesting() || !canRequestWxScheme(i11)) {
            return false;
        }
        if (this.lastRequestType == -1) {
            return true;
        }
        if (isRequestSuccess()) {
            return false;
        }
        int i12 = this.lastRequestType;
        return (i12 == 0 && i11 == 1) || (i12 == 1 && i11 == 1 && this.isUserClick);
    }

    public boolean canRequestWxScheme(int i11) {
        if (!isSupportWxScheme()) {
            return false;
        }
        if (i11 != 0) {
            return i11 == 1;
        }
        return isCanRequestByTemplateUrl("2");
    }

    public void clearRequestState() {
        this.isRequestSuccess = false;
        this.isRequesting = false;
        this.appletSchemeCallBack = null;
    }

    public String getDeepLink() {
        return this.deepLink;
    }

    public String getReBuildClickUrl() {
        return this.reBuildClickUrl;
    }

    public boolean isRequestSuccess() {
        return this.isRequestSuccess;
    }

    public boolean isRequestTimesMaxPerDay() {
        return this.isRequestTimesMaxPerDay;
    }

    public boolean isRequesting() {
        return this.isRequesting;
    }

    public boolean isSupportWxScheme() {
        if (!this.isSupportWxScheme) {
            this.isSupportWxScheme = isCanRequestByClickUrl("1") && isCanRequestByLinkType();
        }
        return this.isSupportWxScheme;
    }

    public void requestWxAppletsScheme(int i11, IAppletSchemeCallBack iAppletSchemeCallBack) {
        if (this.campaignEx == null || TextUtils.isEmpty(this.unitID)) {
            return;
        }
        if (MBridgeConstans.DEBUG) {
            o0.b(TAG, "start request wx scheme");
        }
        this.isRequesting = true;
        if (iAppletSchemeCallBack != null) {
            this.appletSchemeCallBack = iAppletSchemeCallBack;
        }
        handlerSchemeRequestStart();
        AppletSchemeRequest appletSchemeRequest = new AppletSchemeRequest(c.m().d());
        if (this.params == null) {
            this.params = getAppletsParamsAndBuildRequest(this.campaignEx);
        }
        if (this.params == null) {
            return;
        }
        if (isRequestTimesMaxPerDay()) {
            handlerSchemeRequestFailed(WX_SCHEME_REQUEST_ERROR_CODE_44993, "get wxscheme failed : request times is max");
        } else {
            this.lastRequestType = i11;
            appletSchemeRequest.get(1, d.h().f35464b, this.params, new DefaultAppletSchemeResponse(this), "applets_model", 60000L);
        }
    }

    public void setAppletSchemeCallBack(IAppletSchemeCallBack iAppletSchemeCallBack) {
        this.appletSchemeCallBack = iAppletSchemeCallBack;
    }

    public void setRequestingFinish() {
        this.isRequesting = false;
    }

    public void setUserClick(boolean z10) {
        this.isUserClick = z10;
    }
}
