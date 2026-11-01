.class public final Lcom/transsion/web/fragment/WebFragmentV2$b;
.super Lcom/transsion/athena/jsbridge/AthenaJsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/fragment/WebFragmentV2;->d0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/web/fragment/WebFragmentV2;


# direct methods
.method constructor <init>(Lcom/transsion/web/fragment/WebFragmentV2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$b;->b:Lcom/transsion/web/fragment/WebFragmentV2;

    invoke-direct {p0, p2}, Lcom/transsion/athena/jsbridge/AthenaJsInterface;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/transsion/web/fragment/WebFragmentV2$b;->b()V

    return-void
.end method

.method private static final b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public track(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/athena/jsbridge/AthenaJsInterface;->track(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$b;->b:Lcom/transsion/web/fragment/WebFragmentV2;

    invoke-virtual {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->h0()Lhm/a;

    move-result-object p1

    invoke-virtual {p1}, Lhm/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance p2, Lcom/transsion/web/fragment/g;

    invoke-direct {p2}, Lcom/transsion/web/fragment/g;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
