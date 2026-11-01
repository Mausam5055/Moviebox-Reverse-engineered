.class public final synthetic Lck/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/dialog/BaseDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/dialog/BaseDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/b;->a:Lcom/transsion/baseui/dialog/BaseDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lck/b;->a:Lcom/transsion/baseui/dialog/BaseDialog;

    invoke-static {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->a0(Lcom/transsion/baseui/dialog/BaseDialog;)V

    return-void
.end method
