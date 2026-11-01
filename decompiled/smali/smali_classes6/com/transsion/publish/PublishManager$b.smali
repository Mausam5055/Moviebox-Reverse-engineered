.class public final Lcom/transsion/publish/PublishManager$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/PublishManager;->create(Lcom/transsion/publish/api/bean/RequestPostEntity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/publish/PublishManager;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/transsion/publish/PublishManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/PublishManager$b;->d:Lcom/transsion/publish/PublishManager;

    iput-boolean p2, p0, Lcom/transsion/publish/PublishManager$b;->e:Z

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$b;->d:Lcom/transsion/publish/PublishManager;

    iget-boolean v1, p0, Lcom/transsion/publish/PublishManager$b;->e:Z

    invoke-static {v0, p1, p2, v1}, Lcom/transsion/publish/PublishManager;->access$failureCallback(Lcom/transsion/publish/PublishManager;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/publish/net/PostResuleEntity;

    invoke-virtual {p0, p1}, Lcom/transsion/publish/PublishManager$b;->e(Lcom/transsion/publish/net/PostResuleEntity;)V

    return-void
.end method

.method public e(Lcom/transsion/publish/net/PostResuleEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$b;->d:Lcom/transsion/publish/PublishManager;

    invoke-static {v0, p1}, Lcom/transsion/publish/PublishManager;->access$successCallback(Lcom/transsion/publish/PublishManager;Ljava/lang/Object;)V

    return-void
.end method
