.class public final Lcom/transsion/baselib/helper/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/helper/m$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/baselib/helper/m$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baselib/helper/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/baselib/helper/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/baselib/helper/m;->b:Lcom/transsion/baselib/helper/m$a;

    new-instance v0, Lcom/transsion/baselib/helper/l;

    invoke-direct {v0}, Lcom/transsion/baselib/helper/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/baselib/helper/m;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/baselib/helper/m;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/baselib/helper/m;
    .locals 1

    invoke-static {}, Lcom/transsion/baselib/helper/m;->c()Lcom/transsion/baselib/helper/m;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/helper/m;->c:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final c()Lcom/transsion/baselib/helper/m;
    .locals 1

    new-instance v0, Lcom/transsion/baselib/helper/m;

    invoke-direct {v0}, Lcom/transsion/baselib/helper/m;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userPrefer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baselib/helper/m;->a:Ljava/lang/String;

    return-void
.end method
