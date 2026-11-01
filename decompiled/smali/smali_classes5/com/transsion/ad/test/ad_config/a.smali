.class public final synthetic Lcom/transsion/ad/test/ad_config/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/test/ad_config/a;->a:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/a;->a:Lcom/transsion/ad/test/ad_config/TestAdMccActivity;

    invoke-static {v0, p1}, Lcom/transsion/ad/test/ad_config/TestAdMccActivity;->R(Lcom/transsion/ad/test/ad_config/TestAdMccActivity;Landroid/view/View;)V

    return-void
.end method
