.class public Lu4/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lu4/n0;


# static fields
.field public static final a:Lu4/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu4/g0;

    invoke-direct {v0}, Lu4/g0;-><init>()V

    sput-object v0, Lu4/g0;->a:Lu4/g0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu4/g0;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lw4/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lw4/d;
    .locals 4

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()V

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()D

    move-result-wide v2

    double-to-float v2, v2

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->x()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    :cond_3
    new-instance p1, Lw4/d;

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    mul-float/2addr v1, p2

    div-float/2addr v2, v0

    mul-float/2addr v2, p2

    invoke-direct {p1, v1, v2}, Lw4/d;-><init>(FF)V

    return-object p1
.end method
