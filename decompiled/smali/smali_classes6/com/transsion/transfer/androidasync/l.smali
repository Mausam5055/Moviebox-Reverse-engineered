.class public final synthetic Lcom/transsion/transfer/androidasync/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/n;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/l;->a:Lcom/transsion/transfer/androidasync/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/l;->a:Lcom/transsion/transfer/androidasync/n;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/n;->e(Lcom/transsion/transfer/androidasync/n;)V

    return-void
.end method
