.class public final synthetic Lnp/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/view/UploadView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp/s;->a:Lcom/transsion/publish/view/UploadView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnp/s;->a:Lcom/transsion/publish/view/UploadView;

    invoke-static {v0}, Lcom/transsion/publish/view/UploadView;->o(Lcom/transsion/publish/view/UploadView;)V

    return-void
.end method
