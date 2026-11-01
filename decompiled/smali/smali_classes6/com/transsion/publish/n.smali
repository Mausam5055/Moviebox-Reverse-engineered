.class public final Lcom/transsion/publish/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/n$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/publish/n$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/publish/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/publish/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/publish/n;->b:Lcom/transsion/publish/n$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/publish/m;

    invoke-direct {v1}, Lcom/transsion/publish/m;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/publish/n;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/n;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/publish/n;
    .locals 1

    invoke-static {}, Lcom/transsion/publish/n;->b()Lcom/transsion/publish/n;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lcom/transsion/publish/n;
    .locals 1

    new-instance v0, Lcom/transsion/publish/n;

    invoke-direct {v0}, Lcom/transsion/publish/n;-><init>()V

    return-object v0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/publish/n;->c:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/n;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/n;->a:Ljava/util/List;

    return-object v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/n;->a:Ljava/util/List;

    return-void
.end method
