.class public final synthetic Lcom/transsion/ad/test/ad_config/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/test/ad_config/b;->a:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/b;->a:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->T(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
