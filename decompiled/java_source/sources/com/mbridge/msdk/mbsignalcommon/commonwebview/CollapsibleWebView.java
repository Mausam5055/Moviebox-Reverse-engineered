package com.mbridge.msdk.mbsignalcommon.commonwebview;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class CollapsibleWebView extends CommonWebView {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private CopyOnWriteArrayList<CommonWebView.h> f36443v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CopyOnWriteArrayList<CommonWebView.h> f36444w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CopyOnWriteArrayList<e> f36445x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f36446y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f36447z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollapsibleWebView.this.hideToolBarButton("doCollapse");
            CollapsibleWebView.this.showToolBarButton("doSpand");
            CollapsibleWebView.this.d();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollapsibleWebView.this.hideToolBarButton("doSpand");
            CollapsibleWebView.this.showToolBarButton("doCollapse");
            CollapsibleWebView.this.e();
        }
    }

    class c implements CommonWebView.i {
        c() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView.i
        public void a(String str) {
            CollapsibleWebView collapsibleWebView = CollapsibleWebView.this;
            collapsibleWebView.b(collapsibleWebView.f36463j, str);
        }
    }

    class d extends WebViewClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Boolean f36451a = Boolean.FALSE;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f36452b = "";

        d() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (this.f36451a.booleanValue()) {
                return;
            }
            CollapsibleWebView.this.a((View) webView, str);
            this.f36451a = Boolean.FALSE;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f36452b = str;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            HashMap map = new HashMap();
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "error");
            map.put("url", str2);
            map.put(TrackingKey.DESCRIPTION, str);
            if (!this.f36451a.booleanValue() && this.f36452b.equals(str2)) {
                this.f36451a = Boolean.TRUE;
                CollapsibleWebView.this.b(webView, map);
            }
            CollapsibleWebView.this.a(webView, map);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            HashMap map = new HashMap();
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "http");
            String str = webResourceRequest.getUrl() + "";
            map.put("url", str);
            map.put("statusCode", webResourceResponse.getStatusCode() + "");
            map.put(TrackingKey.DESCRIPTION, "http error");
            if (!this.f36451a.booleanValue() && (this.f36452b.equals(str) || TextUtils.isEmpty(this.f36452b))) {
                this.f36451a = Boolean.TRUE;
                CollapsibleWebView.this.b(webView, map);
            }
            CollapsibleWebView.this.a(webView, map);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            HashMap map = new HashMap();
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "ssl");
            map.put("url", sslError.getUrl());
            map.put(TrackingKey.DESCRIPTION, "ssl error");
            if (!this.f36451a.booleanValue()) {
                if (this.f36452b.equals(sslError.getUrl() + "")) {
                    this.f36451a = Boolean.TRUE;
                    CollapsibleWebView.this.b(webView, map);
                }
            }
            CollapsibleWebView.this.a(webView, map);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            o0.b("CollapsibleWebView", "WebView called onRenderProcessGone");
            return true;
        }
    }

    public interface e {
        void a(View view, String str);

        void a(View view, Map<String, String> map);

        void b(View view, String str);

        void b(View view, Map<String, String> map);
    }

    public CollapsibleWebView(Context context) {
        super(context);
    }

    public CollapsibleWebView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CollapsibleWebView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, String str) {
        Iterator<e> it = this.f36445x.iterator();
        while (it.hasNext()) {
            it.next().a(view, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, Map<String, String> map) {
        Iterator<e> it = this.f36445x.iterator();
        while (it.hasNext()) {
            it.next().a(view, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view, String str) {
        Iterator<e> it = this.f36445x.iterator();
        while (it.hasNext()) {
            it.next().b(view, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view, Map<String, String> map) {
        Iterator<e> it = this.f36445x.iterator();
        while (it.hasNext()) {
            it.next().b(view, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Iterator<CommonWebView.h> it = this.f36443v.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Iterator<CommonWebView.h> it = this.f36444w.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    private ToolBar.b getCollapseButton() {
        return new ToolBar.b("doCollapse").a(false).a("mbridge_arrow_down_white_blackbg").a(new a());
    }

    private ToolBar.b getExpandButton() {
        return new ToolBar.b("doSpand").a("mbridge_arrow_up_black").a(new b());
    }

    public String getCollapseIconName() {
        return this.f36446y;
    }

    public String getExpandIconName() {
        return this.f36447z;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView
    public void init() {
        super.init();
        this.f36443v = new CopyOnWriteArrayList<>();
        this.f36444w = new CopyOnWriteArrayList<>();
        this.f36445x = new CopyOnWriteArrayList<>();
        this.f36446y = "mbridge_arrow_down_white_blackbg";
        this.f36447z = "mbridge_arrow_up_white";
        useDeeplink();
        initWebViewListener();
        useProgressBar();
        ArrayList<ToolBar.b> arrayList = new ArrayList<>();
        arrayList.add(getCollapseButton());
        arrayList.add(getExpandButton());
        useDefaultToolBar();
        useCustomizedToolBar(arrayList, true);
    }

    public void initWebViewListener() {
        setPageLoadTimtoutListener(new c());
        setPageLoadTimtout(CommonWebView.DEFAULT_JUMP_TIMEOUT);
        addWebViewClient(new d());
    }

    public void setCollapseIconName(String str) {
        this.f36446y = str;
    }

    public void setCollapseListener(CommonWebView.h hVar) {
        this.f36443v.add(hVar);
    }

    public void setCustomizedToolBarMarginWidthPixel(int i11, int i12, int i13, int i14) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f36456c.getLayoutParams();
        layoutParams.setMargins(i11, i12, i13, i14);
        this.f36456c.setLayoutParams(layoutParams);
    }

    public void setExpandIconName(String str) {
        this.f36447z = str;
    }

    public void setExpandListener(CommonWebView.h hVar) {
        this.f36444w.add(hVar);
    }

    public void setPageLoadListener(e eVar) {
        this.f36445x.add(eVar);
    }
}
