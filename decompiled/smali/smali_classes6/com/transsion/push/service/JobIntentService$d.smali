.class final Lcom/transsion/push/service/JobIntentService$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/push/service/JobIntentService$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/service/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/content/Intent;

.field final b:I

.field final synthetic c:Lcom/transsion/push/service/JobIntentService;


# direct methods
.method constructor <init>(Lcom/transsion/push/service/JobIntentService;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/service/JobIntentService$d;->c:Lcom/transsion/push/service/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/push/service/JobIntentService$d;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/transsion/push/service/JobIntentService$d;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$d;->c:Lcom/transsion/push/service/JobIntentService;

    iget v1, p0, Lcom/transsion/push/service/JobIntentService$d;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$d;->a:Landroid/content/Intent;

    return-object v0
.end method
