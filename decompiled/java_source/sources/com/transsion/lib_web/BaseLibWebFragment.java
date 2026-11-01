package com.transsion.lib_web;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.u;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.lib_web.BaseLibWebFragment;
import com.transsion.lib_web.cache.TWebViewAdCacheManager;
import com.transsion.lib_web.domain.DomPerformance;
import com.transsion.lib_web.domain.LoadInfoStats;
import com.transsion.lib_web.domain.LoadStatus;
import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.lib_web.download_render.utils.RenderSource;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gm.h;
import gm.i;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import nh.m;
import nh.n;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 Ñ\u00012\u00020\u00012\u00020\u0002:\u0004\u0086\u0001\u008a\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u0004J\u0019\u0010\f\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0003¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0013\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\rJ\u0019\u0010\u0015\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\rJ\u0019\u0010\u0016\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\rJ\u0019\u0010\u0017\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\rJ\u000f\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001b\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0003¢\u0006\u0004\b\u001b\u0010\rJ\u0017\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010#\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010\u001c2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010%H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\bH\u0002¢\u0006\u0004\b)\u0010\u0004J\u0019\u0010+\u001a\u00020\u000e2\b\u0010*\u001a\u0004\u0018\u00010\u001cH\u0002¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\u001c¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b/\u0010\u0007J\u0015\u00102\u001a\u00020\b2\u0006\u00101\u001a\u000200¢\u0006\u0004\b2\u00103J\u0019\u00106\u001a\u00020\b2\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b6\u00107J-\u0010=\u001a\u0004\u0018\u00010<2\u0006\u00109\u001a\u0002082\b\u0010;\u001a\u0004\u0018\u00010:2\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b=\u0010>J!\u0010@\u001a\u00020\b2\u0006\u0010?\u001a\u00020<2\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\bH\u0016¢\u0006\u0004\bB\u0010\u0004J\u000f\u0010C\u001a\u00020\bH\u0016¢\u0006\u0004\bC\u0010\u0004J\u001f\u0010H\u001a\u00020\b2\u0006\u0010E\u001a\u00020D2\u0006\u0010G\u001a\u00020FH\u0016¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\bH\u0016¢\u0006\u0004\bJ\u0010\u0004J\u0017\u0010L\u001a\u00020\b2\u0006\u0010K\u001a\u00020\u0005H&¢\u0006\u0004\bL\u0010\rJ\u0019\u0010O\u001a\u00020\b2\b\u0010N\u001a\u0004\u0018\u00010MH\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u000eH\u0004¢\u0006\u0004\bQ\u0010\u001aJC\u0010Y\u001a\u00020\b2\u0006\u0010S\u001a\u00020R2\u0006\u0010T\u001a\u00020\u001c2\b\u0010*\u001a\u0004\u0018\u00010\u001c2\b\u0010U\u001a\u0004\u0018\u00010\u001c2\u0006\u0010W\u001a\u00020V2\u0006\u0010X\u001a\u00020\u001cH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\u001cH\u0016¢\u0006\u0004\b[\u0010.J\u000f\u0010\\\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\\\u0010\u001aJ)\u0010_\u001a\u00020\b2\u0006\u0010?\u001a\u00020%2\u0006\u0010*\u001a\u00020\u001c2\b\u0010^\u001a\u0004\u0018\u00010]H\u0016¢\u0006\u0004\b_\u0010`J\u001f\u0010a\u001a\u00020\b2\u0006\u0010?\u001a\u00020%2\u0006\u0010*\u001a\u00020\u001cH\u0016¢\u0006\u0004\ba\u0010bJ'\u0010g\u001a\u00020\b2\u0006\u0010?\u001a\u00020%2\u0006\u0010d\u001a\u00020c2\u0006\u0010f\u001a\u00020eH\u0016¢\u0006\u0004\bg\u0010hJ5\u0010k\u001a\u00020\b2\b\u0010?\u001a\u0004\u0018\u00010%2\u0006\u0010d\u001a\u00020!2\b\u0010i\u001a\u0004\u0018\u00010\u001c2\b\u0010j\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\bk\u0010lJ)\u0010n\u001a\u00020\b2\b\u0010?\u001a\u0004\u0018\u00010%2\u0006\u0010d\u001a\u00020c2\u0006\u0010i\u001a\u00020mH\u0016¢\u0006\u0004\bn\u0010oJ\u001f\u0010p\u001a\u00020\b2\u0006\u0010?\u001a\u00020%2\u0006\u0010U\u001a\u00020\u001cH\u0016¢\u0006\u0004\bp\u0010bJ\u001f\u0010r\u001a\u00020\b2\u0006\u0010?\u001a\u00020%2\u0006\u0010q\u001a\u00020!H\u0016¢\u0006\u0004\br\u0010sJ#\u0010v\u001a\u00020\b2\b\u0010?\u001a\u0004\u0018\u00010<2\b\u0010u\u001a\u0004\u0018\u00010tH\u0016¢\u0006\u0004\bv\u0010wJ\u000f\u0010x\u001a\u00020\bH\u0016¢\u0006\u0004\bx\u0010\u0004J!\u0010z\u001a\u00020\b2\b\u0010*\u001a\u0004\u0018\u00010\u001c2\u0006\u0010y\u001a\u00020VH\u0016¢\u0006\u0004\bz\u0010{J+\u0010|\u001a\u00020\b2\b\u0010*\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\"\u001a\u00020!2\b\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b|\u0010}J\u0018\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\u007f0~H\u0016¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u0011\u0010\u0082\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0082\u0001\u0010\u0004J\u001a\u0010\u0084\u0001\u001a\u00020\b2\u0007\u0010\u0083\u0001\u001a\u00020\u000eH\u0016¢\u0006\u0005\b\u0084\u0001\u0010\u0011R\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R*\u0010\u0090\u0001\u001a\u00030\u0089\u00018\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R,\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R)\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b\u0099\u0001\u0010\u009a\u0001\u001a\u0005\b\u009b\u0001\u0010.\"\u0005\b\u009c\u0001\u0010\u001fR*\u0010¥\u0001\u001a\u00030\u009e\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009f\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001\"\u0006\b£\u0001\u0010¤\u0001R\u001d\u0010«\u0001\u001a\u00030¦\u00018\u0006¢\u0006\u0010\n\u0006\b§\u0001\u0010¨\u0001\u001a\u0006\b©\u0001\u0010ª\u0001R\u001b\u0010®\u0001\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u001b\u0010±\u0001\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u0019\u0010´\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001b\u0010·\u0001\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001R\u0019\u0010¹\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010³\u0001R)\u0010¾\u0001\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\bº\u0001\u0010»\u0001\u001a\u0005\b¼\u0001\u0010\u0007\"\u0005\b½\u0001\u0010\rR\u0019\u0010Á\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010À\u0001R)\u0010È\u0001\u001a\u00020V8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÂ\u0001\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0006\bÆ\u0001\u0010Ç\u0001R\u001d\u0010Î\u0001\u001a\u00030É\u00018\u0006¢\u0006\u0010\n\u0006\bÊ\u0001\u0010Ë\u0001\u001a\u0006\bÌ\u0001\u0010Í\u0001R\u0019\u0010Ð\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010À\u0001¨\u0006Ò\u0001"}, d2 = {"Lcom/transsion/lib_web/BaseLibWebFragment;", "Landroidx/fragment/app/Fragment;", "Lnh/n;", "<init>", "()V", "Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "g0", "()Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "", "initListener", "r0", "webView", "e0", "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V", "", "isHideToolBar", "q0", "(Z)V", "isRecovery", "x0", "v0", "z0", "T0", "b0", "A0", "F0", "()Z", "w0", "", "string", "f0", "(Ljava/lang/String;)V", "errorMsg", "", "errorCode", "p0", "(Ljava/lang/String;I)V", "Landroid/webkit/WebView;", "view1", "B0", "(Landroid/webkit/WebView;)V", "E0", "url", "D0", "(Ljava/lang/String;)Z", "getClassTag", "()Ljava/lang/String;", "o0", "Lgm/f;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "W0", "(Lgm/f;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "onDestroy", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onDisconnected", "bridgeWebView", "d0", "Landroid/webkit/RenderProcessGoneDetail;", "detail", "P0", "(Landroid/webkit/RenderProcessGoneDetail;)V", "Q0", "Landroidx/fragment/app/FragmentActivity;", "requireActivity", "tag", CampaignEx.JSON_KEY_TITLE, "", "contentLength", "originalUrl", "c0", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "n0", "C0", "Landroid/graphics/Bitmap;", "favicon", "L0", "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V", "K0", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "Landroid/webkit/WebResourceRequest;", "request", "Landroid/webkit/WebResourceResponse;", "errorResponse", "O0", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V", "error", "failingUrl", "M0", "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V", "Landroid/webkit/WebResourceError;", "N0", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V", "I0", "newProgress", "H0", "(Landroid/webkit/WebView;I)V", "Landroid/webkit/WebChromeClient$CustomViewCallback;", "callback", "J0", "(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V", "G0", "loadTime", "Z0", "(Ljava/lang/String;J)V", "Y0", "(Ljava/lang/String;ILjava/lang/String;)V", "", "Lcom/transsion/lib_web/zip/loader/c;", "i0", "()Ljava/util/List;", "onResume", "hidden", "onHiddenChanged", "Landroid/widget/FrameLayout;", "a", "Landroid/widget/FrameLayout;", "fullscreenContainer", "Lhm/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lhm/a;", "h0", "()Lhm/a;", "R0", "(Lhm/a;)V", "binding", "Lcom/transsion/lib_web/zip/loader/d;", "c", "Lcom/transsion/lib_web/zip/loader/d;", "m0", "()Lcom/transsion/lib_web/zip/loader/d;", "setMWebViewLoaderManager", "(Lcom/transsion/lib_web/zip/loader/d;)V", "mWebViewLoaderManager", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "getStrTitle", "X0", "strTitle", "Lcom/transsion/lib_web/domain/LoadStatus;", "e", "Lcom/transsion/lib_web/domain/LoadStatus;", "getCurrentState", "()Lcom/transsion/lib_web/domain/LoadStatus;", "S0", "(Lcom/transsion/lib_web/domain/LoadStatus;)V", "currentState", "Lcom/transsion/lib_web/LoadUrlData;", "f", "Lcom/transsion/lib_web/LoadUrlData;", "k0", "()Lcom/transsion/lib_web/LoadUrlData;", "loadUrlData", "g", "Lgm/f;", "adOpenListener", "h", "Landroid/view/View;", "webCustomView", "i", "I", "originalSystemUiVisibility", "j", "Landroid/webkit/WebChromeClient$CustomViewCallback;", "customViewCallback", CampaignEx.JSON_KEY_AD_K, "originalOrientation", "l", "Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "l0", "V0", "mWebView", "m", "Z", "isRenderProcessGone", "n", "J", "getFirstLoadStartTime", "()J", "setFirstLoadStartTime", "(J)V", "firstLoadStartTime", "Lcom/transsion/lib_web/domain/LoadInfoStats;", "o", "Lcom/transsion/lib_web/domain/LoadInfoStats;", "j0", "()Lcom/transsion/lib_web/domain/LoadInfoStats;", "loadInfoStats", TtmlNode.TAG_P, "isAlreadyLoadUrl", CampaignEx.JSON_KEY_AD_Q, "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class BaseLibWebFragment extends Fragment implements n {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final a f46107q = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private FrameLayout fullscreenContainer;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public hm.a binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.lib_web.zip.loader.d mWebViewLoaderManager;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private gm.f adOpenListener;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private View webCustomView;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int originalSystemUiVisibility;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private WebChromeClient.CustomViewCallback customViewCallback;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private BridgeWebView mWebView;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isRenderProcessGone;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private long firstLoadStartTime;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isAlreadyLoadUrl;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String strTitle = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private LoadStatus currentState = LoadStatus.INIT;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final LoadUrlData loadUrlData = new LoadUrlData(null, RenderSource.INNER, 1, null);

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int originalOrientation = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final LoadInfoStats loadInfoStats = new LoadInfoStats();

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final class b {
        public b() {
        }

        @JavascriptInterface
        public final void reportLoadError(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            i.f63883a.c("reportLoadError: " + errorMsg);
            DomPerformance domPerformance = new DomPerformance();
            domPerformance.setErrorMsg(errorMsg);
            BaseLibWebFragment.this.getLoadInfoStats().setDom_performance(domPerformance);
        }

        @JavascriptInterface
        public final void reportLoadStats(String json) {
            Intrinsics.h(json, "json");
            i.f63883a.c("reportLoadStats: " + json);
            com.transsion.lib_web.download_render.utils.a.f46185a.r(BaseLibWebFragment.this.getLoadUrlData().getOriginUrl());
            try {
                DomPerformance domPerformance = new DomPerformance();
                JSONObject jSONObject = new JSONObject(json);
                domPerformance.setDnsLookup(Long.valueOf(jSONObject.optLong("dnsLookup")));
                domPerformance.setTcpConnect(Long.valueOf(jSONObject.optLong("tcpConnect")));
                domPerformance.setRequestTime(Long.valueOf(jSONObject.optLong("requestTime")));
                domPerformance.setResponseTime(Long.valueOf(jSONObject.optLong("responseTime")));
                domPerformance.setDomLoading(Long.valueOf(jSONObject.optLong("domLoading")));
                domPerformance.setDomInteractive(Long.valueOf(jSONObject.optLong("domInteractive")));
                domPerformance.setDomComplete(Long.valueOf(jSONObject.optLong("domComplete")));
                domPerformance.setLoadEventTime(Long.valueOf(jSONObject.optLong("loadEventTime")));
                domPerformance.setTotalLoadTime(Long.valueOf(jSONObject.optLong("totalLoadTime")));
                domPerformance.setReadyState(jSONObject.optString("readyState"));
                domPerformance.setSuccess(Boolean.valueOf(jSONObject.optBoolean(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS)));
                BaseLibWebFragment.this.getLoadInfoStats().setDom_performance(domPerformance);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public static final class c extends u {
        c() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            BridgeWebView mWebView = BaseLibWebFragment.this.getMWebView();
            if (mWebView == null || !mWebView.canGoBack()) {
                BaseLibWebFragment.this.requireActivity().finish();
                return;
            }
            BridgeWebView mWebView2 = BaseLibWebFragment.this.getMWebView();
            if (mWebView2 != null) {
                mWebView2.goBack();
            }
        }
    }

    public static final class d implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f46126a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f46127b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f46128c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f46129d;

        d(BridgeWebView bridgeWebView) {
            this.f46129d = ViewConfiguration.get(bridgeWebView.getContext()).getScaledTouchSlop();
        }

        /* JADX WARN: Code duplicated, block: B:20:0x005b  */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v11, MotionEvent event) {
            Intrinsics.h(v11, "v");
            Intrinsics.h(event, "event");
            int action = event.getAction();
            if (action == 0) {
                this.f46126a = event.getX();
                this.f46127b = event.getY();
                v11.getParent().requestDisallowInterceptTouchEvent(true);
                this.f46128c = false;
            } else if (action == 1) {
                v11.getParent().requestDisallowInterceptTouchEvent(false);
                this.f46128c = false;
            } else if (action == 2) {
                float fAbs = Math.abs(event.getX() - this.f46126a);
                float fAbs2 = Math.abs(event.getY() - this.f46127b);
                if (!this.f46128c) {
                    int i11 = this.f46129d;
                    if (fAbs > i11 || fAbs2 > i11) {
                        this.f46128c = true;
                        if (fAbs > fAbs2 * 1.2f) {
                            v11.getParent().requestDisallowInterceptTouchEvent(false);
                        } else {
                            v11.getParent().requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            } else if (action == 3) {
                v11.getParent().requestDisallowInterceptTouchEvent(false);
                this.f46128c = false;
            }
            return false;
        }
    }

    public static final class e extends WebChromeClient {
        e() {
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            super.onHideCustomView();
            BaseLibWebFragment.this.G0();
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView view, int i11) {
            Intrinsics.h(view, "view");
            super.onProgressChanged(view, i11);
            BaseLibWebFragment.this.H0(view, i11);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView view, String title) {
            Intrinsics.h(view, "view");
            Intrinsics.h(title, "title");
            super.onReceivedTitle(view, title);
            BaseLibWebFragment.this.X0(title);
            BaseLibWebFragment.this.I0(view, title);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
            BaseLibWebFragment.this.J0(view, customViewCallback);
        }
    }

    public static final class f extends gm.g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BaseLibWebFragment f46131b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(BridgeWebView bridgeWebView, BaseLibWebFragment baseLibWebFragment) {
            super(bridgeWebView);
            this.f46131b = baseLibWebFragment;
        }

        @Override // gm.g
        @JavascriptInterface
        public void close() {
            super.close();
            FragmentActivity activity = this.f46131b.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public static final class g extends WebViewClient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BridgeWebView f46133b;

        g(BridgeWebView bridgeWebView) {
            this.f46133b = bridgeWebView;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageFinished(view, url);
            com.transsion.lib_web.download_render.utils.a aVar = com.transsion.lib_web.download_render.utils.a.f46185a;
            String originUrl = BaseLibWebFragment.this.getLoadUrlData().getOriginUrl();
            String originalUrl = view.getOriginalUrl();
            if (originalUrl == null) {
                originalUrl = "";
            }
            aVar.k(originUrl, originalUrl, this.f46133b.getProgress());
            BaseLibWebFragment.this.K0(view, url);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap bitmap) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageStarted(view, url, bitmap);
            BaseLibWebFragment.this.L0(view, url, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i11, String str, String str2) {
            super.onReceivedError(webView, i11, str, str2);
            BaseLibWebFragment.this.M0(webView, i11, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(error, "error");
            super.onReceivedError(view, request, error);
            BaseLibWebFragment.this.N0(view, request, error);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(errorResponse, "errorResponse");
            super.onReceivedHttpError(view, request, errorResponse);
            BaseLibWebFragment.this.O0(view, request, errorResponse);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            BaseLibWebFragment.this.isRenderProcessGone = true;
            BaseLibWebFragment.this.S0(LoadStatus.FAILED);
            if (BaseLibWebFragment.this.getMWebView() == webView) {
                BaseLibWebFragment.this.V0(null);
            }
            boolean zC = gm.n.f63887a.c(webView, renderProcessGoneDetail, BaseLibWebFragment.this.getClassTag() + "_visible");
            BaseLibWebFragment.this.P0(renderProcessGoneDetail);
            return zC;
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            WebResourceResponse webResourceResponseA;
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            com.transsion.lib_web.zip.loader.d mWebViewLoaderManager = BaseLibWebFragment.this.getMWebViewLoaderManager();
            return (mWebViewLoaderManager == null || (webResourceResponseA = mWebViewLoaderManager.a(request)) == null) ? super.shouldInterceptRequest(view, request) : webResourceResponseA;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            String string;
            Uri url;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
                string = "";
            }
            if (!Intrinsics.c(string, "yy://__QUEUE_MESSAGE__")) {
                BaseLibWebFragment.this.getLoadUrlData().setOriginUrl(string);
            }
            if (h.f63882a.a(string, BaseLibWebFragment.this.getContext())) {
                return true;
            }
            if (!StringsKt.W(string, "http", false, 2, null) || BaseLibWebFragment.this.adOpenListener == null) {
                return super.shouldOverrideUrlLoading(webView, webResourceRequest);
            }
            gm.f fVar = BaseLibWebFragment.this.adOpenListener;
            if (fVar == null) {
                return true;
            }
            fVar.a(string);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            if (!Intrinsics.c(url, "yy://__QUEUE_MESSAGE__")) {
                BaseLibWebFragment.this.getLoadUrlData().setOriginUrl(url);
            }
            if (h.f63882a.a(url, BaseLibWebFragment.this.getContext())) {
                return true;
            }
            if (!StringsKt.W(url, "http", false, 2, null) || BaseLibWebFragment.this.adOpenListener == null) {
                return super.shouldOverrideUrlLoading(view, url);
            }
            gm.f fVar = BaseLibWebFragment.this.adOpenListener;
            if (fVar == null) {
                return true;
            }
            fVar.a(url);
            return true;
        }
    }

    private final void A0() {
        Context context = getContext();
        if (context != null) {
            List listQ = CollectionsKt.q(new im.b(context, this.loadUrlData), new im.d(context, this.loadUrlData), new im.a(context, this.loadUrlData), new im.c(context, this.loadUrlData));
            listQ.addAll(i0());
            i.f63883a.a("DR_", "<initWebViewFileCacheLoader> loaders.size:" + listQ.size());
            this.mWebViewLoaderManager = new com.transsion.lib_web.zip.loader.d(context, listQ);
        }
    }

    private final void B0(WebView view1) {
        if (view1 != null) {
            view1.evaluateJavascript("\n              (function() {\n                window.addEventListener('load',\n                function() {\n                    try {\n                        const intervalId = setInterval(function() {\n                            var timing = window.performance.timing;\n                            if (timing.loadEventEnd <= 0) {\n                                console.log(timing.loadEventEnd);\n                                return;\n                            }\n            \n                            var stats = {\n                                // 基本加载时间\n                                dnsLookup: timing.domainLookupEnd - timing.domainLookupStart,\n                                tcpConnect: timing.connectEnd - timing.connectStart,\n                                requestTime: timing.responseStart - timing.requestStart,\n                                responseTime: timing.responseEnd - timing.responseStart,\n            \n                                // DOM相关时间\n                                domLoading: timing.domLoading - timing.navigationStart,\n                                domInteractive: timing.domInteractive - timing.navigationStart,\n                                domComplete: timing.domComplete - timing.navigationStart,\n            \n                                // 整体加载时间\n                                loadEventTime: timing.loadEventEnd - timing.loadEventStart,\n                                totalLoadTime: timing.loadEventEnd - timing.navigationStart,\n            \n                                // 加载状态\n                                readyState: document.readyState,\n                                success: document.readyState === 'complete'\n                            };\n                            clearInterval(intervalId)\n                            console.log(timing.loadEventEnd)\n                            console.warn(JSON.stringify(stats))\n                            // 如果有Android接口可用，则通过接口报告\n                            if (window.MBPreDownloadAndroidInterface) {\n                                window.MBPreDownloadAndroidInterface.reportLoadStats(JSON.stringify(stats));\n                            } else {\n                                console.warn(window.MBPreDownloadAndroidInterface);\n                                console.warn(stats);\n                            }\n            \n                        },\n                        1000);\n                    } catch(e) {\n                        if (window.MBPreDownloadAndroidInterface) {\n                            window.MBPreDownloadAndroidInterface.reportLoadError(e.message);\n                        } else {\n                            console.error('Error collecting load stats:', e);\n                        }\n                    }\n                })\n            \n            })()\n            ", null);
        }
    }

    private final boolean D0(String url) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean z10 = false;
            if (url != null && url.length() != 0) {
                Uri uri = Uri.parse(url);
                Intrinsics.g(uri, "parse(this)");
                String queryParameter = uri.getQueryParameter("is_lazy_load");
                if (queryParameter != null && StringsKt.H(queryParameter, "true", true)) {
                    z10 = true;
                }
                objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(z10));
                if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                    objM454constructorimpl = Boolean.FALSE;
                }
                return ((Boolean) objM454constructorimpl).booleanValue();
            }
            return false;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void E0() {
        if (this.isAlreadyLoadUrl) {
            i.f63883a.e("loadUrl() --> 已经加载过了，不再重复加载");
            return;
        }
        this.isAlreadyLoadUrl = true;
        i.f63883a.e("loadUrl() --> 加载页面 --> url = " + n0());
        BridgeWebView bridgeWebViewO0 = o0();
        if (bridgeWebViewO0 != null) {
            bridgeWebViewO0.loadUrl(n0());
        }
    }

    private final boolean F0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getBoolean(WebConstants.FIELD_LOAD_URL_ONLY, false);
        }
        return false;
    }

    private final void T0(BridgeWebView webView) {
        if (webView != null) {
            webView.setDownloadListener(new DownloadListener() { // from class: gm.a
                @Override // android.webkit.DownloadListener
                public final void onDownloadStart(String str, String str2, String str3, String str4, long j11) {
                    BaseLibWebFragment.U0(this.f63876a, str, str2, str3, str4, j11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(BaseLibWebFragment baseLibWebFragment, String str, String str2, String str3, String str4, long j11) {
        if (baseLibWebFragment.F0()) {
            return;
        }
        Intrinsics.e(str);
        if (!StringsKt.G(str, ".apk", false, 2, null) && !StringsKt.G(str, ".APK", false, 2, null) && !TextUtils.equals(str4, "application/vnd.android.package-archive")) {
            FragmentActivity fragmentActivityRequireActivity = baseLibWebFragment.requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            String str5 = baseLibWebFragment.strTitle;
            String strN0 = baseLibWebFragment.n0();
            if (strN0 == null) {
                strN0 = "";
            }
            baseLibWebFragment.c0(fragmentActivityRequireActivity, "web_load", str, str5, j11, strN0);
            return;
        }
        i.f63883a.e("拦截APK下载 --> mimetype = " + str4 + " --> url = " + str + " --> contentLength = " + j11 + " --> contentDisposition = " + str3 + " --> userAgent = " + str2);
    }

    private final void b0(BridgeWebView webView) {
        requireActivity().getOnBackPressedDispatcher().i(this, new c());
    }

    private final void e0(BridgeWebView webView) {
        Bundle arguments = getArguments();
        if (!(arguments != null ? arguments.getBoolean("nested_scroll_intercept", false) : false) || webView == null) {
            return;
        }
        webView.setOnTouchListener(new d(webView));
    }

    private final void f0(String string) {
        this.currentState = LoadStatus.SUCCESS;
        Z0(string, System.currentTimeMillis() - this.firstLoadStartTime);
    }

    private final BridgeWebView g0() {
        return C0() ? TWebViewAdCacheManager.f46136a.f(n0(), getContext()) : com.transsion.lib_web.cache.a.f46142a.c(n0(), getContext());
    }

    private final void initListener() {
        h0().f64530b.setOnClickListener(new View.OnClickListener() { // from class: gm.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseLibWebFragment.s0(this.f63877a, view);
            }
        });
        h0().f64531c.setOnClickListener(new View.OnClickListener() { // from class: gm.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseLibWebFragment.t0(this.f63878a, view);
            }
        });
        h0().f64532d.setOnClickListener(new View.OnClickListener() { // from class: gm.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseLibWebFragment.u0(this.f63879a, view);
            }
        });
    }

    private final void p0(String errorMsg, int errorCode) {
        this.currentState = LoadStatus.FAILED;
        Y0(n0(), errorCode, errorMsg);
    }

    private final void q0(boolean isHideToolBar) {
        h0();
        if (isHideToolBar) {
            h0().f64533e.setVisibility(8);
        } else {
            h0().f64533e.setVisibility(0);
        }
    }

    private final void r0() {
        Bundle arguments = getArguments();
        boolean z10 = arguments != null ? arguments.getBoolean(WebConstants.FIELD_STATUS_BAR_HIDDEN, false) : false;
        Bundle arguments2 = getArguments();
        boolean z11 = arguments2 != null ? arguments2.getBoolean(WebConstants.FIELD_TOOL_BAR_HIDDEN, false) : false;
        Bundle arguments3 = getArguments();
        int i11 = arguments3 != null ? arguments3.getInt(WebConstants.BOTTOM_MARGIN, 0) : 0;
        hm.a aVarH0 = h0();
        aVarH0.getRoot().setFitsSystemWindows(!z10);
        if (i11 > 0) {
            ViewGroup.LayoutParams layoutParams = aVarH0.f64537i.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = i11;
            aVarH0.f64537i.setLayoutParams(bVar);
        }
        e0(o0());
        boolean zA = gm.e.f63880a.a(n0());
        q0(z11 || zA);
        i.f63883a.c(getClassTag() + " --> initLayout() --> statusBarHide = " + z10 + " --> isFieldToolBarHidden = " + z11 + " -- bottomMargin = " + i11 + " --> hideNavigationBar = " + zA);
        Bundle arguments4 = getArguments();
        if (arguments4 != null ? arguments4.getBoolean(WebConstants.NEED_HEADER, false) : false) {
            View view = h0().f64535g;
            view.getLayoutParams().height = a0.a(80.0f);
            Bundle arguments5 = getArguments();
            int i12 = arguments5 != null ? arguments5.getInt(WebConstants.HEADER_BG) : 0;
            if (i12 != 0) {
                view.setBackgroundResource(i12);
            }
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(BaseLibWebFragment baseLibWebFragment, View view) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        FragmentActivity activity = baseLibWebFragment.getActivity();
        if (activity == null || (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) == null) {
            return;
        }
        onBackPressedDispatcher.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(BaseLibWebFragment baseLibWebFragment, View view) {
        FragmentActivity activity = baseLibWebFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(BaseLibWebFragment baseLibWebFragment, View view) {
        baseLibWebFragment.loadInfoStats.setReload(true);
        BridgeWebView bridgeWebViewO0 = baseLibWebFragment.o0();
        if (bridgeWebViewO0 != null) {
            bridgeWebViewO0.reload();
        }
    }

    private final void v0(BridgeWebView webView) {
        if (webView != null) {
            webView.setWebChromeClient(new e());
        }
    }

    private final void w0(BridgeWebView webView) {
        if (webView != null) {
            webView.addJavascriptInterface(new b(), "MBPreDownloadAndroidInterface");
        }
    }

    private final void x0(boolean isRecovery) {
        w0(o0());
        v0(o0());
        z0(o0());
        T0(o0());
        BridgeWebView bridgeWebView = this.mWebView;
        if (bridgeWebView != null) {
            d0(bridgeWebView);
        }
        if (!isRecovery) {
            b0(o0());
        }
        A0();
        BridgeWebView bridgeWebViewO0 = o0();
        if (bridgeWebViewO0 != null) {
            bridgeWebViewO0.addJavascriptInterface(new f(bridgeWebViewO0, this), "MbOkSpinJsBridge");
        }
        FileDownloadTaskManager.f46147a.h().a(n0());
        this.loadUrlData.setOriginUrl(n0());
        if (D0(n0())) {
            i.f63883a.e("initWebView() --> 懒加载，不执行加载数据操作");
        } else {
            E0();
        }
    }

    static /* synthetic */ void y0(BaseLibWebFragment baseLibWebFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initWebView");
        }
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        baseLibWebFragment.x0(z10);
    }

    private final void z0(BridgeWebView webView) {
        if (webView != null) {
            webView.setWebViewClient(new g(webView));
        }
    }

    public boolean C0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getBoolean("isAd");
        }
        return false;
    }

    public void G0() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.f(decorView, "null cannot be cast to non-null type android.widget.FrameLayout");
        ((FrameLayout) decorView).removeView(this.fullscreenContainer);
        this.fullscreenContainer = null;
        this.webCustomView = null;
        ImmersionBar.with(activity).hideBar(BarHide.FLAG_SHOW_BAR).init();
        activity.setRequestedOrientation(this.originalOrientation);
        WebChromeClient.CustomViewCallback customViewCallback = this.customViewCallback;
        Intrinsics.e(customViewCallback);
        customViewCallback.onCustomViewHidden();
        this.customViewCallback = null;
    }

    public void H0(WebView view, int newProgress) {
        int i11;
        Intrinsics.h(view, "view");
        ProgressBar progressBar = h0().f64534f;
        if (newProgress == 100) {
            i11 = 8;
        } else {
            h0().f64534f.setProgress(newProgress);
            i11 = 0;
        }
        progressBar.setVisibility(i11);
    }

    public void I0(WebView view, String title) {
        Intrinsics.h(view, "view");
        Intrinsics.h(title, "title");
        h0().f64536h.setText(title);
    }

    public void J0(View view, WebChromeClient.CustomViewCallback callback) {
        if (this.webCustomView != null) {
            if (callback != null) {
                callback.onCustomViewHidden();
                return;
            }
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        this.webCustomView = view;
        this.originalSystemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
        this.originalOrientation = activity.getRequestedOrientation();
        this.customViewCallback = callback;
        View decorView = activity.getWindow().getDecorView();
        FrameLayout frameLayout = decorView instanceof FrameLayout ? (FrameLayout) decorView : null;
        FrameLayout frameLayout2 = new FrameLayout(activity);
        frameLayout2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        frameLayout2.addView(this.webCustomView, new FrameLayout.LayoutParams(-1, -1));
        this.fullscreenContainer = frameLayout2;
        if (frameLayout != null) {
            frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        }
        ImmersionBar.with(activity).hideBar(BarHide.FLAG_HIDE_BAR).init();
        activity.setRequestedOrientation(6);
    }

    public void K0(WebView view, String url) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        i.f63883a.c("onWebViewClientPageFinished " + url);
        if (this.currentState == LoadStatus.LOADING) {
            f0(url);
        }
    }

    public void L0(WebView view, String url, Bitmap favicon) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        i.f63883a.c("onWebViewClientPageStarted " + url);
        this.currentState = LoadStatus.LOADING;
        this.firstLoadStartTime = System.currentTimeMillis();
        B0(view);
    }

    public void M0(WebView view, int request, String error, String failingUrl) {
        if (this.currentState == LoadStatus.LOADING) {
            p0("WebResourceError: " + error, -1);
        }
    }

    public void N0(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.h(request, "request");
        Intrinsics.h(error, "error");
        if (this.currentState == LoadStatus.LOADING) {
            p0(error.getDescription().toString(), error.getErrorCode());
        }
    }

    public void O0(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        Intrinsics.h(view, "view");
        Intrinsics.h(request, "request");
        Intrinsics.h(errorResponse, "errorResponse");
        if (this.currentState == LoadStatus.LOADING && request.isForMainFrame()) {
            p0(errorResponse.getReasonPhrase(), errorResponse.getStatusCode());
        }
    }

    public void P0(RenderProcessGoneDetail detail) {
    }

    protected final boolean Q0() {
        BridgeWebView bridgeWebViewG0;
        if (!this.isRenderProcessGone) {
            BridgeWebView bridgeWebView = this.mWebView;
            if (bridgeWebView == null) {
                return false;
            }
            bridgeWebView.reload();
            return true;
        }
        if (!isAdded() || getView() == null || (bridgeWebViewG0 = g0()) == null) {
            return false;
        }
        this.isRenderProcessGone = false;
        this.currentState = LoadStatus.INIT;
        this.isAlreadyLoadUrl = false;
        this.mWebView = bridgeWebViewG0;
        h0().f64537i.addView(bridgeWebViewG0);
        e0(bridgeWebViewG0);
        x0(true);
        return true;
    }

    public final void R0(hm.a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        this.binding = aVar;
    }

    public final void S0(LoadStatus loadStatus) {
        Intrinsics.h(loadStatus, "<set-?>");
        this.currentState = loadStatus;
    }

    public final void V0(BridgeWebView bridgeWebView) {
        this.mWebView = bridgeWebView;
    }

    public final void W0(gm.f listener) {
        Intrinsics.h(listener, "listener");
        this.adOpenListener = listener;
    }

    public final void X0(String str) {
        this.strTitle = str;
    }

    public void Y0(String url, int errorCode, String errorMsg) {
        i.f63883a.e("trackError --> errorCode = " + errorCode + " --> url = " + url + " --> errorMsg = " + errorMsg);
        this.loadInfoStats.setError_code(Integer.valueOf(errorCode));
        this.loadInfoStats.setError_msg(errorMsg);
    }

    public void Z0(String url, long loadTime) {
        i.f63883a.e("trackEvent --> loadTime = " + loadTime + " --> url = " + url);
        this.loadInfoStats.setLoad_time(Long.valueOf(loadTime));
        if (this.currentState == LoadStatus.SUCCESS) {
            this.loadInfoStats.setLoadSuccess(true);
        }
    }

    public void c0(FragmentActivity requireActivity, String tag, String url, String title, long contentLength, String originalUrl) {
        Intrinsics.h(requireActivity, "requireActivity");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(originalUrl, "originalUrl");
    }

    public abstract void d0(BridgeWebView bridgeWebView);

    public final String getClassTag() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final hm.a h0() {
        hm.a aVar = this.binding;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.z("binding");
        return null;
    }

    public List i0() {
        return CollectionsKt.l();
    }

    /* JADX INFO: renamed from: j0, reason: from getter */
    public final LoadInfoStats getLoadInfoStats() {
        return this.loadInfoStats;
    }

    /* JADX INFO: renamed from: k0, reason: from getter */
    public final LoadUrlData getLoadUrlData() {
        return this.loadUrlData;
    }

    /* JADX INFO: renamed from: l0, reason: from getter */
    public final BridgeWebView getMWebView() {
        return this.mWebView;
    }

    /* JADX INFO: renamed from: m0, reason: from getter */
    public final com.transsion.lib_web.zip.loader.d getMWebViewLoaderManager() {
        return this.mWebViewLoaderManager;
    }

    public String n0() {
        String string;
        Bundle arguments = getArguments();
        return (arguments == null || (string = arguments.getString("url")) == null) ? "" : string;
    }

    public final BridgeWebView o0() {
        if (this.isRenderProcessGone) {
            return null;
        }
        if (this.mWebView == null) {
            this.mWebView = g0();
        }
        return this.mWebView;
    }

    @Override // nh.n
    public void onConnected() {
        n.a.a(this);
    }

    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.isAlreadyLoadUrl = C0() && TWebViewAdCacheManager.f46136a.i(n0());
        this.mWebView = o0();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        R0(hm.a.c(inflater));
        return h0().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.transsion.lib_web.download_render.utils.a.f46185a.n();
        FileDownloadTaskManager.f46147a.h().b();
        m.f70474a.m(this);
        this.adOpenListener = null;
        i.f63883a.d(getClassTag() + " --> onDestroy()");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        BridgeWebView bridgeWebView = this.mWebView;
        if (bridgeWebView != null) {
            bridgeWebView.removeJavascriptInterface("MBPreDownloadAndroidInterface");
        }
        BridgeWebView bridgeWebView2 = this.mWebView;
        if (bridgeWebView2 != null) {
            bridgeWebView2.removeJavascriptInterface("MbOkSpinJsBridge");
        }
        BridgeWebView bridgeWebView3 = this.mWebView;
        if (bridgeWebView3 != null) {
            if (C0()) {
                TWebViewAdCacheManager.f46136a.l(bridgeWebView3, n0());
            } else {
                com.transsion.lib_web.cache.a.f46142a.b(bridgeWebView3);
            }
        }
        this.mWebView = null;
    }

    @Override // nh.n
    public void onDisconnected() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        E0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        E0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (this.mWebView == null) {
            i.f63883a.d("onViewCreated() --> mWebView 为 null，设备不支持 WebView，关闭页面");
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        h0().f64537i.addView(this.mWebView);
        r0();
        initListener();
        y0(this, false, 1, null);
        m.f70474a.l(this);
    }
}
