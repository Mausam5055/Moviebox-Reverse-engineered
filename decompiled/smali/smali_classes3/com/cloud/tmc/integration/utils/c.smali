.class public final synthetic Lcom/cloud/tmc/integration/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/c;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/c;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
