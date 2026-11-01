.class final Lcom/mbridge/msdk/tracker/o$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/tracker/network/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/tracker/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/r;

.field private final b:Lcom/mbridge/msdk/tracker/t;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/r;Lcom/mbridge/msdk/tracker/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/o$b;->a:Lcom/mbridge/msdk/tracker/r;

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/o$b;->b:Lcom/mbridge/msdk/tracker/t;

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/network/b0;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/o$b;->a:Lcom/mbridge/msdk/tracker/r;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/b0;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/b0;->b()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move v2, v0

    move-object p1, v1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/tracker/o$b;->a:Lcom/mbridge/msdk/tracker/r;

    iget-object v4, p0, Lcom/mbridge/msdk/tracker/o$b;->b:Lcom/mbridge/msdk/tracker/t;

    const-string v5, "volleyError:%s,responseCode:%s,errorMessage:%s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v0

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object p1, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, v0, p1}, Lcom/mbridge/msdk/tracker/r;->a(Lcom/mbridge/msdk/tracker/t;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "TrackManager"

    const-string v1, "onErrorResponse error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method
