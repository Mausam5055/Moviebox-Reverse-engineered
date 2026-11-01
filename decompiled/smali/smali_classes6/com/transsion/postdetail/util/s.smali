.class public final synthetic Lcom/transsion/postdetail/util/s;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lpx/a;


# direct methods
.method public synthetic constructor <init>(Lpx/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/util/s;->a:Lpx/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/s;->a:Lpx/a;

    invoke-static {v0}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->e(Lpx/a;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
