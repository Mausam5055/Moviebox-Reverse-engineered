.class public final synthetic Lcom/transsion/publish/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/PublishManager;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/PublishManager;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/i;->a:Lcom/transsion/publish/PublishManager;

    iput-object p2, p0, Lcom/transsion/publish/i;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/transsion/publish/i;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/publish/i;->a:Lcom/transsion/publish/PublishManager;

    iget-object v1, p0, Lcom/transsion/publish/i;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsion/publish/i;->c:Z

    invoke-static {v0, v1, v2}, Lcom/transsion/publish/PublishManager;->b(Lcom/transsion/publish/PublishManager;Landroid/content/Context;Z)V

    return-void
.end method
