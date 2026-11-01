.class public final Lcom/transsion/member/premium/PremiumContentController$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/premium/PremiumContentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private final b:Lkotlin/jvm/functions/Function0;

.field private final c:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/member/premium/PremiumContentController$a;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "onMemberDetailChanged"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onMemberDetailLoadFailed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismissLoading"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController$a;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/transsion/member/premium/PremiumContentController$a;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/transsion/member/premium/PremiumContentController$a;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    new-instance p1, Lcom/transsion/member/premium/i;

    invoke-direct {p1}, Lcom/transsion/member/premium/i;-><init>()V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    new-instance p2, Lcom/transsion/member/premium/j;

    invoke-direct {p2}, Lcom/transsion/member/premium/j;-><init>()V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    new-instance p3, Lcom/transsion/member/premium/k;

    invoke-direct {p3}, Lcom/transsion/member/premium/k;-><init>()V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/member/premium/PremiumContentController$a;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/premium/PremiumContentController$a;->d(Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/member/premium/PremiumContentController$a;->f()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/member/premium/PremiumContentController$a;->e()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method private static final d(Lcom/transsion/memberapi/MemberDetail;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final e()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final f()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final g()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController$a;->c:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final h()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController$a;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final i()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController$a;->b:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method
