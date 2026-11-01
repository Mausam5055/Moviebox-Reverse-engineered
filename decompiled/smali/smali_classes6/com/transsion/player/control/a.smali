.class public final Lcom/transsion/player/control/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/control/c;
.implements Lcom/transsion/player/ui/a;


# instance fields
.field private final a:Lcom/transsion/player/ui/a;

.field private final b:Lcom/transsion/player/control/c;


# direct methods
.method public constructor <init>(Lcom/transsion/player/ui/a;Lcom/transsion/player/control/c;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/control/a;->a:Lcom/transsion/player/ui/a;

    iput-object p2, p0, Lcom/transsion/player/control/a;->b:Lcom/transsion/player/control/c;

    return-void
.end method
