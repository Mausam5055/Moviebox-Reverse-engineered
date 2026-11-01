.class public final synthetic Lcom/transsion/ad/strategy/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/strategy/r$a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/strategy/r$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/strategy/m;->a:Lcom/transsion/ad/strategy/r$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ad/strategy/m;->a:Lcom/transsion/ad/strategy/r$a;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/ad/strategy/r;->a(Lcom/transsion/ad/strategy/r$a;D)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
