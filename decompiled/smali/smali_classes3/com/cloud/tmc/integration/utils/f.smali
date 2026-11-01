.class public final synthetic Lcom/cloud/tmc/integration/utils/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/f;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/cloud/tmc/integration/utils/f;->c:J

    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/f;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/cloud/tmc/integration/utils/f;->c:J

    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/utils/AppUtils;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
