.class public final Lcom/transsion/member/i$d;
.super Lcom/transsion/member/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Lcom/transsion/member/i$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/i$d;

    invoke-direct {v0}, Lcom/transsion/member/i$d;-><init>()V

    sput-object v0, Lcom/transsion/member/i$d;->b:Lcom/transsion/member/i$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/member/i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
