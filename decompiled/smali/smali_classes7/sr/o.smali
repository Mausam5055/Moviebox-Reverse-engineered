.class public final synthetic Lsr/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lsr/r;


# direct methods
.method public synthetic constructor <init>(Lsr/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr/o;->a:Lsr/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsr/o;->a:Lsr/r;

    check-cast p1, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    invoke-static {v0, p1}, Lsr/r;->a(Lsr/r;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
