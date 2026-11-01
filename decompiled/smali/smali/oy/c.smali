.class public final Loy/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loy/c$a;
    }
.end annotation


# static fields
.field public static final k:Loy/c$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loy/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loy/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Loy/c;->k:Loy/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Loy/c;->a:Ljava/lang/String;

    const v0, 0xea60

    iput v0, p0, Loy/c;->b:I

    iput v0, p0, Loy/c;->c:I

    const/4 v0, 0x1

    iput v0, p0, Loy/c;->d:I

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Loy/c;->d:I

    div-int/2addr v0, v1

    iput v0, p0, Loy/c;->e:I

    const/4 v0, 0x3

    iput v0, p0, Loy/c;->f:I

    const/4 v0, 0x5

    iput v0, p0, Loy/c;->g:I

    new-instance v0, Loy/a;

    invoke-direct {v0, p0}, Loy/a;-><init>(Loy/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Loy/c;->h:Lkotlin/Lazy;

    new-instance v0, Loy/b;

    invoke-direct {v0}, Loy/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Loy/c;->i:Lkotlin/Lazy;

    const/4 v0, -0x1

    iput v0, p0, Loy/c;->j:I

    return-void
.end method

.method public static synthetic a()J
    .locals 2

    invoke-static {}, Loy/c;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Loy/c;)D
    .locals 2

    invoke-static {p0}, Loy/c;->c(Loy/c;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final c(Loy/c;)D
    .locals 2

    invoke-direct {p0}, Loy/c;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method private static final k()J
    .locals 4

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "downloadRangeSize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v1, 0x500000

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_2
    :goto_1
    return-wide v1
.end method

.method private final l()D
    .locals 7

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "download_speed_limit_ratio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->k(DDD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fd3333333333333L    # 0.3

    :goto_1
    return-wide v0
.end method


# virtual methods
.method public final d()D
    .locals 2

    iget-object v0, p0, Loy/c;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Loy/c;->d:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Loy/c;->e:I

    return v0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Loy/c;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Loy/c;->j:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Loy/c;->g:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Loy/c;->f:I

    return v0
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Loy/c;->d:I

    return-void
.end method
