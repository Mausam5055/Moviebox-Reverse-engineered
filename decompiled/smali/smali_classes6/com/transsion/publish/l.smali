.class public final synthetic Lcom/transsion/publish/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/PublishService;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/PublishService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/l;->a:Lcom/transsion/publish/PublishService;

    iput-object p2, p0, Lcom/transsion/publish/l;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/l;->a:Lcom/transsion/publish/PublishService;

    iget-object v1, p0, Lcom/transsion/publish/l;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/transsion/publish/PublishService;->a(Lcom/transsion/publish/PublishService;Landroid/content/Intent;)V

    return-void
.end method
