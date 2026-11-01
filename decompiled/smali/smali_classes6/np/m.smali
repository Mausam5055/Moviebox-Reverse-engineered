.class public final synthetic Lnp/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/view/PublishStateView;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/view/PublishStateView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp/m;->a:Lcom/transsion/publish/view/PublishStateView;

    iput-object p2, p0, Lnp/m;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lnp/m;->a:Lcom/transsion/publish/view/PublishStateView;

    iget-object v1, p0, Lnp/m;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/transsion/publish/view/PublishStateView;->k(Lcom/transsion/publish/view/PublishStateView;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
