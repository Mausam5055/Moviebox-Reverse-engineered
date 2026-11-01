.class public final Lcom/google/firebase/sessions/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/sessions/b0;


# static fields
.field public static final a:Lcom/google/firebase/sessions/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/c0;

    invoke-direct {v0}, Lcom/google/firebase/sessions/c0;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/c0;->a:Lcom/google/firebase/sessions/c0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method
