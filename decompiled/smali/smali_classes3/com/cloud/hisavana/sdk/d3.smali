.class public final synthetic Lcom/cloud/hisavana/sdk/d3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/c0$c;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/c0$c;ZILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/d3;->b:Lcom/cloud/hisavana/sdk/c0$c;

    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/d3;->c:Z

    iput p4, p0, Lcom/cloud/hisavana/sdk/d3;->d:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/d3;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/d3;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d3;->b:Lcom/cloud/hisavana/sdk/c0$c;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/d3;->c:Z

    iget v3, p0, Lcom/cloud/hisavana/sdk/d3;->d:I

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/d3;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/d3;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/d;->h(Ljava/lang/String;Lcom/cloud/hisavana/sdk/c0$c;ZILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method
