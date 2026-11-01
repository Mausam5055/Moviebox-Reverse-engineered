.class public Lcom/mbridge/msdk/click/p;
.super Lcom/mbridge/msdk/click/f;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/task/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/click/p$c;
    }
.end annotation


# instance fields
.field private b:Lcom/mbridge/msdk/click/g;

.field private c:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

.field private d:Z

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/mbridge/msdk/foundation/same/task/b;

.field private h:Lcom/mbridge/msdk/click/entity/a;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/mbridge/msdk/click/f;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/p;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/p;->i:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mbridge/msdk/click/p;->f:Landroid/content/Context;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/task/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/task/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/p;->g:Lcom/mbridge/msdk/foundation/same/task/b;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/click/p;->c:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/p;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/p;->c:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/p;Lcom/mbridge/msdk/click/entity/a;)Lcom/mbridge/msdk/click/entity/a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/p;->h:Lcom/mbridge/msdk/click/entity/a;

    return-object p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/g;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/click/p;->b:Lcom/mbridge/msdk/click/g;

    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/click/p;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/click/p;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/click/p;->h:Lcom/mbridge/msdk/click/entity/a;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/click/p;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/click/p;->e:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/same/task/a$b;)V
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->e:Lcom/mbridge/msdk/foundation/same/task/a$b;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/mbridge/msdk/click/p;->d:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/click/p;->i:Landroid/os/Handler;

    new-instance v0, Lcom/mbridge/msdk/click/p$b;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/click/p$b;-><init>(Lcom/mbridge/msdk/click/p;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/click/g;ZLjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V
    .locals 12

    move-object v10, p0

    move-object v3, p1

    move v0, p3

    move-object v1, p2

    iput-object v1, v10, Lcom/mbridge/msdk/click/p;->b:Lcom/mbridge/msdk/click/g;

    iput-boolean v0, v10, Lcom/mbridge/msdk/click/p;->e:Z

    new-instance v1, Lcom/mbridge/msdk/click/entity/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/click/entity/b;-><init>()V

    iget-object v2, v10, Lcom/mbridge/msdk/click/p;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/click/entity/b;->a(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/click/entity/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/mbridge/msdk/click/entity/b;->b(Z)V

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/click/entity/b;->a(Ljava/lang/String;)V

    move-object/from16 v5, p5

    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/click/entity/b;->b(Ljava/lang/String;)V

    move-object/from16 v6, p6

    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/click/entity/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/click/entity/b;->a(Z)V

    move/from16 v8, p8

    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/b;->c(Z)V

    move/from16 v9, p9

    invoke-virtual {v1, v9}, Lcom/mbridge/msdk/click/entity/b;->a(I)V

    const-string v0, "tcp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/click/l;

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/click/l;-><init>(Lcom/mbridge/msdk/click/entity/b;)V

    iget-object v1, v10, Lcom/mbridge/msdk/click/p;->b:Lcom/mbridge/msdk/click/g;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/g;)V

    new-instance v1, Lcom/mbridge/msdk/click/p$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/click/p$a;-><init>(Lcom/mbridge/msdk/click/p;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/l;->a(Lcom/mbridge/msdk/click/k;)V

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/mbridge/msdk/click/p$c;

    iget-object v2, v10, Lcom/mbridge/msdk/click/p;->f:Landroid/content/Context;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/mbridge/msdk/click/p$c;-><init>(Lcom/mbridge/msdk/click/p;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V

    :goto_0
    iget-object v1, v10, Lcom/mbridge/msdk/click/p;->g:Lcom/mbridge/msdk/foundation/same/task/b;

    invoke-virtual {v1, v0, p0}, Lcom/mbridge/msdk/foundation/same/task/b;->b(Lcom/mbridge/msdk/foundation/same/task/a;Lcom/mbridge/msdk/foundation/same/task/a$a;)V

    return-void
.end method
