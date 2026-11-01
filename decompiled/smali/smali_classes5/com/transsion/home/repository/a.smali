.class public final synthetic Lcom/transsion/home/repository/a;
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
    .locals 2

    check-cast p1, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/home/repository/HomePreferencesRepository;->a(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
