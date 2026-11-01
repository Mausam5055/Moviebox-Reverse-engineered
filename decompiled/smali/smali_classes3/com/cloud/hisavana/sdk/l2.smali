.class public final synthetic Lcom/cloud/hisavana/sdk/l2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic g:Lcom/cloud/hisavana/sdk/t0;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/hisavana/sdk/l2;->a:I

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/l2;->b:Ljava/lang/String;

    iput p3, p0, Lcom/cloud/hisavana/sdk/l2;->c:I

    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/l2;->d:Z

    iput p5, p0, Lcom/cloud/hisavana/sdk/l2;->e:I

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/l2;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p7, p0, Lcom/cloud/hisavana/sdk/l2;->g:Lcom/cloud/hisavana/sdk/t0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/cloud/hisavana/sdk/l2;->a:I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l2;->b:Ljava/lang/String;

    iget v2, p0, Lcom/cloud/hisavana/sdk/l2;->c:I

    iget-boolean v3, p0, Lcom/cloud/hisavana/sdk/l2;->d:Z

    iget v4, p0, Lcom/cloud/hisavana/sdk/l2;->e:I

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/l2;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/l2;->g:Lcom/cloud/hisavana/sdk/t0;

    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/Z;->f(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/t0;)V

    return-void
.end method
