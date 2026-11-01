.class public Llc/b;
.super Ljava/lang/Object;

# interfaces
.implements Llc/a;


# static fields
.field private static a:Llc/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Llc/b;
    .locals 1

    sget-object v0, Llc/b;->a:Llc/b;

    if-nez v0, :cond_0

    new-instance v0, Llc/b;

    invoke-direct {v0}, Llc/b;-><init>()V

    sput-object v0, Llc/b;->a:Llc/b;

    :cond_0
    sget-object v0, Llc/b;->a:Llc/b;

    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
