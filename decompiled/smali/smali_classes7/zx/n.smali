.class public final synthetic Lzx/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx/n;->a:Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzx/n;->a:Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;->d(Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
