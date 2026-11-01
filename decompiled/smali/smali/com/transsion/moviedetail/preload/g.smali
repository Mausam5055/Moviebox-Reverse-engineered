.class public final Lcom/transsion/moviedetail/preload/g;
.super Lqm/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/preload/g$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/moviedetail/preload/g$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/moviedetail/preload/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/preload/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/moviedetail/preload/g;->a:Lcom/transsion/moviedetail/preload/g$a;

    new-instance v0, Lcom/transsion/moviedetail/preload/f;

    invoke-direct {v0}, Lcom/transsion/moviedetail/preload/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/moviedetail/preload/g;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lqm/a;-><init>()V

    sget-object v0, Lqm/e;->a:Lqm/e;

    new-instance v1, Lcom/transsion/moviedetail/preload/d;

    invoke-direct {v1}, Lcom/transsion/moviedetail/preload/d;-><init>()V

    invoke-virtual {v0, v1}, Lqm/e;->e(Lqm/c;)V

    return-void
.end method

.method public static synthetic b()Lcom/transsion/moviedetail/preload/g;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/preload/g;->d()Lcom/transsion/moviedetail/preload/g;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/moviedetail/preload/g;->b:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final d()Lcom/transsion/moviedetail/preload/g;
    .locals 1

    new-instance v0, Lcom/transsion/moviedetail/preload/g;

    invoke-direct {v0}, Lcom/transsion/moviedetail/preload/g;-><init>()V

    return-object v0
.end method
