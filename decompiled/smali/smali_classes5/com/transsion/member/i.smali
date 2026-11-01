.class public abstract Lcom/transsion/member/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/i$a;,
        Lcom/transsion/member/i$b;,
        Lcom/transsion/member/i$c;,
        Lcom/transsion/member/i$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/member/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/i;->a:Lcom/transsion/member/i$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/member/i;-><init>()V

    return-void
.end method
