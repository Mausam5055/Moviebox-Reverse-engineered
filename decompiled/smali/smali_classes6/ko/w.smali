.class public final synthetic Lko/w;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:Lcom/transsion/player/enum/ScaleMode;


# direct methods
.method public synthetic constructor <init>(Lko/d0;Lcom/transsion/player/enum/ScaleMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/w;->a:Lko/d0;

    iput-object p2, p0, Lko/w;->b:Lcom/transsion/player/enum/ScaleMode;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lko/w;->a:Lko/d0;

    iget-object v1, p0, Lko/w;->b:Lcom/transsion/player/enum/ScaleMode;

    invoke-static {v0, v1}, Lko/d0;->B(Lko/d0;Lcom/transsion/player/enum/ScaleMode;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
