.class public final synthetic Lan/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/transsion/moviedetail/activity/MoviePosterActivity;->j0(ZLjava/io/File;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
