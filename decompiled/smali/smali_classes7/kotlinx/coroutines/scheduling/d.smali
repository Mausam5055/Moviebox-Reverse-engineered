.class public final Lkotlinx/coroutines/scheduling/d;
.super Lkotlinx/coroutines/scheduling/f;


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/d;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/d;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/d;->a:Lkotlinx/coroutines/scheduling/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
