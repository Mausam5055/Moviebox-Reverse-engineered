.class public final synthetic Lcom/transsion/wrapperad/install/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/install/ui/i;->a:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    iput-object p2, p0, Lcom/transsion/wrapperad/install/ui/i;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/i;->a:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    iget-object v1, p0, Lcom/transsion/wrapperad/install/ui/i;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->a(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
