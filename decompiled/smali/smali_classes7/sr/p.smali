.class public final synthetic Lsr/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lsr/r;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lsr/r;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr/p;->a:Lsr/r;

    iput-object p2, p0, Lsr/p;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsr/p;->a:Lsr/r;

    iget-object v1, p0, Lsr/p;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    invoke-static {v0, v1, p1}, Lsr/r;->b(Lsr/r;Lkotlin/jvm/functions/Function1;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
