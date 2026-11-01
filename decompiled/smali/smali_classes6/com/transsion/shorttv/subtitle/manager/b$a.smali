.class public final Lcom/transsion/shorttv/subtitle/manager/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/subtitle/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/shorttv/subtitle/manager/b$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/b$a;

    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;-><init>()V

    sput-object v0, Lcom/transsion/shorttv/subtitle/manager/b$a;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/a;

    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/subtitle/manager/b$a;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/subtitle/manager/b$a;->c()Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/transsion/shorttv/subtitle/manager/b;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/subtitle/manager/b$a;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/subtitle/manager/b;

    return-object v0
.end method
