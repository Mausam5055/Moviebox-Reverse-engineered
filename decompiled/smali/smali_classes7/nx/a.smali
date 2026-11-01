.class public final synthetic Lnx/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnx/a;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnx/a;->a:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    invoke-static {v0, p1}, Lnx/b;->e(Lkotlin/jvm/functions/Function1;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
