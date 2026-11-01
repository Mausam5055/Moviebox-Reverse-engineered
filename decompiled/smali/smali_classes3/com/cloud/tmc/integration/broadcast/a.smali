.class public final synthetic Lcom/cloud/tmc/integration/broadcast/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/broadcast/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/integration/broadcast/a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cloud/tmc/integration/broadcast/a;->c:Z

    iput-object p4, p0, Lcom/cloud/tmc/integration/broadcast/a;->d:Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;

    iput p5, p0, Lcom/cloud/tmc/integration/broadcast/a;->e:I

    iput-object p6, p0, Lcom/cloud/tmc/integration/broadcast/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/broadcast/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/integration/broadcast/a;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/cloud/tmc/integration/broadcast/a;->c:Z

    iget-object v3, p0, Lcom/cloud/tmc/integration/broadcast/a;->d:Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;

    iget v4, p0, Lcom/cloud/tmc/integration/broadcast/a;->e:I

    iget-object v5, p0, Lcom/cloud/tmc/integration/broadcast/a;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V

    return-void
.end method
