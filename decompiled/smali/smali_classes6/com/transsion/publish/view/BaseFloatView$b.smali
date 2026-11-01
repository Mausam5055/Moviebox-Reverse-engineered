.class public final Lcom/transsion/publish/view/BaseFloatView$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/BaseFloatView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/BaseFloatView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/BaseFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/BaseFloatView$b;->a:Lcom/transsion/publish/view/BaseFloatView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/publish/view/BaseFloatView$b;->a:Lcom/transsion/publish/view/BaseFloatView;

    invoke-virtual {p1}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    :cond_0
    return-void
.end method
