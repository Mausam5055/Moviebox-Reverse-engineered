.class public final synthetic Lcom/transsion/publish/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/PublishManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/PublishManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/e;->a:Lcom/transsion/publish/PublishManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/e;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {v0}, Lcom/transsion/publish/PublishManager;->a(Lcom/transsion/publish/PublishManager;)V

    return-void
.end method
