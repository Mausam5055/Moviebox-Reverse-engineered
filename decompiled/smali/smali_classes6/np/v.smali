.class public final synthetic Lnp/v;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/view/UploadView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp/v;->a:Lcom/transsion/publish/view/UploadView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnp/v;->a:Lcom/transsion/publish/view/UploadView;

    check-cast p1, Lcom/transsion/publish/bean/PublishResult;

    invoke-static {v0, p1}, Lcom/transsion/publish/view/UploadView;->n(Lcom/transsion/publish/view/UploadView;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
