package com.github.lzyzsd.jsbridge;

import android.content.Context;
import android.webkit.WebView;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class BridgeUtil {
    static final String CALLBACK_ID_FORMAT = "JAVA_CB_%s";
    static final String EMPTY_STR = "";
    public static final String JAVASCRIPT_STR = "javascript:%s";
    public static final String JAVA_SCRIPT = "WebViewJavascriptBridge.js";
    static final String JS_FETCH_QUEUE_FROM_JAVA = "javascript:WebViewJavascriptBridge._fetchQueue();";
    static final String JS_HANDLE_MESSAGE_FROM_JAVA = "javascript:WebViewJavascriptBridge._handleMessageFromNative(%s);";
    public static final String JS_NAVIGATOR_HOST = "javascript:window.navigator.hostInfo = { platform: 'Android',version: '%s' }";
    static final String SPLIT_MARK = "/";
    static final String UNDERLINE_STR = "_";
    static final String YY_FETCH_QUEUE = "yy://return/_fetchQueue/";
    static final String YY_OVERRIDE_SCHEMA = "yy://";
    static final String YY_RETURN_DATA = "yy://return/";

    /* JADX WARN: Code duplicated, block: B:45:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String assetFile2Str(Context context, String str) throws Throwable {
        InputStream inputStreamOpen;
        String line;
        InputStream inputStream = null;
        try {
            inputStreamOpen = context.getAssets().open(str);
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
                    StringBuilder sb2 = new StringBuilder();
                    do {
                        line = bufferedReader.readLine();
                        if (line != null && !line.matches("^\\s*\\/\\/.*")) {
                            sb2.append(line);
                        }
                    } while (line != null);
                    bufferedReader.close();
                    inputStreamOpen.close();
                    String string = sb2.toString();
                    try {
                        inputStreamOpen.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                    return string;
                } catch (Exception e12) {
                    e = e12;
                    e.printStackTrace();
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = inputStreamOpen;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e15) {
            e = e15;
            inputStreamOpen = null;
        } catch (Throwable th3) {
            th = th3;
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public static String getDataFromReturnUrl(String str) {
        return "";
    }

    public static String getFunctionFromReturnUrl(String str) {
        return "";
    }

    public static String parseFunctionName(String str) {
        return "";
    }

    public static void webViewLoadJs(WebView webView, String str) {
        webView.loadUrl("javascript:" + (("var newscript = document.createElement(\"script\");newscript.src=\"" + str + "\";") + "document.scripts[0].parentNode.insertBefore(newscript,document.scripts[0]);"));
    }

    public static void webViewLoadLocalJs(WebView webView, String str) throws Throwable {
        webView.loadUrl("javascript:" + assetFile2Str(webView.getContext(), str));
    }
}
