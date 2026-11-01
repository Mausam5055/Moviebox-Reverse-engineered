.class public final synthetic Lcom/cloud/hisavana/sdk/j2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/j2;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/j2;->a:J

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/Z;->c(J)V

    return-void
.end method
