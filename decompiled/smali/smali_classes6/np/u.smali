.class public final synthetic Lnp/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/view/UploadView;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp/u;->a:Lcom/transsion/publish/view/UploadView;

    iput-object p2, p0, Lnp/u;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lnp/u;->a:Lcom/transsion/publish/view/UploadView;

    iget-object v1, p0, Lnp/u;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/transsion/publish/view/UploadView;->m(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
