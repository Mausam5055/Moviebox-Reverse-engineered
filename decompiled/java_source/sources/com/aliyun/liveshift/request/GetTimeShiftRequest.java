package com.aliyun.liveshift.request;

import android.content.Context;
import android.text.TextUtils;
import com.aliyun.liveshift.bean.TimeLineContent;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.player.source.LiveShift;
import com.aliyun.utils.BaseRequest;
import com.aliyun.utils.HttpClientHelper;
import com.aliyun.utils.JsonUtil;
import com.mbridge.msdk.playercommon.PlayerErrorConstant;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class GetTimeShiftRequest extends BaseRequest {
    private static final String TAG = "GetTimeShiftRequest";
    private HttpClientHelper httpClientHelper;
    private WeakReference<Context> mContextWeak;
    private String[] mCustomHeaders;
    private String mHttpProxy;
    private LiveShift mLiveShiftSource;
    private int mNetworkTimeout;
    private String mReferer;
    private String mUserAgent;

    public GetTimeShiftRequest(Context context, LiveShift liveShift, BaseRequest.OnRequestListener onRequestListener) {
        super(context, onRequestListener);
        this.mReferer = null;
        this.mNetworkTimeout = -1;
        this.mHttpProxy = null;
        this.mUserAgent = null;
        this.mCustomHeaders = null;
        this.httpClientHelper = null;
        this.mContextWeak = new WeakReference<>(context);
        this.mLiveShiftSource = liveShift;
    }

    @Override // com.aliyun.utils.BaseRequest
    public void runInBackground() throws Throwable {
        String timeLineUrl = this.mLiveShiftSource.getTimeLineUrl();
        if (this.wantStop) {
            sendFailResult(-1, "", "");
            return;
        }
        try {
            HttpClientHelper httpClientHelper = new HttpClientHelper(timeLineUrl);
            this.httpClientHelper = httpClientHelper;
            httpClientHelper.setRefer(this.mReferer);
            this.httpClientHelper.setHttpProxy(this.mHttpProxy);
            this.httpClientHelper.setTimeout(this.mNetworkTimeout);
            this.httpClientHelper.setUerAgent(this.mUserAgent);
            this.httpClientHelper.setCustomHeaders(this.mCustomHeaders);
            String strDoGet = this.httpClientHelper.doGet();
            if (TextUtils.isEmpty(strDoGet)) {
                sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_REQUEST_ERROR.getValue(), "request fail", "");
                return;
            }
            JSONObject jSONObject = new JSONObject(strDoGet);
            if (JsonUtil.getInt(jSONObject, "retCode") != 0) {
                sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_REQUEST_ERROR.getValue(), "request fail", "");
            } else {
                sendSuccessResult(TimeLineContent.getInfoFromJson(jSONObject.getJSONObject("content")), "");
            }
        } catch (JSONException unused) {
            sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_DATA_PARSER_ERROR.getValue(), "response not json", "");
        } catch (Exception unused2) {
            sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_UNKNOWN.getValue(), PlayerErrorConstant.UNKNOW_ERROR, "");
        }
    }

    public void setCustomHeaders(String[] strArr) {
        this.mCustomHeaders = strArr;
    }

    public void setHttpProxy(String str) {
        this.mHttpProxy = str;
    }

    public void setRefer(String str) {
        this.mReferer = str;
    }

    public void setTimeout(int i11) {
        this.mNetworkTimeout = i11;
    }

    public void setUerAgent(String str) {
        this.mUserAgent = str;
    }

    @Override // com.aliyun.utils.BaseRequest
    public void stopInner() {
        HttpClientHelper httpClientHelper = this.httpClientHelper;
        if (httpClientHelper != null) {
            httpClientHelper.stop();
        }
    }
}
