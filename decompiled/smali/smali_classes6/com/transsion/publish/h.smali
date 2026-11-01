.class public final synthetic Lcom/transsion/publish/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/publish/PublishManager;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/publish/PublishManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/publish/h;->b:Lcom/transsion/publish/PublishManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/publish/h;->b:Lcom/transsion/publish/PublishManager;

    invoke-static {v0, v1}, Lcom/transsion/publish/PublishManager;->f(Ljava/lang/String;Lcom/transsion/publish/PublishManager;)V

    return-void
.end method
