.class public Lcom/mbridge/msdk/mbnative/controller/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbnative/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/mbridge/msdk/foundation/same/task/d;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/mbridge/msdk/preload/listenter/a;

.field private g:Z

.field final synthetic h:Lcom/mbridge/msdk/mbnative/controller/d;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/mbnative/controller/d;ILcom/mbridge/msdk/foundation/same/task/d;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->h:Lcom/mbridge/msdk/mbnative/controller/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->g:Z

    iput p2, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->a:I

    iput-object p3, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->b:Lcom/mbridge/msdk/foundation/same/task/d;

    iput p4, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->c:I

    iput-object p5, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/preload/listenter/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->f:Lcom/mbridge/msdk/preload/listenter/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->g:Z

    return-void
.end method

.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->b:Lcom/mbridge/msdk/foundation/same/task/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/same/task/d;->a(Z)V

    iget v0, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->a:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->h:Lcom/mbridge/msdk/mbnative/controller/d;

    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->c:I

    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->f:Lcom/mbridge/msdk/preload/listenter/a;

    const-string v3, "REQUEST_TIMEOUT"

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/mbnative/controller/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/preload/listenter/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->h:Lcom/mbridge/msdk/mbnative/controller/d;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbnative/controller/d;->a(Lcom/mbridge/msdk/mbnative/controller/d;Z)Z

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->g:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->c:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->h:Lcom/mbridge/msdk/mbnative/controller/d;

    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->c:I

    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/d$c;->f:Lcom/mbridge/msdk/preload/listenter/a;

    const-string v3, "REQUEST_TIMEOUT"

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/mbnative/controller/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/preload/listenter/a;)V

    :cond_3
    :goto_0
    return-void
.end method
