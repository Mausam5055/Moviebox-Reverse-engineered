package com.github.lzyzsd.jsbridge;

import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class BridgeHelper implements WebViewJavascriptBridge {
    private static final String BRIDGE_JS = "WebViewJavascriptBridge.js";
    private static final String TAG = "BridgeHelper";
    private IWebView webView;
    private Map<String, OnBridgeCallback> responseCallbacks = new HashMap();
    private Map<String, BridgeHandler> messageHandlers = new HashMap();
    private BridgeHandler defaultHandler = new DefaultHandler();
    private List<Message> startupMessage = new ArrayList();
    private long uniqueId = 0;

    public BridgeHelper(IWebView iWebView) {
        this.webView = iWebView;
    }

    private void dispatchMessage(Message message) {
        String str = String.format("javascript:WebViewJavascriptBridge._handleMessageFromNative(%s);", message.toJson().replaceAll("(\\\\)([^utrn])", "\\\\\\\\$1$2").replaceAll("(?<=[^\\\\])(\")", "\\\\\"").replaceAll("(?<=[^\\\\])(')", "\\\\'").replaceAll("%7B", URLEncoder.encode("%7B")).replaceAll("%7D", URLEncoder.encode("%7D")).replaceAll("%22", URLEncoder.encode("%22")));
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            loadUrl(str);
        }
    }

    private void doSend(String str, String str2, OnBridgeCallback onBridgeCallback) {
        Message message = new Message();
        if (!TextUtils.isEmpty(str2)) {
            message.setData(str2);
        }
        if (onBridgeCallback != null) {
            StringBuilder sb2 = new StringBuilder();
            long j11 = this.uniqueId + 1;
            this.uniqueId = j11;
            sb2.append(j11);
            sb2.append("_");
            sb2.append(SystemClock.currentThreadTimeMillis());
            String str3 = String.format("JAVA_CB_%s", sb2.toString());
            this.responseCallbacks.put(str3, onBridgeCallback);
            message.setCallbackId(str3);
        }
        if (!TextUtils.isEmpty(str)) {
            message.setHandlerName(str);
        }
        queueMessage(message);
    }

    private void flushMessageQueue() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            loadUrl("javascript:WebViewJavascriptBridge._fetchQueue();", new OnBridgeCallback() { // from class: com.github.lzyzsd.jsbridge.BridgeHelper.1
                @Override // com.github.lzyzsd.jsbridge.OnBridgeCallback
                public void onCallBack(String str) {
                    try {
                        List<Message> arrayList = Message.toArrayList(str);
                        if (arrayList == null || arrayList.isEmpty()) {
                            return;
                        }
                        for (int i11 = 0; i11 < arrayList.size(); i11++) {
                            Message message = arrayList.get(i11);
                            String responseId = message.getResponseId();
                            if (TextUtils.isEmpty(responseId)) {
                                final String callbackId = message.getCallbackId();
                                OnBridgeCallback onBridgeCallback = !TextUtils.isEmpty(callbackId) ? new OnBridgeCallback() { // from class: com.github.lzyzsd.jsbridge.BridgeHelper.1.1
                                    @Override // com.github.lzyzsd.jsbridge.OnBridgeCallback
                                    public void onCallBack(String str2) {
                                        Message message2 = new Message();
                                        message2.setResponseId(callbackId);
                                        message2.setResponseData(str2);
                                        BridgeHelper.this.queueMessage(message2);
                                    }
                                } : new OnBridgeCallback() { // from class: com.github.lzyzsd.jsbridge.BridgeHelper.1.2
                                    @Override // com.github.lzyzsd.jsbridge.OnBridgeCallback
                                    public void onCallBack(String str2) {
                                    }
                                };
                                BridgeHandler bridgeHandler = !TextUtils.isEmpty(message.getHandlerName()) ? (BridgeHandler) BridgeHelper.this.messageHandlers.get(message.getHandlerName()) : BridgeHelper.this.defaultHandler;
                                if (bridgeHandler != null) {
                                    bridgeHandler.handler(message.getData(), onBridgeCallback);
                                }
                            } else {
                                ((OnBridgeCallback) BridgeHelper.this.responseCallbacks.get(responseId)).onCallBack(message.getResponseData());
                                BridgeHelper.this.responseCallbacks.remove(responseId);
                            }
                        }
                    } catch (Exception e11) {
                        Log.w(BridgeHelper.TAG, e11);
                    }
                }
            });
        }
    }

    private List<Message> getStartupMessage() {
        return this.startupMessage;
    }

    private void handlerReturnData(String str) {
        String functionFromReturnUrl = BridgeUtil.getFunctionFromReturnUrl(str);
        OnBridgeCallback onBridgeCallback = this.responseCallbacks.get(functionFromReturnUrl);
        String dataFromReturnUrl = BridgeUtil.getDataFromReturnUrl(str);
        if (onBridgeCallback != null) {
            onBridgeCallback.onCallBack(dataFromReturnUrl);
            this.responseCallbacks.remove(functionFromReturnUrl);
        }
    }

    private void loadUrl(String str) {
        this.webView.loadUrl(str);
    }

    private void loadUrl(String str, OnBridgeCallback onBridgeCallback) {
        loadUrl(str);
        this.responseCallbacks.put(BridgeUtil.parseFunctionName(str), onBridgeCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueMessage(Message message) {
        List<Message> list = this.startupMessage;
        if (list != null) {
            list.add(message);
        } else {
            dispatchMessage(message);
        }
    }

    private void setStartupMessage(List<Message> list) {
        this.startupMessage = list;
    }

    private void webViewLoadLocalJs() throws Throwable {
        loadUrl("javascript:" + BridgeUtil.assetFile2Str(this.webView.getContext(), "WebViewJavascriptBridge.js"));
    }

    public void callHandler(String str, String str2, OnBridgeCallback onBridgeCallback) {
        doSend(str, str2, onBridgeCallback);
    }

    public void onPageFinished() throws Throwable {
        webViewLoadLocalJs();
        if (getStartupMessage() != null) {
            Iterator<Message> it = getStartupMessage().iterator();
            while (it.hasNext()) {
                dispatchMessage(it.next());
            }
            setStartupMessage(null);
        }
    }

    public void registerHandler(String str, BridgeHandler bridgeHandler) {
        if (bridgeHandler != null) {
            this.messageHandlers.put(str, bridgeHandler);
        }
    }

    @Override // com.github.lzyzsd.jsbridge.WebViewJavascriptBridge
    public void sendToWeb(String str) {
        sendToWeb(str, (OnBridgeCallback) null);
    }

    @Override // com.github.lzyzsd.jsbridge.WebViewJavascriptBridge
    public void sendToWeb(String str, OnBridgeCallback onBridgeCallback) {
        doSend(null, str, onBridgeCallback);
    }

    @Override // com.github.lzyzsd.jsbridge.WebViewJavascriptBridge
    public void sendToWeb(String str, Object... objArr) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            loadUrl(String.format(BridgeUtil.JAVASCRIPT_STR, String.format(str, objArr)));
        }
    }

    public void setDefaultHandler(BridgeHandler bridgeHandler) {
        this.defaultHandler = bridgeHandler;
    }

    public boolean shouldOverrideUrlLoading(String str) {
        try {
            str = URLDecoder.decode(str.replaceAll("%(?![0-9a-fA-F]{2})", "%25").replaceAll("\\+", "%2B"), "UTF-8");
        } catch (UnsupportedEncodingException e11) {
            Log.w(TAG, e11);
        }
        if (str.startsWith("yy://return/")) {
            handlerReturnData(str);
            return true;
        }
        if (!str.startsWith("yy://")) {
            return false;
        }
        flushMessageQueue();
        return true;
    }

    public void unregisterHandler(String str) {
        if (str != null) {
            this.messageHandlers.remove(str);
        }
    }
}
