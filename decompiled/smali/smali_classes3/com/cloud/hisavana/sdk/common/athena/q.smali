.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/q3;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/q3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->a:Lcom/cloud/hisavana/sdk/q3;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->b:I

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->c:I

    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->d:Z

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->e:Ljava/util/List;

    iput-wide p6, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->f:J

    iput-object p8, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->h:Ljava/lang/String;

    iput p10, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->a:Lcom/cloud/hisavana/sdk/q3;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->b:I

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->c:I

    iget-boolean v3, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->d:Z

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->e:Ljava/util/List;

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->f:J

    iget-object v7, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->h:Ljava/lang/String;

    iget v9, p0, Lcom/cloud/hisavana/sdk/common/athena/q;->i:I

    invoke-static/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->f(Lcom/cloud/hisavana/sdk/q3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
