.class public final synthetic Lcom/transsion/baseui/fragment/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/fragment/PageStatusFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/fragment/PageStatusFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/fragment/e;->a:Lcom/transsion/baseui/fragment/PageStatusFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/fragment/e;->a:Lcom/transsion/baseui/fragment/PageStatusFragment;

    invoke-static {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->X(Lcom/transsion/baseui/fragment/PageStatusFragment;)V

    return-void
.end method
