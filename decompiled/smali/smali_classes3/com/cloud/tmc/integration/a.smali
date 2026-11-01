.class public final synthetic Lcom/cloud/tmc/integration/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/ActivityHelper;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/ActivityHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/a;->a:Lcom/cloud/tmc/integration/ActivityHelper;

    iput p2, p0, Lcom/cloud/tmc/integration/a;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/a;->a:Lcom/cloud/tmc/integration/ActivityHelper;

    iget v1, p0, Lcom/cloud/tmc/integration/a;->b:I

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/ActivityHelper;->a(Lcom/cloud/tmc/integration/ActivityHelper;I)V

    return-void
.end method
