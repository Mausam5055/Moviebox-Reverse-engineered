.class public Lcom/facebook/biddingkit/bridge/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Landroid/content/Context;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/bridge/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/bridge/a;->b:Ljava/lang/String;

    return-object v0
.end method
