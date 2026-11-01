.class public final Lcom/transsion/subtitle/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/subtitle/h$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/subtitle/h$a;

    invoke-direct {v0}, Lcom/transsion/subtitle/h$a;-><init>()V

    sput-object v0, Lcom/transsion/subtitle/h$a;->a:Lcom/transsion/subtitle/h$a;

    new-instance v0, Lcom/transsion/subtitle/g;

    invoke-direct {v0}, Lcom/transsion/subtitle/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/subtitle/h$a;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/subtitle/VideoSubtitleManagerImp;
    .locals 1

    invoke-static {}, Lcom/transsion/subtitle/h$a;->c()Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Lcom/transsion/subtitle/VideoSubtitleManagerImp;
    .locals 1

    new-instance v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    invoke-direct {v0}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/transsion/subtitle/h;
    .locals 1

    sget-object v0, Lcom/transsion/subtitle/h$a;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/subtitle/h;

    return-object v0
.end method
