.class public abstract Lcom/transsion/lib_web/BaseLibWebFragment;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/lib_web/BaseLibWebFragment$a;,
        Lcom/transsion/lib_web/BaseLibWebFragment$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000 \u00d1\u00012\u00020\u00012\u00020\u0002:\u0004\u0086\u0001\u008a\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u0019\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\rJ\u0019\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\rJ\u0019\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\rJ\u0019\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\rJ\u000f\u0010\u0018\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\rJ\u0017\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010\u001c2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010\'\u001a\u00020\u00082\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0004J\u0019\u0010+\u001a\u00020\u000e2\u0008\u0010*\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008+\u0010,J\r\u0010-\u001a\u00020\u001c\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008/\u0010\u0007J\u0015\u00102\u001a\u00020\u00082\u0006\u00101\u001a\u000200\u00a2\u0006\u0004\u00082\u00103J\u0019\u00106\u001a\u00020\u00082\u0008\u00105\u001a\u0004\u0018\u000104H\u0016\u00a2\u0006\u0004\u00086\u00107J-\u0010=\u001a\u0004\u0018\u00010<2\u0006\u00109\u001a\u0002082\u0008\u0010;\u001a\u0004\u0018\u00010:2\u0008\u00105\u001a\u0004\u0018\u000104H\u0016\u00a2\u0006\u0004\u0008=\u0010>J!\u0010@\u001a\u00020\u00082\u0006\u0010?\u001a\u00020<2\u0008\u00105\u001a\u0004\u0018\u000104H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0004J\u000f\u0010C\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008C\u0010\u0004J\u001f\u0010H\u001a\u00020\u00082\u0006\u0010E\u001a\u00020D2\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010J\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008J\u0010\u0004J\u0017\u0010L\u001a\u00020\u00082\u0006\u0010K\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008L\u0010\rJ\u0019\u0010O\u001a\u00020\u00082\u0008\u0010N\u001a\u0004\u0018\u00010MH\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u00020\u000eH\u0004\u00a2\u0006\u0004\u0008Q\u0010\u001aJC\u0010Y\u001a\u00020\u00082\u0006\u0010S\u001a\u00020R2\u0006\u0010T\u001a\u00020\u001c2\u0008\u0010*\u001a\u0004\u0018\u00010\u001c2\u0008\u0010U\u001a\u0004\u0018\u00010\u001c2\u0006\u0010W\u001a\u00020V2\u0006\u0010X\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010[\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008[\u0010.J\u000f\u0010\\\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\\\u0010\u001aJ)\u0010_\u001a\u00020\u00082\u0006\u0010?\u001a\u00020%2\u0006\u0010*\u001a\u00020\u001c2\u0008\u0010^\u001a\u0004\u0018\u00010]H\u0016\u00a2\u0006\u0004\u0008_\u0010`J\u001f\u0010a\u001a\u00020\u00082\u0006\u0010?\u001a\u00020%2\u0006\u0010*\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008a\u0010bJ\'\u0010g\u001a\u00020\u00082\u0006\u0010?\u001a\u00020%2\u0006\u0010d\u001a\u00020c2\u0006\u0010f\u001a\u00020eH\u0016\u00a2\u0006\u0004\u0008g\u0010hJ5\u0010k\u001a\u00020\u00082\u0008\u0010?\u001a\u0004\u0018\u00010%2\u0006\u0010d\u001a\u00020!2\u0008\u0010i\u001a\u0004\u0018\u00010\u001c2\u0008\u0010j\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008k\u0010lJ)\u0010n\u001a\u00020\u00082\u0008\u0010?\u001a\u0004\u0018\u00010%2\u0006\u0010d\u001a\u00020c2\u0006\u0010i\u001a\u00020mH\u0016\u00a2\u0006\u0004\u0008n\u0010oJ\u001f\u0010p\u001a\u00020\u00082\u0006\u0010?\u001a\u00020%2\u0006\u0010U\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008p\u0010bJ\u001f\u0010r\u001a\u00020\u00082\u0006\u0010?\u001a\u00020%2\u0006\u0010q\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008r\u0010sJ#\u0010v\u001a\u00020\u00082\u0008\u0010?\u001a\u0004\u0018\u00010<2\u0008\u0010u\u001a\u0004\u0018\u00010tH\u0016\u00a2\u0006\u0004\u0008v\u0010wJ\u000f\u0010x\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008x\u0010\u0004J!\u0010z\u001a\u00020\u00082\u0008\u0010*\u001a\u0004\u0018\u00010\u001c2\u0006\u0010y\u001a\u00020VH\u0016\u00a2\u0006\u0004\u0008z\u0010{J+\u0010|\u001a\u00020\u00082\u0008\u0010*\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\"\u001a\u00020!2\u0008\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008|\u0010}J\u0018\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u007f0~H\u0016\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u0011\u0010\u0082\u0001\u001a\u00020\u0008H\u0016\u00a2\u0006\u0005\u0008\u0082\u0001\u0010\u0004J\u001a\u0010\u0084\u0001\u001a\u00020\u00082\u0007\u0010\u0083\u0001\u001a\u00020\u000eH\u0016\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\u0011R\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R*\u0010\u0090\u0001\u001a\u00030\u0089\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001R,\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R)\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001\u001a\u0005\u0008\u009b\u0001\u0010.\"\u0005\u0008\u009c\u0001\u0010\u001fR*\u0010\u00a5\u0001\u001a\u00030\u009e\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001\"\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u001d\u0010\u00ab\u0001\u001a\u00030\u00a6\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u001b\u0010\u00ae\u0001\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u001b\u0010\u00b1\u0001\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u0019\u0010\u00b4\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001b\u0010\u00b7\u0001\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R\u0019\u0010\u00b9\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b3\u0001R)\u0010\u00be\u0001\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001\u001a\u0005\u0008\u00bc\u0001\u0010\u0007\"\u0005\u0008\u00bd\u0001\u0010\rR\u0019\u0010\u00c1\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R)\u0010\u00c8\u0001\u001a\u00020V8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001\"\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R\u001d\u0010\u00ce\u0001\u001a\u00030\u00c9\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\u001a\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R\u0019\u0010\u00d0\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0001\u0010\u00c0\u0001\u00a8\u0006\u00d2\u0001"
    }
    d2 = {
        "Lcom/transsion/lib_web/BaseLibWebFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lnh/n;",
        "<init>",
        "()V",
        "Lcom/github/lzyzsd/jsbridge/BridgeWebView;",
        "g0",
        "()Lcom/github/lzyzsd/jsbridge/BridgeWebView;",
        "",
        "initListener",
        "r0",
        "webView",
        "e0",
        "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V",
        "",
        "isHideToolBar",
        "q0",
        "(Z)V",
        "isRecovery",
        "x0",
        "v0",
        "z0",
        "T0",
        "b0",
        "A0",
        "F0",
        "()Z",
        "w0",
        "",
        "string",
        "f0",
        "(Ljava/lang/String;)V",
        "errorMsg",
        "",
        "errorCode",
        "p0",
        "(Ljava/lang/String;I)V",
        "Landroid/webkit/WebView;",
        "view1",
        "B0",
        "(Landroid/webkit/WebView;)V",
        "E0",
        "url",
        "D0",
        "(Ljava/lang/String;)Z",
        "getClassTag",
        "()Ljava/lang/String;",
        "o0",
        "Lgm/f;",
        "listener",
        "W0",
        "(Lgm/f;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "onDestroy",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "onDisconnected",
        "bridgeWebView",
        "d0",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "detail",
        "P0",
        "(Landroid/webkit/RenderProcessGoneDetail;)V",
        "Q0",
        "Landroidx/fragment/app/FragmentActivity;",
        "requireActivity",
        "tag",
        "title",
        "",
        "contentLength",
        "originalUrl",
        "c0",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V",
        "n0",
        "C0",
        "Landroid/graphics/Bitmap;",
        "favicon",
        "L0",
        "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "K0",
        "(Landroid/webkit/WebView;Ljava/lang/String;)V",
        "Landroid/webkit/WebResourceRequest;",
        "request",
        "Landroid/webkit/WebResourceResponse;",
        "errorResponse",
        "O0",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V",
        "error",
        "failingUrl",
        "M0",
        "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V",
        "Landroid/webkit/WebResourceError;",
        "N0",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V",
        "I0",
        "newProgress",
        "H0",
        "(Landroid/webkit/WebView;I)V",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "callback",
        "J0",
        "(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V",
        "G0",
        "loadTime",
        "Z0",
        "(Ljava/lang/String;J)V",
        "Y0",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "",
        "Lcom/transsion/lib_web/zip/loader/c;",
        "i0",
        "()Ljava/util/List;",
        "onResume",
        "hidden",
        "onHiddenChanged",
        "Landroid/widget/FrameLayout;",
        "a",
        "Landroid/widget/FrameLayout;",
        "fullscreenContainer",
        "Lhm/a;",
        "b",
        "Lhm/a;",
        "h0",
        "()Lhm/a;",
        "R0",
        "(Lhm/a;)V",
        "binding",
        "Lcom/transsion/lib_web/zip/loader/d;",
        "c",
        "Lcom/transsion/lib_web/zip/loader/d;",
        "m0",
        "()Lcom/transsion/lib_web/zip/loader/d;",
        "setMWebViewLoaderManager",
        "(Lcom/transsion/lib_web/zip/loader/d;)V",
        "mWebViewLoaderManager",
        "d",
        "Ljava/lang/String;",
        "getStrTitle",
        "X0",
        "strTitle",
        "Lcom/transsion/lib_web/domain/LoadStatus;",
        "e",
        "Lcom/transsion/lib_web/domain/LoadStatus;",
        "getCurrentState",
        "()Lcom/transsion/lib_web/domain/LoadStatus;",
        "S0",
        "(Lcom/transsion/lib_web/domain/LoadStatus;)V",
        "currentState",
        "Lcom/transsion/lib_web/LoadUrlData;",
        "f",
        "Lcom/transsion/lib_web/LoadUrlData;",
        "k0",
        "()Lcom/transsion/lib_web/LoadUrlData;",
        "loadUrlData",
        "g",
        "Lgm/f;",
        "adOpenListener",
        "h",
        "Landroid/view/View;",
        "webCustomView",
        "i",
        "I",
        "originalSystemUiVisibility",
        "j",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "customViewCallback",
        "k",
        "originalOrientation",
        "l",
        "Lcom/github/lzyzsd/jsbridge/BridgeWebView;",
        "l0",
        "V0",
        "mWebView",
        "m",
        "Z",
        "isRenderProcessGone",
        "n",
        "J",
        "getFirstLoadStartTime",
        "()J",
        "setFirstLoadStartTime",
        "(J)V",
        "firstLoadStartTime",
        "Lcom/transsion/lib_web/domain/LoadInfoStats;",
        "o",
        "Lcom/transsion/lib_web/domain/LoadInfoStats;",
        "j0",
        "()Lcom/transsion/lib_web/domain/LoadInfoStats;",
        "loadInfoStats",
        "p",
        "isAlreadyLoadUrl",
        "q",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final q:Lcom/transsion/lib_web/BaseLibWebFragment$a;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field public b:Lhm/a;

.field private c:Lcom/transsion/lib_web/zip/loader/d;

.field private d:Ljava/lang/String;

.field private e:Lcom/transsion/lib_web/domain/LoadStatus;

.field private final f:Lcom/transsion/lib_web/LoadUrlData;

.field private g:Lgm/f;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private k:I

.field private l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

.field private m:Z

.field private n:J

.field private final o:Lcom/transsion/lib_web/domain/LoadInfoStats;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/lib_web/BaseLibWebFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/lib_web/BaseLibWebFragment;->q:Lcom/transsion/lib_web/BaseLibWebFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->d:Ljava/lang/String;

    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->INIT:Lcom/transsion/lib_web/domain/LoadStatus;

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    new-instance v0, Lcom/transsion/lib_web/LoadUrlData;

    sget-object v1, Lcom/transsion/lib_web/download_render/utils/RenderSource;->INNER:Lcom/transsion/lib_web/download_render/utils/RenderSource;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/transsion/lib_web/LoadUrlData;-><init>(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->k:I

    new-instance v0, Lcom/transsion/lib_web/domain/LoadInfoStats;

    invoke-direct {v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;-><init>()V

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->o:Lcom/transsion/lib_web/domain/LoadInfoStats;

    return-void
.end method

.method private final A0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lim/b;

    iget-object v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    invoke-direct {v1, v0, v2}, Lim/b;-><init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V

    new-instance v2, Lim/d;

    iget-object v3, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    invoke-direct {v2, v0, v3}, Lim/d;-><init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V

    new-instance v3, Lim/a;

    iget-object v4, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    invoke-direct {v3, v0, v4}, Lim/a;-><init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V

    new-instance v4, Lim/c;

    iget-object v5, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    invoke-direct {v4, v0, v5}, Lim/c;-><init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/transsion/lib_web/zip/loader/c;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->i0()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lgm/i;->a:Lgm/i;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<initWebViewFileCacheLoader> loaders.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DR_"

    invoke-virtual {v2, v4, v3}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/lib_web/zip/loader/d;

    invoke-direct {v2, v0, v1}, Lcom/transsion/lib_web/zip/loader/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->c:Lcom/transsion/lib_web/zip/loader/d;

    :cond_0
    return-void
.end method

.method private final B0(Landroid/webkit/WebView;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "\n              (function() {\n                window.addEventListener(\'load\',\n                function() {\n                    try {\n                        const intervalId = setInterval(function() {\n                            var timing = window.performance.timing;\n                            if (timing.loadEventEnd <= 0) {\n                                console.log(timing.loadEventEnd);\n                                return;\n                            }\n            \n                            var stats = {\n                                // \u57fa\u672c\u52a0\u8f7d\u65f6\u95f4\n                                dnsLookup: timing.domainLookupEnd - timing.domainLookupStart,\n                                tcpConnect: timing.connectEnd - timing.connectStart,\n                                requestTime: timing.responseStart - timing.requestStart,\n                                responseTime: timing.responseEnd - timing.responseStart,\n            \n                                // DOM\u76f8\u5173\u65f6\u95f4\n                                domLoading: timing.domLoading - timing.navigationStart,\n                                domInteractive: timing.domInteractive - timing.navigationStart,\n                                domComplete: timing.domComplete - timing.navigationStart,\n            \n                                // \u6574\u4f53\u52a0\u8f7d\u65f6\u95f4\n                                loadEventTime: timing.loadEventEnd - timing.loadEventStart,\n                                totalLoadTime: timing.loadEventEnd - timing.navigationStart,\n            \n                                // \u52a0\u8f7d\u72b6\u6001\n                                readyState: document.readyState,\n                                success: document.readyState === \'complete\'\n                            };\n                            clearInterval(intervalId)\n                            console.log(timing.loadEventEnd)\n                            console.warn(JSON.stringify(stats))\n                            // \u5982\u679c\u6709Android\u63a5\u53e3\u53ef\u7528\uff0c\u5219\u901a\u8fc7\u63a5\u53e3\u62a5\u544a\n                            if (window.MBPreDownloadAndroidInterface) {\n                                window.MBPreDownloadAndroidInterface.reportLoadStats(JSON.stringify(stats));\n                            } else {\n                                console.warn(window.MBPreDownloadAndroidInterface);\n                                console.warn(stats);\n                            }\n            \n                        },\n                        1000);\n                    } catch(e) {\n                        if (window.MBPreDownloadAndroidInterface) {\n                            window.MBPreDownloadAndroidInterface.reportLoadError(e.message);\n                        } else {\n                            console.error(\'Error collecting load stats:\', e);\n                        }\n                    }\n                })\n            \n            })()\n            "

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private final D0(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "parse(this)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "is_lazy_load"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "true"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v2, :cond_1

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_2
    :goto_1
    return v0

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private final E0()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->p:Z

    if-eqz v0, :cond_0

    sget-object v0, Lgm/i;->a:Lgm/i;

    const-string v1, "loadUrl() --> \u5df2\u7ecf\u52a0\u8f7d\u8fc7\u4e86\uff0c\u4e0d\u518d\u91cd\u590d\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Lgm/i;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->p:Z

    sget-object v0, Lgm/i;->a:Lgm/i;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadUrl() --> \u52a0\u8f7d\u9875\u9762 --> url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgm/i;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final F0()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "load_url_only"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private final T0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lgm/a;

    invoke-direct {v0, p0}, Lgm/a;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_0
    return-void
.end method

.method private static final U0(Lcom/transsion/lib_web/BaseLibWebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->F0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v0, ".apk"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".APK"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/vnd.android.package-archive"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string p2, "requireActivity(...)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    move-object v8, p2

    const-string v3, "web_load"

    move-object v1, p0

    move-object v4, p1

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/lib_web/BaseLibWebFragment;->c0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    sget-object p0, Lgm/i;->a:Lgm/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u62e6\u622aAPK\u4e0b\u8f7d --> mimetype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> url = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> contentLength = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " --> contentDisposition = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> userAgent = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgm/i;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->t0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->s0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->u0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/lib_web/BaseLibWebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/lib_web/BaseLibWebFragment;->U0(Lcom/transsion/lib_web/BaseLibWebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic Z(Lcom/transsion/lib_web/BaseLibWebFragment;)Lgm/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->g:Lgm/f;

    return-object p0
.end method

.method public static final synthetic a0(Lcom/transsion/lib_web/BaseLibWebFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Z

    return-void
.end method

.method private final b0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/lib_web/BaseLibWebFragment$c;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    return-void
.end method

.method private final e0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "nested_scroll_intercept"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$d;

    invoke-direct {v0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment$d;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final f0(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->SUCCESS:Lcom/transsion/lib_web/domain/LoadStatus;

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->n:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->Z0(Ljava/lang/String;J)V

    return-void
.end method

.method private final g0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->C0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->a:Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->f(Ljava/lang/String;Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/lib_web/cache/a;->a:Lcom/transsion/lib_web/cache/a;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/lib_web/cache/a;->c(Ljava/lang/String;Landroid/content/Context;)Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final initListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v0

    iget-object v0, v0, Lhm/a;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lgm/b;

    invoke-direct {v1, p0}, Lgm/b;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v0

    iget-object v0, v0, Lhm/a;->c:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lgm/c;

    invoke-direct {v1, p0}, Lgm/c;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v0

    iget-object v0, v0, Lhm/a;->d:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lgm/d;

    invoke-direct {v1, p0}, Lgm/d;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final p0(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->FAILED:Lcom/transsion/lib_web/domain/LoadStatus;

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->Y0(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private final q0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object p1

    iget-object p1, p1, Lhm/a;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object p1

    iget-object p1, p1, Lhm/a;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final r0()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "tool_status_bar_hidden"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "tool_bar_hidden"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "bottom_margin"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v4

    invoke-virtual {v4}, Lhm/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    if-lez v3, :cond_3

    iget-object v5, v4, Lhm/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v4, v4, Lhm/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/lib_web/BaseLibWebFragment;->e0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    sget-object v4, Lgm/e;->a:Lgm/e;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgm/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v2, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v5, v1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x1

    :goto_4
    invoke-direct {p0, v5}, Lcom/transsion/lib_web/BaseLibWebFragment;->q0(Z)V

    sget-object v5, Lgm/i;->a:Lgm/i;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --> initLayout() --> statusBarHide = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " --> isFieldToolBarHidden = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " -- bottomMargin = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> hideNavigationBar = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lgm/i;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "need_header"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v0

    iget-object v0, v0, Lhm/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "header_GB"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private static final s0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->l()V

    :cond_0
    return-void
.end method

.method private static final t0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static final u0(Lcom/transsion/lib_web/BaseLibWebFragment;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->o:Lcom/transsion/lib_web/domain/LoadInfoStats;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setReload(Z)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method private final v0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$e;

    invoke-direct {v0, p0}, Lcom/transsion/lib_web/BaseLibWebFragment$e;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_0
    return-void
.end method

.method private final w0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/lib_web/BaseLibWebFragment$b;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V

    const-string v1, "MBPreDownloadAndroidInterface"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final x0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->w0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->v0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->z0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->T0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->d0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->b0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->A0()V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$f;

    invoke-direct {v0, p1, p0}, Lcom/transsion/lib_web/BaseLibWebFragment$f;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Lcom/transsion/lib_web/BaseLibWebFragment;)V

    const-string v1, "MbOkSpinJsBridge"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h()Lcom/transsion/lib_web/download_render/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/lib_web/download_render/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/LoadUrlData;->setOriginUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->D0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lgm/i;->a:Lgm/i;

    const-string v0, "initWebView() --> \u61d2\u52a0\u8f7d\uff0c\u4e0d\u6267\u884c\u52a0\u8f7d\u6570\u636e\u64cd\u4f5c"

    invoke-virtual {p1, v0}, Lgm/i;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->E0()V

    :goto_0
    return-void
.end method

.method static synthetic y0(Lcom/transsion/lib_web/BaseLibWebFragment;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->x0(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initWebView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final z0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/lib_web/BaseLibWebFragment$g;

    invoke-direct {v0, p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment$g;-><init>(Lcom/transsion/lib_web/BaseLibWebFragment;Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    invoke-virtual {p1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public C0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isAd"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->a:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->h:Landroid/view/View;

    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v2

    sget-object v3, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {v2, v3}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    iget v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->k:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method public H0(Landroid/webkit/WebView;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object p1

    iget-object p1, p1, Lhm/a;->f:Landroid/widget/ProgressBar;

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v0

    iget-object v0, v0, Lhm/a;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public I0(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "title"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object p1

    iget-object p1, p1, Lhm/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public J0(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->i:I

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->k:I

    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->h:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->a:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    sget-object p2, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public K0(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lgm/i;->a:Lgm/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebViewClientPageFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgm/i;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->f0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public L0(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "url"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lgm/i;->a:Lgm/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebViewClientPageStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lgm/i;->c(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    iput-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->n:J

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->B0(Landroid/webkit/WebView;)V

    return-void
.end method

.method public M0(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    sget-object p2, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    if-ne p1, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WebResourceError: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->p0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public N0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    sget-object p2, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->p0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public O0(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorResponse"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    sget-object v0, Lcom/transsion/lib_web/domain/LoadStatus;->LOADING:Lcom/transsion/lib_web/domain/LoadStatus;

    if-ne p1, v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->p0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public P0(Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 0

    return-void
.end method

.method protected final Q0()Z
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->g0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iput-boolean v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Z

    sget-object v3, Lcom/transsion/lib_web/domain/LoadStatus;->INIT:Lcom/transsion/lib_web/domain/LoadStatus;

    iput-object v3, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    iput-boolean v2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->p:Z

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object v2

    iget-object v2, v2, Lhm/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->e0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    invoke-direct {p0, v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->x0(Z)V

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public final R0(Lhm/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->b:Lhm/a;

    return-void
.end method

.method public final S0(Lcom/transsion/lib_web/domain/LoadStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    return-void
.end method

.method public final V0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    return-void
.end method

.method public final W0(Lgm/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->g:Lgm/f;

    return-void
.end method

.method public final X0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->d:Ljava/lang/String;

    return-void
.end method

.method public Y0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lgm/i;->a:Lgm/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackError --> errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> errorMsg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgm/i;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->o:Lcom/transsion/lib_web/domain/LoadInfoStats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setError_code(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->o:Lcom/transsion/lib_web/domain/LoadInfoStats;

    invoke-virtual {p1, p3}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setError_msg(Ljava/lang/String;)V

    return-void
.end method

.method public Z0(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lgm/i;->a:Lgm/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackEvent --> loadTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " --> url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgm/i;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->o:Lcom/transsion/lib_web/domain/LoadInfoStats;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setLoad_time(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->e:Lcom/transsion/lib_web/domain/LoadStatus;

    sget-object p2, Lcom/transsion/lib_web/domain/LoadStatus;->SUCCESS:Lcom/transsion/lib_web/domain/LoadStatus;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->o:Lcom/transsion/lib_web/domain/LoadInfoStats;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setLoadSuccess(Z)V

    :cond_0
    return-void
.end method

.method public c0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    const-string p3, "requireActivity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tag"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "originalUrl"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract d0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end method

.method public final getClassTag()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h0()Lhm/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->b:Lhm/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public i0()Ljava/util/List;
    .locals 1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j0()Lcom/transsion/lib_web/domain/LoadInfoStats;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->o:Lcom/transsion/lib_web/domain/LoadInfoStats;

    return-object v0
.end method

.method public final k0()Lcom/transsion/lib_web/LoadUrlData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->f:Lcom/transsion/lib_web/LoadUrlData;

    return-object v0
.end method

.method public final l0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    return-object v0
.end method

.method public final m0()Lcom/transsion/lib_web/zip/loader/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->c:Lcom/transsion/lib_web/zip/loader/d;

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->g0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    :cond_1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    return-object v0
.end method

.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->C0()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->a:Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->p:Z

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lhm/a;->c(Landroid/view/LayoutInflater;)Lhm/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->R0(Lhm/a;)V

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object p1

    invoke-virtual {p1}, Lhm/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/a;->n()V

    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h()Lcom/transsion/lib_web/download_render/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/lib_web/download_render/d;->b()V

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0, p0}, Lnh/m;->m(Lnh/n;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->g:Lgm/f;

    sget-object v0, Lgm/i;->a:Lgm/i;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onDestroy()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgm/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-eqz v0, :cond_0

    const-string v1, "MBPreDownloadAndroidInterface"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-eqz v0, :cond_1

    const-string v1, "MbOkSpinJsBridge"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->C0()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->a:Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;

    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->l(Lcom/github/lzyzsd/jsbridge/BridgeWebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/transsion/lib_web/cache/a;->a:Lcom/transsion/lib_web/cache/a;

    invoke-virtual {v1, v0}, Lcom/transsion/lib_web/cache/a;->b(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->E0()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->E0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    if-nez p1, :cond_1

    sget-object p1, Lgm/i;->a:Lgm/i;

    const-string p2, "onViewCreated() --> mWebView \u4e3a null\uff0c\u8bbe\u5907\u4e0d\u652f\u6301 WebView\uff0c\u5173\u95ed\u9875\u9762"

    invoke-virtual {p1, p2}, Lgm/i;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object p1

    iget-object p1, p1, Lhm/a;->i:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/transsion/lib_web/BaseLibWebFragment;->l:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->r0()V

    invoke-direct {p0}, Lcom/transsion/lib_web/BaseLibWebFragment;->initListener()V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->y0(Lcom/transsion/lib_web/BaseLibWebFragment;ZILjava/lang/Object;)V

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1, p0}, Lnh/m;->l(Lnh/n;)V

    return-void
.end method
