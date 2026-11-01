.class public Lcom/mbridge/msdk/mbnative/controller/NativeController$p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbnative/controller/NativeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/mbridge/msdk/foundation/same/task/d;

.field private c:I

.field private d:Ljava/lang/String;

.field final synthetic e:Lcom/mbridge/msdk/mbnative/controller/NativeController;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;ILcom/mbridge/msdk/foundation/same/task/d;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->e:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->a:I

    iput-object p3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->b:Lcom/mbridge/msdk/foundation/same/task/d;

    iput p4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->c:I

    iput-object p5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->b:Lcom/mbridge/msdk/foundation/same/task/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/same/task/d;->a(Z)V

    iget v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->a:I

    const/4 v2, 0x0

    const-string v3, "REQUEST_TIMEOUT"

    if-eq v0, v1, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->e:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->c:I

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->e:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    iget v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->c:I

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->e:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->e:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    iget v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->c:I

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_3
    :goto_0
    return-void
.end method
