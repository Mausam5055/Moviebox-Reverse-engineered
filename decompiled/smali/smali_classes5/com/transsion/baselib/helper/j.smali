.class public final synthetic Lcom/transsion/baselib/helper/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/helper/ScreenRotationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/helper/ScreenRotationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/helper/j;->a:Lcom/transsion/baselib/helper/ScreenRotationHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/helper/j;->a:Lcom/transsion/baselib/helper/ScreenRotationHelper;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->b(Lcom/transsion/baselib/helper/ScreenRotationHelper;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
