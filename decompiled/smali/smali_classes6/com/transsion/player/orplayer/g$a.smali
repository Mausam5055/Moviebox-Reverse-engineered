.class public final Lcom/transsion/player/orplayer/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/orplayer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbo/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/g$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/player/orplayer/g;
    .locals 3

    iget-object v0, p0, Lcom/transsion/player/orplayer/g$a;->a:Landroid/content/Context;

    new-instance v1, Lcom/transsion/player/orplayer/w;

    iget-object v2, p0, Lcom/transsion/player/orplayer/g$a;->b:Lbo/d;

    invoke-direct {v1, v0, v2}, Lcom/transsion/player/orplayer/w;-><init>(Landroid/content/Context;Lbo/d;)V

    return-object v1
.end method

.method public final b(Lbo/d;)Lcom/transsion/player/orplayer/g$a;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/orplayer/g$a;->b:Lbo/d;

    return-object p0
.end method
