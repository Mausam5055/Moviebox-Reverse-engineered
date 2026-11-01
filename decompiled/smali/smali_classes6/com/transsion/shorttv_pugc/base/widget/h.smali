.class public final synthetic Lcom/transsion/shorttv_pugc/base/widget/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/h;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;->i(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
