.class public final synthetic Lan/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/activity/MoviePosterActivity;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/activity/MoviePosterActivity;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lan/g;->a:Lcom/transsion/moviedetail/activity/MoviePosterActivity;

    iput-wide p2, p0, Lan/g;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lan/g;->a:Lcom/transsion/moviedetail/activity/MoviePosterActivity;

    iget-wide v1, p0, Lan/g;->b:J

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/io/File;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/transsion/moviedetail/activity/MoviePosterActivity;->i0(Lcom/transsion/moviedetail/activity/MoviePosterActivity;JZLjava/io/File;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
