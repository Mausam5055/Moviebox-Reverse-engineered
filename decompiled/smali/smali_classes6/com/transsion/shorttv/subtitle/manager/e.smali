.class public final synthetic Lcom/transsion/shorttv/subtitle/manager/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/manager/e;->a:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    iput-object p2, p0, Lcom/transsion/shorttv/subtitle/manager/e;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/e;->a:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/e;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->j(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
