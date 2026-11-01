.class public final Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;,
        Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;->a:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;)Lkotlin/Pair;
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lkotlin/Pair;

    sget v0, Lcom/transsion/ad/R$anim;->slide_in_from_top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/ad/R$anim;->no_anim:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
