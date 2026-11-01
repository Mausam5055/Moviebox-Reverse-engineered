.class public final synthetic Lcom/cloud/tmc/miniapp/dialog/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o00Ooo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/k;->a:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    iput p2, p0, Lcom/cloud/tmc/miniapp/dialog/k;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/k;->a:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/k;->b:I

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/o00Ooo;I)V

    return-void
.end method
