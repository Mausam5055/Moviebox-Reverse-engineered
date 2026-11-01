.class public final synthetic Lmj/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lmj/d;

.field public final synthetic b:Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;


# direct methods
.method public synthetic constructor <init>(Lmj/d;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmj/b;->a:Lmj/d;

    iput-object p2, p0, Lmj/b;->b:Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmj/b;->a:Lmj/d;

    iget-object v1, p0, Lmj/b;->b:Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lmj/d;->c(Lmj/d;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
